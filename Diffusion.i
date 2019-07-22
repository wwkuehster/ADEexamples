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
    type = Diffusion
    variable = diffused
  [../]
  [./euler]
    type = TimeDerivative
    variable = diffused
    time_coefficient = 1.0
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

