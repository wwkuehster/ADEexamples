#include "wyattexamplesApp.h"
#include "Moose.h"
#include "AppFactory.h"
#include "ModulesApp.h"
#include "MooseSyntax.h"

template <>
InputParameters
validParams<wyattexamplesApp>()
{
  InputParameters params = validParams<MooseApp>();
  return params;
}

wyattexamplesApp::wyattexamplesApp(InputParameters parameters) : MooseApp(parameters)
{
  wyattexamplesApp::registerAll(_factory, _action_factory, _syntax);
}

wyattexamplesApp::~wyattexamplesApp() {}

void
wyattexamplesApp::registerAll(Factory & f, ActionFactory & af, Syntax & s)
{
  ModulesApp::registerAll(f, af, s);
  Registry::registerObjectsTo(f, {"wyattexamplesApp"});
  Registry::registerActionsTo(af, {"wyattexamplesApp"});

  /* register custom execute flags, action syntax, etc. here */
}

void
wyattexamplesApp::registerApps()
{
  registerApp(wyattexamplesApp);
}

/***************************************************************************************************
 *********************** Dynamic Library Entry Points - DO NOT MODIFY ******************************
 **************************************************************************************************/
extern "C" void
wyattexamplesApp__registerAll(Factory & f, ActionFactory & af, Syntax & s)
{
  wyattexamplesApp::registerAll(f, af, s);
}
extern "C" void
wyattexamplesApp__registerApps()
{
  wyattexamplesApp::registerApps();
}
