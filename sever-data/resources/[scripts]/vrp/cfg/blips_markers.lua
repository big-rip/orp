
-- this file is used to define additional static blips and markers to the map
-- some lists: https://wiki.gtanet.work/index.php?title=Blips

local cfg = {}

-- list of blips
-- {x,y,z,idtype,idcolor,text}
cfg.blips = {
  {-1202.96252441406,-1566.14086914063,4.61040639877319,311,17,"Body training"},
  {460.190338134766,-993.888488769531,24.914867401123,60,38,"Police Station"},
  {1853.21, 3689.51, 34.2671,60,17,"Police Station"},
  {391.541442871094,-1615.154296875,29.291934967041,60,38,"Police Station"}, 
  {-261.40533447266,-965.15747070313,31.224115371704,315,4,"Driver License"},
  {244.1099395752,-1382.8720703125,39.534328460693,61,3,"Hospital Station"},
  {415.2883605957,-1652.4112548828,29.291698455811,446,47,"Repair Station"},
  {236.41926574707,216.96081542969,106.28672790527,434,4,"Bank Driver Station"},  
  {1049.39819,-555.6142,59.1099167,410,47,"Park"},
  {449.81854248047,-993.30865478516,30.689584732056,73,3,"Police Outfits"},
  {575.40698242188,-3121.94921875,18.768627166748,433,1,"Bounty Hunter"},
  {138.28096008301,-764.61865234375,45.752029418945,88,5,"FBI"},
  {743.19586181641,-3895.3967285156,30.556676864624,28,68,"Fishing Spot"},
  {-342.75030517578,6098.2495117188,31.318670272827,150,4,"Stolen Weapons"},
  {2213.0520019531,5577.5981445313,53.795757293701,140,2,"Medical Weed"},
  {-77.722381591797,6223.626953125,31.089864730835,140,2,"Drug Lab"},
  {-1395.9016113281,-607.93939208984,30.319543838501,121,48,"Club"},
  {-560.13873291016,286.93334960938,82.176391601563,378,38,"Biker-Gang"},
  {-928.89624023438,-2937.396484375,13.945074081421,90,3,"Cargo Pilot"},
  {-346.18237304688,165.31571960449,86.390754699707,121,3,"Nite Club"},
  {243.67727661133,230.6535949707,106.28681945801,198,4,"Bank Driver"},
  {-1395.9016113281,-607.93939208984,30.319543838501,121,48,"Club"},
  {1374.25,-2711.89,2.31,102,47,"Beach Bar"},
  {-759.6591796875,-1515.3978271484,4.9768991470337,43,30,"Blue Airlines"},
  {705.67150878906,-966.78765869141,30.395341873169,150,30,"Hacker"},
  {-1911.9273681641,-569.71649169922,19.097215652466,102,30,"Lawyer"},
--{-1345.333984375,-2692.7885742188,13.944937705994,102,30,"Santa's Sleigh"},
--{-1373.0778808594,-2677.6694335938,13.944942474365,102,30,"Santa's Cloakroom"},
  {439.57083129883,-995.072265625,30.689596176147,408,38,"Police Reports"}, -- Mission Row
  {1851.6605224609,3690.6713867188,34.267044067383,408,38,"Police Reports"}, -- Sandy Shores
  {-449.43395996094,6010.796875,31.716377258301,408,38,"Police Reports"}, -- Paleto
  {-272.08700561523,27.639623641968,54.752536773682,102,30,"Medical Reports"},
  {465.04064941406,3569.1174316406,33.238555908203,102,30,"Medical Reports"},
  {-1145.8566894531,4939.5083007813,222.2686920166,102,30,"Medical Reports"},
  {1865.1586914063,3749.4343261719,33.046268463135,277,4,"Drug Dealer Job"}, -- Drug Dealer
  {-1911.9273681641,-569.71649169922,19.097215652466,351,47,"Job Selector"}, -- CoC
  {447.35137939453,-975.57592773438,30.689584732056,351,38,"Police Job"}, -- Mission Row
  {1857.5961914063,3688.8952636719,34.267040252686,351,38,"Police Job"}, -- Sandy Shores
  {-449.00927734375,6017.1953125,31.716377258301,351,38,"Police Job"}, -- Paleto
  {283.10546875,6788.7104492188,15.695198059082,351,2,"Smuggler Job"}, -- Weapons Smuggler
  {-928.89624023438,-2937.396484375,13.945074081421,351,2,"Cargo Job"}, -- Cargo Pilot
  {750.05029296875,-1402.9224853516,26.549806594849,351,2,"Trash Job"}, -- Trash Collector
  {-59.127178192139,359.25082397461,113.05643463135,351,7,"Judge Job"}, -- Judge
  {388.61703491211,3587.1179199219,33.292263031006,351,2,"Forger Job"}, -- Forger
  {1618.9204101563,3227.7058105469,40.411529541016,94,2,"Cargo Collection"}, -- Cargo
  {-901.70129394531,-3293.984375,13.944430351257,16,30,"Garage (Cargo)"}, -- Cargo Garage Sa
  {2128.9069824219,4806.134765625,41.168750762939,16,30,"Garage (Cargo)"}, -- Cargo Garage Sa
  {1734.9053955078,3297.9689941406,41.22350311279,16,30,"Garage (Cargo)"}, -- Cargo Garage Sa
  {2128.9069824219,4806.134765625,41.168750762939,16,30,"Garage (Airline)"}, -- Airline Garage
  {1734.9053955078,3297.9689941406,41.223503112793,16,30,"Garage (Airline)"}, -- Airline Garage
  {-745.14343261719,-1468.5361328125,5.0005240440369,43,30,"Garage (Helicopter Airline)"}, -- Helicopter Garage for Airline Job
  {807.07354736328,-1077.0104980469,28.621067047119,43,30,"Trash"}, -- Trash for Trash Collector
  {69.852645874023,117.0472946167,79.126907348633,16,30,"Garage (UPS)"}, -- UPS Garage
  {907.38049316406,-175.86546325684,74.130157470703,16,30,"Garage (UBER)"}, -- UBER Garage
  {1508.8854980469,3908.5732421875,30.031631469727,16,30,"Garage (Fishing)"}, -- Fishing Garage
  {-319.82263183594,-942.8408203125,31.080617904663,16,30,"Garage (Medical Weed)"}, -- Medical Weed Garage
  {222.68756103516,222.95631408691,105.41331481934,16,30,"Garage (Bank Driver)"}, -- Bank Driver Garage
  {401.42602539063,-1631.7053222656,29.291942596436,16,30,"Garage (Mechanic)"}, -- Mechanic Garage
  {964.514770507813,-1020.13879394531,40.8475074768066,16,30,"Garage (Delivery)"}, -- Delivery Garage
  {-1900.7344970703,-560.89245605469,11.802397727966,16,30,"Garage (Lawyer)"}, -- Lawyer Garage
  {76.495727539063,-27.030916213989,68.562599182129,16,30,"UPS Centre"}, -- UPS Parcel collection point
  {1374.25,-2711.89,2.31,102,47,"Beach Bar"},
  {-346.18237304688,165.31571960449,86.390754699707,121,3,"Nite Club"},
  {915.6083,-2918.35669,4.88864136,147,1,"Race Track"}
}

