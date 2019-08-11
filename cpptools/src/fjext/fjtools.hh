#ifndef HEPPY_HEPPY_HH
#define HEPPY_HEPPY_HH

#include <fastjet/PseudoJet.hh>
#include <vector>

namespace PyJetty
{
	double angularity(const fastjet::PseudoJet &j, double alpha, double scaleR0);

	std::vector<fastjet::PseudoJet> vectorize_pt_eta_phi(double *pt, int npt, double *eta, int neta, double *phi, int nphi);
	std::vector<fastjet::PseudoJet> vectorize_px_py_pz  (double *px, int npx, double *py, int npy, double *pz, int npz);
	std::vector<fastjet::PseudoJet> vectorize_px_py_pz_e(double *px, int npx, double *py, int npy, double *pz, int npz, double *e, int ne);
	std::vector<fastjet::PseudoJet> vectorize_px_py_pz_m(double *px, int npx, double *py, int npy, double *pz, int npz, double *m, int nm);	
}

#endif
