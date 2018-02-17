local w = require("w")
local r = require("r")
local k = require("k")
local jua = require("jua")
os.loadAPI("json.lua")
local await = jua.await

r.init(jua)
w.init(jua)
k.init(jua, json, w, r)

jua.on("terminate", function()
	jua.stop()
	printError("Terminated")
end)

local function openWebsocket()
	local success, ws = await(k.connect, "your-private-key")
	assert(success, "Failed to get websocket URL")

	print("Connected to websocket.")

	-- here we subscribe to the 'transactions' event
	local success = await(ws.subscribe, "transactions", function(data)
		-- this function is called every time a transaction is made
		local transaction = data.transaction

		print("Transaction made:")
		print("From: " .. transaction.from)
		print("To: " .. transaction.to)
		print("Value: " .. transaction.value .. " KST")
	end)
	assert(success, "Failed to subscribe to event")
end

jua.go(function()
	openWebsocket()
	-- your other code
end)