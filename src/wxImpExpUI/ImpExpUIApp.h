///////////////////////////////////////////////////////////////////////////////
// Name:        ImpExpUI.h
// Purpose:     Declaration of class wxImpExpUI.
// Author:      Vitaly Baranov
// Created:     June 1, 2009
// Modified by:  
// Licence:     GNU General Public License
///////////////////////////////////////////////////////////////////////////////

#ifndef __ImpExpUIApp__
#define __ImpExpUIApp__


///////////////////////////////////////////////////////////////////////////////
/// Class wxImpExpUIApp
///////////////////////////////////////////////////////////////////////////////

class wxImpExpUIApp : public wxApp
{
public:
	virtual bool OnInit() {return true;}
    virtual int OnRun();
};

DECLARE_APP(wxImpExpUIApp)

#endif // __ImpExpUIApp__
