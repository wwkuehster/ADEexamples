[Mesh]
  file = 161.inp
[]

[Variables]
  [./convected]
    order = FIRST
    family = LAGRANGE
  [../]
  [./diffused]
    order = FIRST
    family = LAGRANGE
  [../]
[]

[Kernels]
  [./1234_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1234_TRI3'
    coef = 0.9
  [../]

  [./1234_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1234_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1243_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1243_TRI3'
    coef = 0.9
  [../]

  [./1243_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1243_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1249_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1249_TRI3'
    coef = 0.9
  [../]

  [./1249_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1249_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1253_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1253_TRI3'
    coef = 0.9
  [../]

  [./1253_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1253_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1262_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1262_TRI3'
    coef = 0.9
  [../]

  [./1262_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1262_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1279_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1279_TRI3'
    coef = 0.9
  [../]

  [./1279_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1279_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1282_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1282_TRI3'
    coef = 0.9
  [../]

  [./1282_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1282_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1288_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1288_TRI3'
    coef = 0.9
  [../]

  [./1288_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1288_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1294_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1294_TRI3'
    coef = 0.9
  [../]

  [./1294_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1294_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1301_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1301_TRI3'
    coef = 0.9
  [../]

  [./1301_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1301_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1310_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1310_TRI3'
    coef = 0.9
  [../]

  [./1310_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1310_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1317_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1317_TRI3'
    coef = 0.9
  [../]

  [./1317_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1317_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1322_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1322_TRI3'
    coef = 0.9
  [../]

  [./1322_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1322_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1330_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1330_TRI3'
    coef = 0.9
  [../]

  [./1330_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1330_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1339_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1339_TRI3'
    coef = 0.9
  [../]

  [./1339_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1339_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1346_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1346_TRI3'
    coef = 0.9
  [../]

  [./1346_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1346_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1353_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1353_TRI3'
    coef = 0.9
  [../]

  [./1353_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1353_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1359_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1359_TRI3'
    coef = 0.9
  [../]

  [./1359_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1359_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1362_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1362_TRI3'
    coef = 0.9
  [../]

  [./1362_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1362_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1368_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1368_TRI3'
    coef = 0.9
  [../]

  [./1368_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1368_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1374_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1374_TRI3'
    coef = 0.9
  [../]

  [./1374_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1374_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1375_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1375_TRI3'
    coef = 0.9
  [../]

  [./1375_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1375_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1380_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1380_TRI3'
    coef = 0.9
  [../]

  [./1380_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1380_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1381_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1381_TRI3'
    coef = 0.9
  [../]

  [./1381_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1381_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1392_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1392_TRI3'
    coef = 0.9
  [../]

  [./1392_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1392_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1399_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1399_TRI3'
    coef = 0.9
  [../]

  [./1399_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1399_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1400_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1400_TRI3'
    coef = 0.9
  [../]

  [./1400_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1400_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1401_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1401_TRI3'
    coef = 0.9
  [../]

  [./1401_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1401_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1402_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1402_TRI3'
    coef = 0.9
  [../]

  [./1402_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1402_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1410_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1410_TRI3'
    coef = 0.9
  [../]

  [./1410_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1410_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1411_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1411_TRI3'
    coef = 0.9
  [../]

  [./1411_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1411_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1416_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1416_TRI3'
    coef = 0.9
  [../]

  [./1416_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1416_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1427_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1427_TRI3'
    coef = 0.9
  [../]

  [./1427_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1427_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1428_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1428_TRI3'
    coef = 0.9
  [../]

  [./1428_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1428_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1429_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1429_TRI3'
    coef = 0.9
  [../]

  [./1429_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1429_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1430_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1430_TRI3'
    coef = 0.9
  [../]

  [./1430_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1430_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1438_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1438_TRI3'
    coef = 0.9
  [../]

  [./1438_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1438_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1439_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1439_TRI3'
    coef = 0.9
  [../]

  [./1439_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1439_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1444_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1444_TRI3'
    coef = 0.9
  [../]

  [./1444_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1444_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1455_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1455_TRI3'
    coef = 0.9
  [../]

  [./1455_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1455_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1461_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1461_TRI3'
    coef = 0.9
  [../]

  [./1461_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1461_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1467_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1467_TRI3'
    coef = 0.9
  [../]

  [./1467_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1467_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1473_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1473_TRI3'
    coef = 0.9
  [../]

  [./1473_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1473_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1479_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1479_TRI3'
    coef = 0.9
  [../]

  [./1479_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1479_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1485_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1485_TRI3'
    coef = 0.9
  [../]

  [./1485_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1485_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1491_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1491_TRI3'
    coef = 0.9
  [../]

  [./1491_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1491_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1496_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1496_TRI3'
    coef = 0.9
  [../]

  [./1496_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1496_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1502_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1502_TRI3'
    coef = 0.9
  [../]

  [./1502_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1502_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1508_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1508_TRI3'
    coef = 0.9
  [../]

  [./1508_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1508_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1513_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1513_TRI3'
    coef = 0.9
  [../]

  [./1513_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1513_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1518_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1518_TRI3'
    coef = 0.9
  [../]

  [./1518_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1518_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1525_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1525_TRI3'
    coef = 0.9
  [../]

  [./1525_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1525_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1530_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1530_TRI3'
    coef = 0.9
  [../]

  [./1530_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1530_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1531_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1531_TRI3'
    coef = 0.9
  [../]

  [./1531_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1531_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1533_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1533_TRI3'
    coef = 0.9
  [../]

  [./1533_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1533_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1534_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1534_TRI3'
    coef = 0.9
  [../]

  [./1534_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1534_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1535_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1535_TRI3'
    coef = 0.9
  [../]

  [./1535_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1535_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1536_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1536_TRI3'
    coef = 0.9
  [../]

  [./1536_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1536_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1543_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1543_TRI3'
    coef = 0.9
  [../]

  [./1543_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1543_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1550_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1550_TRI3'
    coef = 0.9
  [../]

  [./1550_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1550_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1555_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1555_TRI3'
    coef = 0.9
  [../]

  [./1555_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1555_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1556_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1556_TRI3'
    coef = 0.9
  [../]

  [./1556_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1556_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1558_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1558_TRI3'
    coef = 0.9
  [../]

  [./1558_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1558_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1559_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1559_TRI3'
    coef = 0.9
  [../]

  [./1559_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1559_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1560_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1560_TRI3'
    coef = 0.9
  [../]

  [./1560_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1560_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1561_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1561_TRI3'
    coef = 0.9
  [../]

  [./1561_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1561_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1569_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1569_TRI3'
    coef = 0.9
  [../]

  [./1569_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1569_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1570_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1570_TRI3'
    coef = 0.9
  [../]

  [./1570_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1570_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1571_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1571_TRI3'
    coef = 0.9
  [../]

  [./1571_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1571_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1581_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1581_TRI3'
    coef = 0.9
  [../]

  [./1581_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1581_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1582_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1582_TRI3'
    coef = 0.9
  [../]

  [./1582_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1582_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1583_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1583_TRI3'
    coef = 0.9
  [../]

  [./1583_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1583_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1588_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1588_TRI3'
    coef = 0.9
  [../]

  [./1588_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1588_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1589_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1589_TRI3'
    coef = 0.9
  [../]

  [./1589_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1589_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1590_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1590_TRI3'
    coef = 0.9
  [../]

  [./1590_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1590_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1592_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1592_TRI3'
    coef = 0.9
  [../]

  [./1592_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1592_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1593_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1593_TRI3'
    coef = 0.9
  [../]

  [./1593_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1593_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1594_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1594_TRI3'
    coef = 0.9
  [../]

  [./1594_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1594_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1595_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1595_TRI3'
    coef = 0.9
  [../]

  [./1595_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1595_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1596_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1596_TRI3'
    coef = 0.9
  [../]

  [./1596_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1596_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1598_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1598_TRI3'
    coef = 0.9
  [../]

  [./1598_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1598_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1599_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1599_TRI3'
    coef = 0.9
  [../]

  [./1599_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1599_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1600_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1600_TRI3'
    coef = 0.9
  [../]

  [./1600_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1600_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1601_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1601_TRI3'
    coef = 0.9
  [../]

  [./1601_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1601_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1606_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1606_TRI3'
    coef = 0.9
  [../]

  [./1606_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1606_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1607_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1607_TRI3'
    coef = 0.9
  [../]

  [./1607_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1607_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1612_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1612_TRI3'
    coef = 0.9
  [../]

  [./1612_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1612_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1614_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1614_TRI3'
    coef = 0.9
  [../]

  [./1614_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1614_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1616_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1616_TRI3'
    coef = 0.9
  [../]

  [./1616_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1616_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1617_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1617_TRI3'
    coef = 0.9
  [../]

  [./1617_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1617_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1619_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1619_TRI3'
    coef = 0.9
  [../]

  [./1619_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1619_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1621_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1621_TRI3'
    coef = 0.9
  [../]

  [./1621_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1621_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1622_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1622_TRI3'
    coef = 0.9
  [../]

  [./1622_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1622_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1624_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1624_TRI3'
    coef = 0.9
  [../]

  [./1624_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1624_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1626_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1626_TRI3'
    coef = 0.9
  [../]

  [./1626_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1626_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1627_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1627_TRI3'
    coef = 0.9
  [../]

  [./1627_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1627_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1629_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1629_TRI3'
    coef = 0.9
  [../]

  [./1629_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1629_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1631_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1631_TRI3'
    coef = 0.9
  [../]

  [./1631_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1631_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1632_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1632_TRI3'
    coef = 0.9
  [../]

  [./1632_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1632_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1636_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1636_TRI3'
    coef = 0.9
  [../]

  [./1636_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1636_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1637_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1637_TRI3'
    coef = 0.9
  [../]

  [./1637_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1637_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1641_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1641_TRI3'
    coef = 0.9
  [../]

  [./1641_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1641_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1642_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1642_TRI3'
    coef = 0.9
  [../]

  [./1642_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1642_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1646_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1646_TRI3'
    coef = 0.9
  [../]

  [./1646_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1646_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1647_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1647_TRI3'
    coef = 0.9
  [../]

  [./1647_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1647_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1651_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1651_TRI3'
    coef = 0.9
  [../]

  [./1651_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1651_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1653_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1653_TRI3'
    coef = 0.9
  [../]

  [./1653_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1653_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1654_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1654_TRI3'
    coef = 0.9
  [../]

  [./1654_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1654_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1655_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1655_TRI3'
    coef = 0.9
  [../]

  [./1655_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1655_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1656_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1656_TRI3'
    coef = 0.9
  [../]

  [./1656_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1656_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1658_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1658_TRI3'
    coef = 0.9
  [../]

  [./1658_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1658_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1659_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1659_TRI3'
    coef = 0.9
  [../]

  [./1659_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1659_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1660_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1660_TRI3'
    coef = 0.9
  [../]

  [./1660_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1660_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1661_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1661_TRI3'
    coef = 0.9
  [../]

  [./1661_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1661_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1663_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1663_TRI3'
    coef = 0.9
  [../]

  [./1663_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1663_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1664_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1664_TRI3'
    coef = 0.9
  [../]

  [./1664_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1664_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1665_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1665_TRI3'
    coef = 0.9
  [../]

  [./1665_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1665_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1666_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1666_TRI3'
    coef = 0.9
  [../]

  [./1666_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1666_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1668_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1668_TRI3'
    coef = 0.9
  [../]

  [./1668_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1668_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1669_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1669_TRI3'
    coef = 0.9
  [../]

  [./1669_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1669_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1670_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1670_TRI3'
    coef = 0.9
  [../]

  [./1670_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1670_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1671_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1671_TRI3'
    coef = 0.9
  [../]

  [./1671_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1671_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1672_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1672_TRI3'
    coef = 0.9
  [../]

  [./1672_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1672_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1673_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1673_TRI3'
    coef = 0.9
  [../]

  [./1673_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1673_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1674_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1674_TRI3'
    coef = 0.9
  [../]

  [./1674_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1674_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1675_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1675_TRI3'
    coef = 0.9
  [../]

  [./1675_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1675_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1677_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1677_TRI3'
    coef = 0.9
  [../]

  [./1677_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1677_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1678_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1678_TRI3'
    coef = 0.9
  [../]

  [./1678_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1678_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1679_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1679_TRI3'
    coef = 0.9
  [../]

  [./1679_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1679_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1680_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1680_TRI3'
    coef = 0.9
  [../]

  [./1680_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1680_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1681_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1681_TRI3'
    coef = 0.9
  [../]

  [./1681_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1681_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1684_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1684_TRI3'
    coef = 0.9
  [../]

  [./1684_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1684_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1685_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1685_TRI3'
    coef = 0.9
  [../]

  [./1685_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1685_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1686_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1686_TRI3'
    coef = 0.9
  [../]

  [./1686_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1686_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1687_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1687_TRI3'
    coef = 0.9
  [../]

  [./1687_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1687_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1689_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1689_TRI3'
    coef = 0.9
  [../]

  [./1689_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1689_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1690_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1690_TRI3'
    coef = 0.9
  [../]

  [./1690_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1690_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1691_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1691_TRI3'
    coef = 0.9
  [../]

  [./1691_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1691_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1692_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1692_TRI3'
    coef = 0.9
  [../]

  [./1692_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1692_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1693_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1693_TRI3'
    coef = 0.9
  [../]

  [./1693_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1693_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1696_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1696_TRI3'
    coef = 0.9
  [../]

  [./1696_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1696_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1698_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1698_TRI3'
    coef = 0.9
  [../]

  [./1698_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1698_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1699_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1699_TRI3'
    coef = 0.9
  [../]

  [./1699_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1699_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1700_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1700_TRI3'
    coef = 0.9
  [../]

  [./1700_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1700_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1701_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1701_TRI3'
    coef = 0.9
  [../]

  [./1701_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1701_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1703_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1703_TRI3'
    coef = 0.9
  [../]

  [./1703_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1703_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1704_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1704_TRI3'
    coef = 0.9
  [../]

  [./1704_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1704_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1705_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1705_TRI3'
    coef = 0.9
  [../]

  [./1705_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1705_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1706_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1706_TRI3'
    coef = 0.9
  [../]

  [./1706_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1706_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1707_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1707_TRI3'
    coef = 0.9
  [../]

  [./1707_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1707_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1708_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1708_TRI3'
    coef = 0.9
  [../]

  [./1708_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1708_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1709_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1709_TRI3'
    coef = 0.9
  [../]

  [./1709_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1709_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1710_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1710_TRI3'
    coef = 0.9
  [../]

  [./1710_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1710_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1711_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1711_TRI3'
    coef = 0.9
  [../]

  [./1711_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1711_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1712_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1712_TRI3'
    coef = 0.9
  [../]

  [./1712_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1712_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1713_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1713_TRI3'
    coef = 0.9
  [../]

  [./1713_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1713_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1714_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1714_TRI3'
    coef = 0.9
  [../]

  [./1714_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1714_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1715_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1715_TRI3'
    coef = 0.9
  [../]

  [./1715_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1715_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1716_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1716_TRI3'
    coef = 0.9
  [../]

  [./1716_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1716_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1717_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1717_TRI3'
    coef = 0.9
  [../]

  [./1717_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1717_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1718_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1718_TRI3'
    coef = 0.9
  [../]

  [./1718_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1718_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1720_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1720_TRI3'
    coef = 0.9
  [../]

  [./1720_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1720_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1721_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1721_TRI3'
    coef = 0.9
  [../]

  [./1721_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1721_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1722_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1722_TRI3'
    coef = 0.9
  [../]

  [./1722_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1722_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1723_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1723_TRI3'
    coef = 0.9
  [../]

  [./1723_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1723_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1725_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1725_TRI3'
    coef = 0.9
  [../]

  [./1725_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1725_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1726_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1726_TRI3'
    coef = 0.9
  [../]

  [./1726_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1726_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1727_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1727_TRI3'
    coef = 0.9
  [../]

  [./1727_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1727_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1728_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1728_TRI3'
    coef = 0.9
  [../]

  [./1728_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1728_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1729_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1729_TRI3'
    coef = 0.9
  [../]

  [./1729_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1729_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1730_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1730_TRI3'
    coef = 0.9
  [../]

  [./1730_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1730_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1731_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1731_TRI3'
    coef = 0.9
  [../]

  [./1731_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1731_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1732_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1732_TRI3'
    coef = 0.9
  [../]

  [./1732_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1732_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1733_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1733_TRI3'
    coef = 0.9
  [../]

  [./1733_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1733_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1734_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1734_TRI3'
    coef = 0.9
  [../]

  [./1734_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1734_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1735_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1735_TRI3'
    coef = 0.9
  [../]

  [./1735_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1735_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1736_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1736_TRI3'
    coef = 0.9
  [../]

  [./1736_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1736_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1737_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1737_TRI3'
    coef = 0.9
  [../]

  [./1737_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1737_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1738_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1738_TRI3'
    coef = 0.9
  [../]

  [./1738_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1738_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1739_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1739_TRI3'
    coef = 0.9
  [../]

  [./1739_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1739_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1740_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1740_TRI3'
    coef = 0.9
  [../]

  [./1740_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1740_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1741_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1741_TRI3'
    coef = 0.9
  [../]

  [./1741_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1741_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1742_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1742_TRI3'
    coef = 0.9
  [../]

  [./1742_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1742_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1743_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1743_TRI3'
    coef = 0.9
  [../]

  [./1743_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1743_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1744_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1744_TRI3'
    coef = 0.9
  [../]

  [./1744_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1744_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1745_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1745_TRI3'
    coef = 0.9
  [../]

  [./1745_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1745_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1746_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1746_TRI3'
    coef = 0.9
  [../]

  [./1746_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1746_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1747_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1747_TRI3'
    coef = 0.9
  [../]

  [./1747_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1747_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1748_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1748_TRI3'
    coef = 0.9
  [../]

  [./1748_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1748_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1749_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1749_TRI3'
    coef = 0.9
  [../]

  [./1749_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1749_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1750_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1750_TRI3'
    coef = 0.9
  [../]

  [./1750_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1750_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1751_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1751_TRI3'
    coef = 0.9
  [../]

  [./1751_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1751_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1752_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1752_TRI3'
    coef = 0.9
  [../]

  [./1752_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1752_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1753_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1753_TRI3'
    coef = 0.9
  [../]

  [./1753_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1753_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1754_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1754_TRI3'
    coef = 0.9
  [../]

  [./1754_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1754_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1755_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1755_TRI3'
    coef = 0.9
  [../]

  [./1755_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1755_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1756_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1756_TRI3'
    coef = 0.9
  [../]

  [./1756_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1756_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1757_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1757_TRI3'
    coef = 0.9
  [../]

  [./1757_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1757_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1758_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1758_TRI3'
    coef = 0.9
  [../]

  [./1758_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1758_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1759_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1759_TRI3'
    coef = 0.9
  [../]

  [./1759_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1759_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1761_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1761_TRI3'
    coef = 0.9
  [../]

  [./1761_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1761_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1762_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1762_TRI3'
    coef = 0.9
  [../]

  [./1762_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1762_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1763_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1763_TRI3'
    coef = 0.9
  [../]

  [./1763_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1763_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1764_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1764_TRI3'
    coef = 0.9
  [../]

  [./1764_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1764_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1766_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1766_TRI3'
    coef = 0.9
  [../]

  [./1766_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1766_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1767_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1767_TRI3'
    coef = 0.9
  [../]

  [./1767_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1767_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1768_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1768_TRI3'
    coef = 0.9
  [../]

  [./1768_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1768_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1769_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1769_TRI3'
    coef = 0.9
  [../]

  [./1769_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1769_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1770_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1770_TRI3'
    coef = 0.9
  [../]

  [./1770_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1770_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1771_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1771_TRI3'
    coef = 0.9
  [../]

  [./1771_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1771_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1772_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1772_TRI3'
    coef = 0.9
  [../]

  [./1772_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1772_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1773_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1773_TRI3'
    coef = 0.9
  [../]

  [./1773_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1773_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1774_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1774_TRI3'
    coef = 0.9
  [../]

  [./1774_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1774_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1775_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1775_TRI3'
    coef = 0.9
  [../]

  [./1775_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1775_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1776_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1776_TRI3'
    coef = 0.9
  [../]

  [./1776_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1776_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1777_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1777_TRI3'
    coef = 0.9
  [../]

  [./1777_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1777_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1778_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1778_TRI3'
    coef = 0.9
  [../]

  [./1778_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1778_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1779_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1779_TRI3'
    coef = 0.9
  [../]

  [./1779_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1779_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1780_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1780_TRI3'
    coef = 0.9
  [../]

  [./1780_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1780_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1781_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1781_TRI3'
    coef = 0.9
  [../]

  [./1781_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1781_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1782_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1782_TRI3'
    coef = 0.9
  [../]

  [./1782_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1782_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1783_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1783_TRI3'
    coef = 0.9
  [../]

  [./1783_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1783_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1784_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1784_TRI3'
    coef = 0.9
  [../]

  [./1784_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1784_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1785_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1785_TRI3'
    coef = 0.9
  [../]

  [./1785_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1785_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1786_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1786_TRI3'
    coef = 0.9
  [../]

  [./1786_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1786_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1787_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1787_TRI3'
    coef = 0.9
  [../]

  [./1787_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1787_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1788_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1788_TRI3'
    coef = 0.9
  [../]

  [./1788_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1788_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1789_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1789_TRI3'
    coef = 0.9
  [../]

  [./1789_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1789_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1790_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1790_TRI3'
    coef = 0.9
  [../]

  [./1790_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1790_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1791_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1791_TRI3'
    coef = 0.9
  [../]

  [./1791_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1791_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1792_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1792_TRI3'
    coef = 0.9
  [../]

  [./1792_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1792_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1793_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1793_TRI3'
    coef = 0.9
  [../]

  [./1793_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1793_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1794_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1794_TRI3'
    coef = 0.9
  [../]

  [./1794_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1794_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1795_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1795_TRI3'
    coef = 0.9
  [../]

  [./1795_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1795_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1796_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1796_TRI3'
    coef = 0.9
  [../]

  [./1796_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1796_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1797_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1797_TRI3'
    coef = 0.9
  [../]

  [./1797_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1797_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1798_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1798_TRI3'
    coef = 0.9
  [../]

  [./1798_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1798_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1799_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1799_TRI3'
    coef = 0.9
  [../]

  [./1799_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1799_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1800_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1800_TRI3'
    coef = 0.9
  [../]

  [./1800_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1800_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./1801_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S1801_TRI3'
    coef = 0.9
  [../]

  [./1801_conv]
    type=ExampleConvection
    variable=convected
    block = 'S1801_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./2074_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S2074_TRI3'
    coef = 0.9
  [../]

  [./2074_conv]
    type=ExampleConvection
    variable=convected
    block = 'S2074_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./2075_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S2075_TRI3'
    coef = 0.9
  [../]

  [./2075_conv]
    type=ExampleConvection
    variable=convected
    block = 'S2075_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./2086_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S2086_TRI3'
    coef = 0.9
  [../]

  [./2086_conv]
    type=ExampleConvection
    variable=convected
    block = 'S2086_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./2087_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S2087_TRI3'
    coef = 0.9
  [../]

  [./2087_conv]
    type=ExampleConvection
    variable=convected
    block = 'S2087_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./2314_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S2314_TRI3'
    coef = 0.9
  [../]

  [./2314_conv]
    type=ExampleConvection
    variable=convected
    block = 'S2314_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./2315_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S2315_TRI3'
    coef = 0.9
  [../]

  [./2315_conv]
    type=ExampleConvection
    variable=convected
    block = 'S2315_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./2326_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S2326_TRI3'
    coef = 0.9
  [../]

  [./2326_conv]
    type=ExampleConvection
    variable=convected
    block = 'S2326_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./2327_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S2327_TRI3'
    coef = 0.9
  [../]

  [./2327_conv]
    type=ExampleConvection
    variable=convected
    block = 'S2327_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./2327_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S2327_TRI3'
    coef = 0.9
  [../]

  [./2327_conv]
    type=ExampleConvection
    variable=convected
    block = 'S2327_TRI3'
    velocity = '1.3 0 0'
  [../]


  [./3922_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S3922_TRI3'
    coef = 0.9
  [../]

  [./3922_conv]
    type=ExampleConvection
    variable=convected
    block = 'S3922_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./3929_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S3929_TRI3'
    coef = 0.9
  [../]

  [./3929_conv]
    type=ExampleConvection
    variable=convected
    block = 'S3929_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./3930_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S3930_TRI3'
    coef = 0.9
  [../]

  [./3930_conv]
    type=ExampleConvection
    variable=convected
    block = 'S3930_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./3933_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S3933_TRI3'
    coef = 0.9
  [../]

  [./3933_conv]
    type=ExampleConvection
    variable=convected
    block = 'S3933_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./3938_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S3938_TRI3'
    coef = 0.9
  [../]

  [./3938_conv]
    type=ExampleConvection
    variable=convected
    block = 'S3938_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./3939_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S3939_TRI3'
    coef = 0.9
  [../]

  [./3939_conv]
    type=ExampleConvection
    variable=convected
    block = 'S3939_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./3942_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S3942_TRI3'
    coef = 0.9
  [../]

  [./3942_conv]
    type=ExampleConvection
    variable=convected
    block = 'S3942_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./3943_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S3943_TRI3'
    coef = 0.9
  [../]

  [./3943_conv]
    type=ExampleConvection
    variable=convected
    block = 'S3943_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./3944_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S3944_TRI3'
    coef = 0.9
  [../]

  [./3944_conv]
    type=ExampleConvection
    variable=convected
    block = 'S3944_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./3945_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S3945_TRI3'
    coef = 0.9
  [../]

  [./3945_conv]
    type=ExampleConvection
    variable=convected
    block = 'S3945_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./3946_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S3946_TRI3'
    coef = 0.9
  [../]

  [./3946_conv]
    type=ExampleConvection
    variable=convected
    block = 'S3946_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./3950_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S3950_TRI3'
    coef = 0.9
  [../]

  [./3950_conv]
    type=ExampleConvection
    variable=convected
    block = 'S3950_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./3951_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S3951_TRI3'
    coef = 0.9
  [../]

  [./3951_conv]
    type=ExampleConvection
    variable=convected
    block = 'S3951_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./3952_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S3952_TRI3'
    coef = 0.9
  [../]

  [./3952_conv]
    type=ExampleConvection
    variable=convected
    block = 'S3952_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./3953_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S3953_TRI3'
    coef = 0.9
  [../]

  [./3953_conv]
    type=ExampleConvection
    variable=convected
    block = 'S3953_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./3954_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S3954_TRI3'
    coef = 0.9
  [../]

  [./3954_conv]
    type=ExampleConvection
    variable=convected
    block = 'S3954_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./3955_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S3955_TRI3'
    coef = 0.9
  [../]

  [./3955_conv]
    type=ExampleConvection
    variable=convected
    block = 'S3955_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./3956_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S3956_TRI3'
    coef = 0.9
  [../]

  [./3956_conv]
    type=ExampleConvection
    variable=convected
    block = 'S3956_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./3957_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S3957_TRI3'
    coef = 0.9
  [../]

  [./3957_conv]
    type=ExampleConvection
    variable=convected
    block = 'S3957_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./3958_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S3958_TRI3'
    coef = 0.9
  [../]

  [./3958_conv]
    type=ExampleConvection
    variable=convected
    block = 'S3958_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./3961_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S3961_TRI3'
    coef = 0.9
  [../]

  [./3961_conv]
    type=ExampleConvection
    variable=convected
    block = 'S3961_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./3962_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S3962_TRI3'
    coef = 0.9
  [../]

  [./3962_conv]
    type=ExampleConvection
    variable=convected
    block = 'S3962_TRI3'
    velocity = '1.3 0 0'
  [../]

  [./3962_diff]
    type=ExampleCoefDiffusion
    variable=convected
    block = 'S3962_TRI3'
    coef = 0.9
  [../]

  [./3962_conv]
    type=ExampleConvection
    variable=convected
    block = 'S3962_TRI3'
    velocity = '1.3 0 0'
  [../]


[]
[BCs]
  # convected=0 on all vertical sides except the right (x-max)
  [./left_convected]
    type = DirichletBC
    variable = convected
    boundary = 'NRightSide'
    value = 1
  [../]
  [./right_convected]
    type = DirichletBC
    variable = convected
    boundary = 'NLeftSide'
    value = 0
  [../]
  [./left_diffused]
    type = DirichletBC
    variable = diffused
    boundary = 'NLeftSide'
    value = 0
  [../]
  [./right_diffused]
    type = DirichletBC
    variable = diffused
    boundary = 'NRightSide'
    value = 1
  [../]
[]

[Executioner]
  type = Steady
  solve_type = 'PJFNK'
[]

[Outputs]
  execute_on = 'timestep_end'
  exodus = true
[]
