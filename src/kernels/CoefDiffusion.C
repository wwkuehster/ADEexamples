#include "CoefDiffusion.h"

registerMooseObject("wyattexamplesApp", CoefDiffusion);

template <>
InputParameters
validParams<CoefDiffusion>()
{
  InputParameters params = validParams<Kernel>();
  params.set<Real>("coef") = 0.0;
  return params;
}

CoefDiffusion::CoefDiffusion(const InputParameters & parameters)
  : Kernel(parameters), _coef(getParam<Real>("coef"))
{
}

Real
CoefDiffusion::computeQpResidual()
{
  return _coef * _grad_test[_i][_qp] * _grad_u[_qp];
}

Real
CoefDiffusion::computeQpJacobian()
{
  return _coef * _grad_test[_i][_qp] * _grad_phi[_j][_qp];
}
