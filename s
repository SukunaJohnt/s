local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(3)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

local GetName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Sukuna - " .. GetName.Name, HidePremium = false, SaveConfig = false, ConfigFolder = "NilFolder"})

local Tab = Window:MakeTab({
 Name = "Level Farm",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

local Section = Tab:AddSection({
 Name = "Level AutoFarm Tab:"
})

Tab:AddToggle({
 Name = "Insta Kill Enemies Every 3s [Get Rewards]",
 Default = false,
 Callback = function(Value)
        getgenv().a = Value 
        while wait(3) do 
           if a== true then 
      
           for i,v in pairs( workspace["229137175230156172229156176229155190"]["1"]:GetDescendants()) do 
               if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") then 
            --  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,10,0)
             for i =1, 100 do 
               local args = {
                  [1] = {
                      ["phsic"] = {
                          ["Power"] = 203.03939819335938,
                          ["Time"] = 0.15,
                          ["Dir"] = Vector3.new(0.8566213250160217, 0.17238032817840576, 0.4862971305847168)
                      },
                      ["damage"] = 30,
                      ["castPercent"] = 0,
                      ["hitID"] = 1,
                      ["isSetNetworkOwnerEnemy"] = true,
                      ["skillID"] = "15050101"
                  },
                  [2] = v.Name
              }
              
              game:GetService("ReplicatedStorage"):WaitForChild("Msg"):WaitForChild("HitEvent"):FireServer(unpack(args))
               end 
              end 
          end
          else
              wait()
              break
          end
      end
 end    
})



Tab:AddToggle({
 Name = "Insta Kill Enemies [No Rewards]",
 Default = false,
 Callback = function(Value)
        getgenv().Defense = Value 
        while wait() do 
           if Defense == true then 
      
           for i,v in pairs( workspace["229137175230156172229156176229155190"]["1"]:GetDescendants()) do 
               if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") then 
      
      
      v.Humanoid.Health = 0
           
                  
               end 
              end 
      
          else
              wait()
              break
          end
      end
      
 end    
})



Tab:AddToggle({
 Name = "Teleport Above Enemies In Dungeon [Anti-Attack]",
 Default = false,
 Callback = function(Value)
        getgenv().AutoTp = Value 
        while wait() do 
           if AutoTp == true then 
      
           for i,v in pairs( workspace["229137175230156172229156176229155190"]["1"]:GetDescendants()) do 
               if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and  game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")  then 
        game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,20,0)
               end 
              end 
          else
              wait()
              break
          end
      end
 end    
})


Tab:AddToggle({
 Name = "Auto Sell Unequip Items Every 5s",
 Default = false,
 Callback = function(Value)
        getgenv().AutoSellItem = Value
 while wait(5) do 
 if AutoSellItem == true then 
for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui["230173166229153168"].Frame.Bag.ScrollPet:GetDescendants()) do 
   if v:IsA("ImageButton") and v.Name == "Temp" and v:FindFirstChild("Using") and v.Using.Visible == false and v:FindFirstChild("onlyID") then 
      local args = {
         [1] = "229135186229148174232163133229164135",
         [2] = {
             [1] = v.onlyID.Value
         }
     }
     
     game:GetService("ReplicatedStorage"):WaitForChild("Msg"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
   end 
end 
 else
wait()
break
end 
end
 end    
})


Tab:AddToggle({
 Name = "Auto Equip Best Weapons Every 1s",
 Default = false,
 Callback = function(Value)
        getgenv().EquipBest = Value
 while wait(1) do 
 if EquipBest == true then 
    local args = {
        [1] = "232163133229164135230156128228189179232163133229164135"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Msg"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
    
     
 else
wait()
break
end 
end
 end    
})



OrionLib:Init()
