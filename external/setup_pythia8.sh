#!/bin/bash

cdir=$(pwd)

function thisdir()
{
	SOURCE="${BASH_SOURCE[0]}"
	while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
	  DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
	  SOURCE="$(readlink "$SOURCE")"
	  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
	done
	DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
	echo ${DIR}
}
THISD=$(thisdir)
. ${THISD}/../scripts/util.sh
separator "${BASH_SOURCE}"
if [ -z "${HEPPY_USER_PYTHON_VERSION}" ]; then
	warning "trying to load heppy_python"
	heppy_python_module_name=$(module avail -t | grep heppy_python | head -n 1 | grep heppy_python)
	if [ ! -z ${heppy_python_module_name} ]; then
		warning "... found ${heppy_python_module_name}"	
		module load ${heppy_python_module_name}
	else
		warning "... no suitable module found"
	fi
fi
[ -z "${HEPPY_USER_PYTHON_VERSION}" ] && error "missing: HEPPY_USER_PYTHON_VERSION" && exit 1
warning "using heppy python version: ${HEPPY_USER_PYTHON_VERSION}"

version=$(get_opt "version" $@)
[ -z ${version} ] && version=8235
note "... version ${version}"
fname=pythia${version}
dirsrc=${THISD}/build/pythia${version}
dirinst=${THISD}/packages/pythia${version}-${HEPPY_USER_PYTHON_VERSION}

function grace_return()
{
	cd ${cdir}
}
prefix=$(get_opt "prefix" $@)
[ ! -z ${prefix} ] && dirinst=${prefix}
clean=$(get_opt "clean" $@)
if [ "x${clean}" == "xyes" ]; then
	warning "cleaning..."
	echo_info "removing ${dirsrc}"
	rm -rf ${dirsrc}
	echo_info "removing ${dirinst}"
	rm -rf ${dirinst}
	grace_return && exit 0
fi
uninstall=$(get_opt "uninstall" $@)
if [ "x${uninstall}" == "xyes" ]; then
	echo_info "uninstall..."
	rm -rf ${dirinst}
	grace_return && exit 0
fi
installed=$(get_opt "installed" $@)
if [ "x${installed}" == "xyes" ]; then
	[ -d ${dirinst} ] && echo_info "${dirinst} exists"
	[ ! -d ${dirinst} ] && error "${dirinst} does NOT exists"
	grace_return && exit 0
fi

[ ! -d ${THISD}/build ] && mkdir -v ${THISD}/build
[ ! -d ${THISD}/packages ] && mkdir -v ${THISD}/packages

if [ ! -e ${THISD}/build/${fname}.tgz ]; then
	cd ${THISD}/build
	wget http://home.thep.lu.se/~torbjorn/pythia8/${fname}.tgz
fi

if [ ! -d ${dirsrc} ]; then
	cd ${THISD}/build
	tar zxvf ${fname}.tgz
fi

function run_configure()
{
	[ ! -z ${LHAPDF6_DIR} ] && lhapd6_opt="	--with-lhapdf6=${LHAPDF6_DIR} --with-lhapdf6-include=${LHAPDF6_DIR}/include --with-lhapdf6-lib=${LHAPDF6_DIR}/lib"
	[ ! -z ${HEPMC2_DIR} ] && hepmc2_opt=" --with-hepmc2=${HEPMC2_DIR} --with-hepmc2-include=${HEPMC2_DIR}/include --with-hepmc2-lib=${HEPMC2_DIR}/lib"
	[ ! -z ${HEPMC3_DIR} ] && hepmc3_opt=" --with-hepmc3=${HEPMC3_DIR} --with-hepmc3-include=${HEPMC3_DIR}/include --with-hepmc3-lib=${HEPMC3_DIR}/lib"
		./configure --prefix=${dirinst} \
			--with-python-include=${HEPPY_PYTHON_INCLUDE_DIR} \
			--with-python-bin=${HEPPY_PYTHON_BIN_DIR} \
			${lhapd6_opt} ${hepmc2_opt} ${hepmc3_opt}
}

redo=$(get_opt "rebuild" $@)
if [ ! -d ${dirinst} ] || [ "x${redo}" == "xyes" ]; then
	if [ -d ${dirsrc} ]; then
		cd ${dirsrc}
	    # echo "unsetting PYTHONPATH"
	    if [ ! -e ${HEPPY_PYTHON_BIN_DIR}/python ]; then
	    	HEPPY_PYTHON_BIN_DIR=${THISD}/build/pythia-python-bin
	    	mkdir ${HEPPY_PYTHON_BIN_DIR}
	    	ln -s ${HEPPY_PYTHON_EXECUTABLE} ${HEPPY_PYTHON_BIN_DIR}/python
		    warning "fix-up-python bin dir: ${HEPPY_PYTHON_BIN_DIR}"
		fi
		[ ! -z ${LHAPDF6_DIR} ] && lhapd6_opt="	--with-lhapdf6=${LHAPDF6_DIR} --with-lhapdf6-include=${LHAPDF6_DIR}/include --with-lhapdf6-lib=${LHAPDF6_DIR}/lib"
		[ ! -z ${HEPMC2_DIR} ] && hepmc2_opt=" --with-hepmc2=${HEPMC2_DIR} --with-hepmc2-include=${HEPMC2_DIR}/include --with-hepmc2-lib=${HEPMC2_DIR}/lib"
		[ ! -z ${HEPMC3_DIR} ] && hepmc3_opt=" --with-hepmc3=${HEPMC3_DIR} --with-hepmc3-include=${HEPMC3_DIR}/include --with-hepmc3-lib=${HEPMC3_DIR}/lib"
			./configure --prefix=${dirinst} \
				--with-python-include=${HEPPY_PYTHON_INCLUDE_DIR} \
				--with-python-bin=${HEPPY_PYTHON_BIN_DIR} \
				${lhapd6_opt} ${hepmc2_opt} ${hepmc3_opt}
		configure_only=$(get_opt "configure-only" $@)
		[ "x${configure_only}" == "xyes" ] && grace_return && exit 0
		make -j $(n_cores) && make install
		cd - 2>&1 > /dev/null
	fi
fi

python_path="${dirinst}/lib/pythia8.py"
python_path64="${dirinst}/lib64/pythia8.py"
if [ -f ${python_path64} ] || [ -f ${python_path} ]; then
	${THISD}/../scripts/make_module.sh --dir=${dirinst} --name=PYTHIA8 --version=${version}
else
	error "pythia8.py not found - no module generation"
	[ ! -f ${python_path} ] && error "missing ${python_path}"
	[ ! -f ${python_path64} ] && error "missing ${python_path64}"
	exit 0
fi

cd ${cdir}
