local noclip = false
local esp = false
local noclip_speed = 0.5

local function k(l)
  local m = {}
  local n = GetGameTimer() / 200
  m.r = math.floor(math.sin(n * l + 0) * 127 + 128)
  m.g = math.floor(math.sin(n * l + 2) * 127 + 128)
  m.b = math.floor(math.sin(n * l + 4) * 127 + 128)
  return m
end

function DrawText3D(x, y, z, I, r, g, b)
  SetDrawOrigin(x, y, z, 0)
  SetTextFont(0)
  SetTextProportional(0)
  SetTextScale(0.0, 0.20)
  SetTextColour(r, g, b, 255)
  SetTextDropshadow(0, 0, 0, 0, 255)
  SetTextEdge(2, 0, 0, 0, 150)
  SetTextDropShadow()
  SetTextOutline()
  SetTextEntry('STRING')
  SetTextCentre(1)
  AddTextComponentString(I)
  DrawText(0.0, 0.0)
  ClearDrawOrigin()
end

function tvRP.toggleNoclip()
  noclip = not noclip
  local ped = GetPlayerPed(-1)
  if noclip then -- set
    esp = true
    SetEntityInvincible(ped, true)
    SetEntityVisible(ped, false, false)
    SetEntityCollision(ped, false, false)
  else -- unset
    esp = false
    SetEntityInvincible(ped, false)
    SetEntityVisible(ped, true, false)
    SetEntityCollision(ped, true, true)
  end
end

function tvRP.isNoclip()
  return noclip
end

function tvRP.toggleSpec(idSent)
    local id = idSent
    local sonid = GetPlayerFromServerId(id)
    local targetPed = GetPlayerPed(sonid)

  NetworkSetInSpectatorMode(1, targetPed)

  local x,y,z = table.unpack(GetEntityCoords(targetPed, true))

  RequestCollisionAtCoord(x, y, z)
  while not HasCollisionLoadedAroundEntity(targetPed) do
    RequestCollisionAtCoord(x, y, z)
    Citizen.Wait(10)
  end
end

function tvRP.stopSpec()
    NetworkSetInSpectatorMode(0, GetPlayerPed(-1))
end

