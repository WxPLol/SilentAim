_G.Types = { Ball = Enum.PartType.Ball, Block = Enum.PartType.Block,  Cylinder = Enum.PartType.Cylinder } local q = Instance.new("\80\97\114\116", game.Workspace) q.Name = "\66\111\120\120"  q.Anchored = true   q.CanCollide = false q.Transparency = 0.5 q.Parent = game.Workspace  q.Shape = _G.Types.Block q.Size = Vector3.new(7,14,7) q.Color = Color3.fromRGB(255,100,100) -- local i = game.Players.LocalPlayer local m = i:GetMouse() local j = game:GetService("\82\117\110\83\101\114\118\105\99\101") circle = Drawing.new("\67\105\114\99\108\101") circle.Color = Color3.fromRGB(255,100,100) circle.Thickness = 0 circle.NumSides = 732 circle.Radius = 120 circle.Thickness = 0 circle.Transparency = 0.7 circle.Visible = true circle.Filled = false j.RenderStepped:Connect(function() circle.Position = Vector2.new(m.X,m.Y+35) end) local p = Instance.new("\70\111\108\100\101\114", game.CoreGui) local g = game:GetService"\87\111\114\107\115\112\97\99\101".CurrentCamera local e = game.Players.LocalPlayer:GetMouse() local k = false -- if getgenv().valiansh == true then game.StarterGui:SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", { Title = "\87\120\80\83\105\108\101\110\116", Text = "\83\99\114\105\112\116\32\65\108\114\101\97\100\121\32\76\111\97\100\101\100", Duration = 5 }) return end getgenv().valiansh = true local h = game:GetService("\85\115\101\114\73\110\112\117\116\83\101\114\118\105\99\101") h.InputBegan:Connect(function(o,a) if (not a) then if (o.KeyCode == getgenv().Key) then if getgenv().Target == true then k = not k if k then Plr =  l() if getgenv().ChatMode then local r = "\84\97\114\103\101\116\58\32"..tostring(Plr.Character.Humanoid.DisplayName) local t = "\65\108\108" local _ = game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").DefaultChatSystemChatEvents.SayMessageRequest _:FireServer(r, t)  end  if getgenv().NotifMode then game.StarterGui:SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", { Title = ""; Text = "\84\97\114\103\101\116\58\32"..tostring(Plr.Character.Humanoid.DisplayName); }) end elseif not k then if getgenv().ChatMode then local r = "\85\110\108\111\99\107\101\100\33" local t = "\65\108\108" local _ = game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").DefaultChatSystemChatEvents.SayMessageRequest _:FireServer(r, t)  end  if getgenv().NotifMode then game.StarterGui:SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", { Title = "", Text = "\85\110\108\111\99\107\101\100", Duration = 5 }) elseif getgenv().Target == false then game.StarterGui:SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", { Title = "", Text = "\84\97\114\103\101\116\32\105\115\110\39\116\32\101\110\97\98\108\101\100", Duration = 5 }) end end     end    end end end) function l() local l_ local ol = circle.Radius for i, v in pairs(game.Players:GetPlayers()) do if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("\72\117\109\97\110\111\105\100") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("\76\111\119\101\114\84\111\114\115\111") then local ao = g:WorldToViewportPoint(v.Character.PrimaryPart.Position) local ca = (Vector2.new(ao.X, ao.Y) - Vector2.new(e.X, e.Y)).magnitude if ca < ol then l_ = v ol = ca end end end return l_ end -- if getgenv().PartMode then game:GetService"\82\117\110\83\101\114\118\105\99\101".Stepped:connect(function() if k and Plr.Character and Plr.Character:FindFirstChild("\76\111\119\101\114\84\111\114\115\111") then q.CFrame = CFrame.new(Plr.Character.LowerTorso.Position+(Plr.Character.LowerTorso.Velocity*Prediction)) else q.CFrame = CFrame.new(0, 9999, 0) end end) end -- local bc = getrawmetatable(game) local qb = bc.__namecall setreadonly(bc, false) bc.__namecall = newcclosure(function(...) local iq = {...} if k and getnamecallmethod() == "\70\105\114\101\83\101\114\118\101\114" and iq[2] == "\85\112\100\97\116\101\77\111\117\115\101\80\111\115" then iq[3] = Plr.Character[getgenv().Partz].Position+(Plr.Character[getgenv().Partz].Velocity*Prediction) return qb(unpack(iq)) end return qb(...) end) if getgenv().AirshotFunccc == true then if Plr.Character.Humanoid.Jump == true and Plr.Character.Humanoid.FloorMaterial == Enum.Material.Air then getgenv().Partz = "\82\105\103\104\116\70\111\111\116" else Plr.Character:WaitForChild("\72\117\109\97\110\111\105\100").StateChanged:Connect(function(qb,b) if b == Enum.HumanoidStateType.Freefall then getgenv().Partz = "\82\105\103\104\116\70\111\111\116" else getgenv().Partz = "\76\111\119\101\114\84\111\114\115\111" end end) end end while wait() do if getgenv().AutoPrediction == true then local mi = game:GetService("\83\116\97\116\115").Network.ServerStatsItem["\68\97\116\97\32\80\105\110\103"]:GetValueString() local jm = string.split(mi,'(') local pj = tonumber(jm[1]) if pj < 130 then getgenv().Prediction = 0.151 elseif pj < 125 then getgenv().Prediction = 0.149 elseif pj < 110 then getgenv().Prediction = 0.146 elseif pj < 105 then getgenv().Prediction = 0.138 elseif pj < 90 then getgenv().Prediction = 0.136 elseif pj < 80 then getgenv().Prediction = 0.134 elseif pj < 70 then getgenv().Prediction = 0.131 elseif pj < 60 then getgenv().Prediction = 0.1229 elseif pj < 50 then getgenv().Prediction = 0.1225 elseif pj < 40 then getgenv().Prediction = 0.1256 end end end
