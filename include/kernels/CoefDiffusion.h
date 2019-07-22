#pragma once

#include "Kernel.h"

// Forward Declarations
class CoefDiffusion;

template <>
InputParameters validParams<CoefDiffusion>();

class CoefDiffusion : public Kernel
{
public:
  CoefDiffusion(const InputParameters & parameters);

protected:
  virtual Real computeQpResidual() override;

  virtual Real computeQpJacobian() override;

private:
  Real _coef;
};