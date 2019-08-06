[Mesh]
  file= 161.inp
[]

[Variables]
  [./diffused]
    order = FIRST
    family = LAGRANGE
  [../]
[]

[Kernels]
  [./diffusion]
    type = ExampleDiffusion
    variable = diffused
  [../]
  [./time_deriv]
    type = TimeDerivative
    variable = diffused
  [../]
[]

[BCs]
  [./left_diff]
    type = DirichletBC
    variable = diffused
    boundary = 'LeftSide'
    value = 1
  [../]
  [./right_diff]
    type = DirichletBC
    variable = diffused
    boundary = 'RightSide'
    value = 0
  [../]
[]

[Materials]
  [./porous]
    type = GenericConstantMaterial
    block = 'Surface1_TRI3'
    prop_names = 'diffusivity'
    prop_values = '.1'
  [../]
  [./vug]
    type = VugMaterial 
    block = 'Surface2_TRI3'
  [../]
[]

[Executioner]
  type = Transient
  solve_type = 'PJFNK'
  dt = 0.01
  num_steps = 100
[]

[Outputs]
  execute_on = 'timestep_end'
  exodus = true
[]


