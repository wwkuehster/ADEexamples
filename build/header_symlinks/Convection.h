#pragma once

#include "Kernel.h"

class Convection;

template <>
InputParameters validParams<Convection>();

class Convection : public Kernel
{
public:
  Convection(const InputParameters & parameters);

protected:
  virtual Real computeQpResidual() override;

  virtual Real computeQpJacobian() override;

private:
  RealVectorValue _velocity;
};