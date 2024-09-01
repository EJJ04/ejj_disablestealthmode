lib.addKeybind({
    name = 'disable_stealth',
    description = 'Disable stealth mode when Ctrl is pressed',
    defaultKey = 'LCONTROL',
    onPressed = function()
        Citizen.Wait(10)
    
        if GetPedStealthMovement(cache.ped) then
            SetPedStealthMovement(cache.ped, false)
        end
    end
})