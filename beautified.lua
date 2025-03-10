local tester = "Iroha" -- put your actual name here
print([[
  
  ---------------------------------------------------------------------------------------------------------------
  ░██████╗██╗░░██╗██████╗░██╗███╗░░░███╗██████╗░░░░██████╗░██╗░░░██╗███╗░░░███╗██████╗░███████╗██████╗░
  ██╔════╝██║░░██║██╔══██╗██║████╗░████║██╔══██╗░░░██╔══██╗██║░░░██║████╗░████║██╔══██╗██╔════╝██╔══██╗
  ╚█████╗░███████║██████╔╝██║██╔████╔██║██████╔╝░░░██║░░██║██║░░░██║██╔████╔██║██████╔╝█████╗░░██████╔╝
  ░╚═══██╗██╔══██║██╔══██╗██║██║╚██╔╝██║██╔═══╝░░░░██║░░██║██║░░░██║██║╚██╔╝██║██╔═══╝░██╔══╝░░██╔══██╗
  ██████╔╝██║░░██║██║░░██║██║██║░╚═╝░██║██║░░░░░██╗██████╔╝╚██████╔╝██║░╚═╝░██║██║░░░░░███████╗██║░░██║
  ╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝╚═╝░░░░░╚═╝╚═╝░░░░░╚═╝╚═════╝░░╚═════╝░╚═╝░░░░░╚═╝╚═╝░░░░░╚══════╝╚═╝░░╚═╝
  ----- Press X for SUNC ----- Press U for UNC ----- Press C to copy the console logs ----- Press E to exit -----
  -------------------------------------------------- V0.0.2 -----------------------------------------------------]]) 
game:GetService('StarterGui'):SetCore('SendNotification', {Title = "hi" ;Text = "Executed, check console (Press F9 or type /console in chat)"; Duration = 5;}) 
local time = os.date("%Y-%m-%d") 
local previousMessages = {} 
local enabled = true 
game:GetService('UserInputService').InputBegan:Connect(function(input, gameProcessed) 
	if gameProcessed then return end 
	if input.KeyCode == Enum.KeyCode.X and enabled then print('Tested by '..tester..' | Test Date: '..time) loadstring(game:HttpGet('https://gitlab.com/sens3/nebunu/-/raw/main/HummingBird8\'s_sUNC_yes_i_moved_to_gitlab_because_my_github_acc_got_brickedd/sUNCm0m3n7.lua'))()  
	elseif input.KeyCode == Enum.KeyCode.U  and enabled then print('Tested by '..tester..' | Test Date: '..time) loadstring(game:HttpGet('https://raw.githubusercontent.com/unified-naming-convention/NamingStandard/refs/heads/main/UNCCheckEnv.lua'))() 
	elseif input.KeyCode == Enum.KeyCode.C and enabled then 
		local logService = game:GetService("LogService") 
		local allMessages = "" 
		local previousMessages = {} 
		for _, log in ipairs(logService:GetLogHistory()) do 
			local message = log.message 
			if not table.find(previousMessages, message) then 
				allMessages = allMessages .. message .. "\n"
			end 
		end 
		writefile(identifyexecutor() .. "-Test.txt", allMessages) print("Console logs saved in "..identifyexecutor()..'-Text.txt. Check your executor\'s workspace folder') 
	elseif input.KeyCode == Enum.KeyCode.E and enabled then print('Whoosh, script is gone to ashes.') enabled = false end 
end)