-- list of markers
-- {x,y,z,sx,sy,sz,r,g,b,a,visible_distance}
cfg.markers = {
  {743.19586181641,3895.3967285156,30.556676864624,1.5,1.5,1.5,204,204,0,150,35}, -- Place where to get the fish from.
  {1508.8854980469,3908.5732421875,30.031631,1,1,0.8,204,204,0,150,35}, -- Place to get the boat from (marked on the ground)
  {-342.75030517578,6098.2495117188,30.318670272827,1,1,0.8,204,204,0,150,35}, -- Place to get the illegal weapons from
  {2213.0520019531,5577.5981445313,52.795757293701,1,1,0.8,204,204,0,150,35}, -- Place to harvest Medical Weed
  {-261.40533447266,-965.15747070313,30.224115371704,1,1,0.8,204,204,0,150,35}, -- Place to get Drivers License
  {805.77130126953,1078.0639648438,27.55744934082,1,1,0.8,204,204,0,150,35}, -- Place to get Trash
  {439.57083129883,-995.072265625,29.689596176147,1,1,0.8,204,204,0,150,35}, -- Mission Row Police Report
  {1851.6605224609,3690.6713867188,33.267044067383,1,1,0.8,204,204,0,150,35}, -- Sandy Shores Police Report
  {-449.43395996094,6010.796875,30.716377258301,1,1,0.8,204,204,0,150,35}, -- Paleto Police Report
  {-272.08700561523,27.639623641968,53.752536773682,1,1,0.8,204,204,0,150,35}, -- Medical Report
  {465.04064941406,3569.1174316406,32.238555908203,1,1,0.8,204,204,0,150,35}, -- Medical Report
  {-1145.8566894531,4939.5083007813,221.2686920166,1,1,0.8,204,204,0,150,35}, -- Medical Report
  {1618.9204101563,3227.7058105469,39.411529541016,1,1,0.8,204,204,0,150,35}, -- Cargo Collection
  {807.07354736328,-1077.0104980469,27.621067047119,1,1,0.8,204,204,0,150,35} -- Trash
}

return cfg