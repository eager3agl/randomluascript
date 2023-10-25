_G.autoTap = true;
_G.autoRebirth = true;

spawn(function()
    while _G.autoTap == true do
        game:GetService("ReplicatedStorage"):WaitForChild("events-shared/network@GlobalEvents"):WaitForChild("placeBlock"):FireServer()
        wait()
    end
end)

spawn(function()
    while _G.autoRebirth == true do
        local A_1 = 22
        local Event = Game:GetService("ReplicatedStorage")["functions-shared/network@GlobalFunctions"]["s:rebirth"]
        Event:FireServer(A_1)
    end   
end)

print("executed script")