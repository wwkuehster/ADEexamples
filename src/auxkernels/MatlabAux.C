//* This file is part of the MOOSE framework
//* https://www.mooseframework.org
//*
//* All rights reserved, see COPYRIGHT for full restrictions
//* https://github.com/idaholab/moose/blob/master/COPYRIGHT
//*
//* Licensed under LGPL 2.1, please see LICENSE for details
//* https://www.gnu.org/licenses/lgpl-2.1.html

#include "MatlabAux.h"

registerMooseObject("wyattexamplesApp", MatlabAux);

template <>
InputParameters
validParams<MatlabAux>()
{
  InputParameters params = validParams<AuxKernel>();
  params.addParam<Real>("xpoint", 0.0, "Scalar value used for our auxiliary calculation");
  params.addParam<Real>("ypoint", 0.0, "Scalar value used for our auxiliary calculation");
  params.addRequiredCoupledVar("coupled", "Coupled variable");
  return params;
}

MatlabAux::MatlabAux(const InputParameters & parameters)
  : AuxKernel(parameters),

    // We can couple in a value from one of our kernels with a call to coupledValueAux
    _coupled_val(coupledValue("coupled")),

    // Set our member scalar value from InputParameters (read from the input file)
    _xpoint(getParam<Real>("xpoint")),
    _ypoint(getParam<Real>("ypoint"))
{
}

/**
 * Auxiliary Kernels override computeValue() instead of computeQpResidual().  Aux Variables
 * are calculated either one per elemenet or one per node depending on whether we declare
 * them as "Elemental (Constant Monomial)" or "Nodal (First Lagrange)".  No changes to the
 * source are necessary to switch from one type or the other.
 */
Real
MatlabAux::computeValue()
{
  return _coupled_val[_qp] + _xpoint + _ypoint;
}
