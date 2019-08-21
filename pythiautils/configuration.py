import pythia8


def create_and_init_pythia(config_strings=[]):
	pythia = pythia8.Pythia()
	extra_s = ["Next:numberShowEvent = 0", "Next:numberShowInfo = 0", "Next:numberShowProcess = 0"]
	config_strings.extend(extra_s)
	for s in config_strings:
		pythia.readString(s)
	if pythia.init():
		print ('[i] pythia initialized with', config_strings)
		return pythia
	return None


def add_standard_pythia_args(parser):
	parser.add_argument('--ecms', help='low or high sqrt(s) GeV', default='low', type=str)
	parser.add_argument('--ecm', help='sqrt(s) GeV', default=13000, type=float)
	parser.add_argument('--pthatmin', help='minimum hat{pT}', default=-1, type=float)
	parser.add_argument('--biaspow', help='power of the bias (hard)', default=4, type=float)
	parser.add_argument('--biasref', help='reference pT for the bias', default='50', type=float)
	parser.add_argument('--noue', help="no underlying event - equivalend to no ISR and MPIs set to off", default=False, action='store_true')
	parser.add_argument('--noISR', help="ISR set to off", default=False, action='store_true')
	parser.add_argument('--noMPI', help="MPIs set to off", default=False, action='store_true')
	parser.add_argument('--hardQCD', help="enable hardQCD (ON if no other process selected)", default=False, action='store_true')
	parser.add_argument('--hardQCDcharm', help="enable hardccbar", default=False, action='store_true')
	parser.add_argument('--hardQCDbeauty', help="enable hardbbbar", default=False, action='store_true')
	parser.add_argument('--promptPhoton', help="enable prompt photon production",  default=False, action='store_true')
	parser.add_argument('--hardQCDlf', help="enable hardQCD light flavor = uds + glue", default=False, action='store_true')
	parser.add_argument('--hardQCDgluons', help="enable hardQCD only glue outgoing", default=False, action='store_true')
	parser.add_argument('--hardQCDquarks', help="enable hardQCD only quarks outgoing", default=False, action='store_true')
	parser.add_argument('--hardQCDuds', help="enable hardQCD only uds outgoing", default=False, action='store_true')
	parser.add_argument('--nev', help='number of events', default=1, type=int)
	parser.add_argument('-n', '--nevents', help='number of events', default=1000, type=int)


def pythia_config_from_args(args):
	sconfig_pythia = []
	procsel = 0
	if args.hardQCDlf:
		_extra = [ 	"HardQCD:all=off",
					"HardQCD:gg2gg=on",
					"HardQCD:qg2qg=on",
					"HardQCD:qqbar2gg=on",
					"HardQCD:gg2qqbar=on",
					"HardQCD:qq2qq=on",
					"HardQCD:qqbar2qqbarNew=on",
					"HardQCD:hardccbar=off",
					"HardQCD:hardbbbar=off"]
		sconfig_pythia.extend(_extra)
		procsel += 1
	if args.hardQCDgluons:
		_extra = [	"HardQCD:all=off",
					"HardQCD:gg2gg=on",
					# "HardQCD:qg2qg=on",
					"HardQCD:qqbar2gg=on"]
		sconfig_pythia.extend(_extra)
		procsel += 1
	if args.hardQCDquarks:
		_extra = [	"HardQCD:all=off",
					"HardQCD:gg2qqbar=on",
					"HardQCD:qq2qq=on",
					"HardQCD:qqbar2qqbarNew=on",
					"HardQCD:hardccbar=on",
					"HardQCD:hardbbbar=on"]
		sconfig_pythia.extend(_extra)
		procsel += 1
	if args.hardQCDuds:
		_extra = [	"HardQCD:all=off",
					"HardQCD:gg2qqbar=on",
					"HardQCD:qq2qq=on",
					"HardQCD:qqbar2qqbarNew=on"]
		sconfig_pythia.extend(_extra)
		procsel += 1
	if args.promptPhoton:
		sconfig_pythia.append("PromptPhoton:all = on")
		procsel += 1
	if args.hardQCDcharm:
		sconfig_pythia.append("HardQCD:hardccbar = on")
		procsel += 1
	if args.hardQCDbeauty:
		sconfig_pythia.append("HardQCD:hardbbbar = on")
		procsel += 1
	if args.hardQCD:
		sconfig_pythia.append("HardQCD:all = on")
		procsel += 1
	if procsel == 0:
		sconfig_pythia.append("HardQCD:all = on")
	if args.pthatmin < 0:
		_extra = [	"PhaseSpace:bias2Selection=on",
					"PhaseSpace:bias2SelectionPow={}".format(args.biaspow),
					"PhaseSpace:bias2SelectionRef={}".format(args.biasref)]
		sconfig_pythia.extend(_extra)
	else:
		sconfig_pythia.append("PhaseSpace:pTHatMin = {}".format(args.pthatmin))
	if args.noue:
		sconfig_pythia.append("PartonLevel:ISR = off")
		sconfig_pythia.append("PartonLevel:MPI = off")
	if args.noISR:
		sconfig_pythia.append("PartonLevel:ISR = off")
	if args.noMPI:
		sconfig_pythia.append("PartonLevel:MPI = off")
	if args.ecm:
		sconfig_pythia.append("Beams:eCM = {}".format(args.ecm))
	return sconfig_pythia

def create_and_init_pythia_from_args(args, user_args=[]):
	_args = []
	from_args = pythia_config_from_args(args)
	_args.extend(from_args)
	_args.extend(user_args)
	pythia = create_and_init_pythia(_args)
	return pythia
