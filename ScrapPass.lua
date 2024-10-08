DEFAULT_CHAT_FRAME:AddMessage("ScrapPass Successfully Loaded ");
ScrapPass = CreateFrame("Frame")
ScrapPass:RegisterEvent("START_LOOT_ROLL")
ScrapPass:SetScript("OnEvent", function(self, event, rollID)
    if event == "START_LOOT_ROLL" then
        local texture, name, count, quality = GetLootRollItemInfo(rollID)
        
        -- Automatically pass if the item name contains "Wartorn"
        if name and name:find("Wartorn") then
            RollOnLoot(rollID, 0)
        end
    end
end)