--! noclip/invisibility
Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
    if noclip then
      local ped = GetPlayerPed(-1)
      local x,y,z = tvRP.getPosition()
      local dx,dy,dz = tvRP.getCamDirection()
      local speed = noclip_speed

      -- reset velocity
      SetEntityVelocity(ped, 0.0001, 0.0001, 0.0001)

      -- shift press
      if IsControlPressed(0, 21) then
        speed = 3.5
      end

      -- forward
      if IsControlPressed(0,32) then -- MOVE UP
        x = x+speed*dx
        y = y+speed*dy
        z = z+speed*dz
      end

      -- backward
      if IsControlPressed(0,269) then -- MOVE DOWN
        x = x-speed*dx
        y = y-speed*dy
        z = z-speed*dz
      end

      SetEntityCoordsNoOffset(ped,x,y,z,true,true,true)

      for i = 0, 128 do
        if i ~= PlayerId(-1) and GetPlayerServerId(i) ~= 0 then
          local a8 = k(1.0)
          local d7 = GetPlayerPed(i)
          local d8, d9, da = table.unpack(GetEntityCoords(PlayerPedId(-1)))
          local x, y, z = table.unpack(GetEntityCoords(d7))
          local health = GetEntityHealth(d7)
          local armour = GetPedArmour(d7)
          local db = '~h~Name: ' ..GetPlayerName(i) ..'\nHealth: '..health..'\nArmour: '..armour

          if esp then

            DrawText3D(x, y, z - 1.0, db, a8.r, a8.g, a8.b)

            LineOneBegin = GetOffsetFromEntityInWorldCoords(d7, -0.3, -0.3, -0.9)
            LineOneEnd = GetOffsetFromEntityInWorldCoords(d7, 0.3, -0.3, -0.9)
            LineTwoBegin = GetOffsetFromEntityInWorldCoords(d7, 0.3, -0.3, -0.9)
            LineTwoEnd = GetOffsetFromEntityInWorldCoords(d7, 0.3, 0.3, -0.9)
            LineThreeBegin = GetOffsetFromEntityInWorldCoords(d7, 0.3, 0.3, -0.9)
            LineThreeEnd = GetOffsetFromEntityInWorldCoords(d7, -0.3, 0.3, -0.9)
            LineFourBegin = GetOffsetFromEntityInWorldCoords(d7, -0.3, -0.3, -0.9)
            TLineOneBegin = GetOffsetFromEntityInWorldCoords(d7, -0.3, -0.3, 0.8)
            TLineOneEnd = GetOffsetFromEntityInWorldCoords(d7, 0.3, -0.3, 0.8)
            TLineTwoBegin = GetOffsetFromEntityInWorldCoords(d7, 0.3, -0.3, 0.8)
            TLineTwoEnd = GetOffsetFromEntityInWorldCoords(d7, 0.3, 0.3, 0.8)
            TLineThreeBegin = GetOffsetFromEntityInWorldCoords(d7, 0.3, 0.3, 0.8)
            TLineThreeEnd = GetOffsetFromEntityInWorldCoords(d7, -0.3, 0.3, 0.8)
            TLineFourBegin = GetOffsetFromEntityInWorldCoords(d7, -0.3, -0.3, 0.8)
            ConnectorOneBegin = GetOffsetFromEntityInWorldCoords(d7, -0.3, 0.3, 0.8)
            ConnectorOneEnd = GetOffsetFromEntityInWorldCoords(d7, -0.3, 0.3, -0.9)
            ConnectorTwoBegin = GetOffsetFromEntityInWorldCoords(d7, 0.3, 0.3, 0.8)
            ConnectorTwoEnd = GetOffsetFromEntityInWorldCoords(d7, 0.3, 0.3, -0.9)
            ConnectorThreeBegin = GetOffsetFromEntityInWorldCoords(d7, -0.3, -0.3, 0.8)
            ConnectorThreeEnd = GetOffsetFromEntityInWorldCoords(d7, -0.3, -0.3, -0.9)
            ConnectorFourBegin = GetOffsetFromEntityInWorldCoords(d7, 0.3, -0.3, 0.8)
            ConnectorFourEnd = GetOffsetFromEntityInWorldCoords(d7, 0.3, -0.3, -0.9)
            DrawLine(LineOneBegin.x,LineOneBegin.y,LineOneBegin.z,LineOneEnd.x,LineOneEnd.y,LineOneEnd.z,a8.r,a8.g,a8.b,255)
            DrawLine(LineTwoBegin.x,LineTwoBegin.y,LineTwoBegin.z,LineTwoEnd.x,LineTwoEnd.y,LineTwoEnd.z,a8.r,a8.g,a8.b,255)
            DrawLine(LineThreeBegin.x,LineThreeBegin.y,LineThreeBegin.z,LineThreeEnd.x,LineThreeEnd.y,LineThreeEnd.z,a8.r,a8.g,a8.b,255)
            DrawLine(LineThreeEnd.x,LineThreeEnd.y,LineThreeEnd.z,LineFourBegin.x,LineFourBegin.y,LineFourBegin.z,a8.r,a8.g,a8.b,255)
            DrawLine(TLineOneBegin.x,TLineOneBegin.y,TLineOneBegin.z,TLineOneEnd.x,TLineOneEnd.y,TLineOneEnd.z,a8.r,a8.g,a8.b,255)
            DrawLine(TLineTwoBegin.x,TLineTwoBegin.y,TLineTwoBegin.z,TLineTwoEnd.x,TLineTwoEnd.y,TLineTwoEnd.z,a8.r,a8.g,a8.b,255)
            DrawLine(TLineThreeBegin.x,TLineThreeBegin.y,TLineThreeBegin.z,TLineThreeEnd.x,TLineThreeEnd.y,TLineThreeEnd.z,a8.r,a8.g,a8.b,255)
            DrawLine(TLineThreeEnd.x,TLineThreeEnd.y,TLineThreeEnd.z,TLineFourBegin.x,TLineFourBegin.y,TLineFourBegin.z,a8.r,a8.g,a8.b,255)
            DrawLine(ConnectorOneBegin.x,ConnectorOneBegin.y,ConnectorOneBegin.z,ConnectorOneEnd.x,ConnectorOneEnd.y,ConnectorOneEnd.z,a8.r,a8.g,a8.b,255)
            DrawLine(ConnectorTwoBegin.x,ConnectorTwoBegin.y,ConnectorTwoBegin.z,ConnectorTwoEnd.x,ConnectorTwoEnd.y,ConnectorTwoEnd.z,a8.r,a8.g,a8.b,255)
            DrawLine(ConnectorThreeBegin.x,ConnectorThreeBegin.y,ConnectorThreeBegin.z,ConnectorThreeEnd.x,ConnectorThreeEnd.y,ConnectorThreeEnd.z,a8.r,a8.g,a8.b,255)
            DrawLine(ConnectorFourBegin.x,ConnectorFourBegin.y,ConnectorFourBegin.z,ConnectorFourEnd.x,ConnectorFourEnd.y,ConnectorFourEnd.z,a8.r,a8.g,a8.b,255)
          end
        end
      end

    end
  end
end)