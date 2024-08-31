local function disableStealthMovement()
    local playerPed = PlayerPedId()
    Citizen.Wait(10)

    if GetPedStealthMovement(playerPed) then
        SetPedStealthMovement(playerPed, false)
    end
end

lib.addKeybind({
    name = 'disable_stealth',
    description = 'Disable stealth mode when Ctrl is pressed',
    defaultKey = 'LCONTROL',
    onPressed = function()
        disableStealthMovement()
    end
})