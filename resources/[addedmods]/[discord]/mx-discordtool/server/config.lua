config = {
    guild              = '1049275347520196648',               -- DISCORD SERVER GUILD
    debug              = true,             -- Shows debug messages in console
    warning            = true,             -- Shows warning messages in console
    defaultBanDuration = 60 * 60 * 24 * 7, -- 7 days
    whitelist          = false,            -- In Development. Currently, you can add or remove whitelists only for existing users.
    discordInviteLink  = 'https://discord.gg/sNqVYFuZM7',               -- Discord invite link
    webhook            = '',               -- Discord webhook for the screenshots
    language           = 'en-US',          -- (en-US, it, de-DE) https://github.com/MOXHARTZ/fivem-manager-bot-translations
}

exports('GetConfig', function()
    return config
end)
