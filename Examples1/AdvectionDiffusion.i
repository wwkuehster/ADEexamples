[Mesh]
  type = GeneratedMesh
  dim = 2
  nx = 100
  xmax = 1
  ymax = 1
[]

[Variables]
  [./diffused]
    order = FIRST
    family = LAGRANGE
  [../]
[]

[Kernels]
  [./diff]
    type = CoefDiffusion
    variable = diffused
    coef = 0.1
  [../]
  [./euler]
    type = ExampleTimeDerivative
    variable = diffused
    time_coefficient = 1.0
  [../]
  [./conv]
    type = Convection
    variable = diffused
    velocity = '1 0 0'
  [../]
[]

[BCs]
  [./left]
    type = DirichletBC
    variable = diffused
    boundary = left
    value = 1.0
  [../]

  [./right]
    type = DirichletBC
    variable = diffused
    boundary = right
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
