local bless = TalkAction("!bless")

function bless.onSay(player, words, param)
	return Blessings.BuyAllBlesses(player)
end

bless:register()

-- local tenebrisCd = TalkAction("!tenebris")

-- function tenebrisCd.onSay(player, words, param)
-- 	local cooldownTimer = player:getStorageValue(Storage.ForgottenKnowledge.LadyTenebrisTimer)

-- 	if cooldownTimer <= os.time() then
-- 		player:sendTextMessage(MESSAGE_LOOK, "You can fight Lady Tenebris")
-- 		return true
-- 	end

-- 	return player:sendTextMessage(MESSAGE_LOOK, "You can fight Lady Tenebris on " .. os.date("%X", cooldownTimer))
-- end

-- tenebrisCd:register()
