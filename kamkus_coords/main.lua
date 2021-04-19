
function Teleport(x, y,z)
  local ped = GetPlayerPed(-1)
  local currentPos = GetEntityCoords(ped)
  local roundx = tonumber(x)
  local roundy = tonumber(y)
  local roundz = tonumber(z)
    SetEntityCoords(ped,roundx,roundy,roundz,false,false,false,true)
end


RegisterCommand('pos', function(source)
  local ped = GetPlayerPed(-1)
  local currentPos = GetEntityCoords(ped)
  TriggerEvent('chat:addMessage', {
      args = {'x: ' .. currentPos.x ..' y: ' ..currentPos.y ..' z: '.. currentPos.z}
    })
end, false)

RegisterCommand('GoToM', function(source)
  local waypointBlip = GetFirstBlipInfoId( 8 ) 
  local coord = GetBlipInfoIdCoord(waypointBlip)
  Teleport(coord.x, coord.y, coord.z)
end, false)

RegisterCommand('TP', function(source, args)
  Teleport(args[1], args[2], args[3])
end, false)