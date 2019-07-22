[Mesh]
  file = 161.inp
[]

[Variables]
  [./diffused]
    order = FIRST
    family = LAGRANGE
  [../]
[]

[Kernels]
  [./Surface1_diff]
    type=CoefDiffusion
    variable=diffused
    block = 'Surface1_TRI3'
    coef = 0.3
  [../]

  [./Surface2_diff]
    type=CoefDiffusion
    variable=diffused
    block = 'Surface2_TRI3'
    coef = 1.3
  [../]

  [./euler]
    type = ExampleTimeDerivative
    variable = diffused
    time_coefficient = 1.0
  [../]
[]

[BCs]
  [./left]
    type = DirichletBC
    variable = diffused
    boundary = 'LeftSide'
    value = 1.0
  [../]

  [./right]
    type = DirichletBC
    variable = diffused
    boundary = 'RightSide'
    value = 0
  [../]
[]

[Executioner]
  type = Transient
  solve_type = 'PJFNK'
  num_steps = 100
  dt = .01
[]

[Outputs]
  execute_on = 'timestep_end'
  exodus = true
[]

