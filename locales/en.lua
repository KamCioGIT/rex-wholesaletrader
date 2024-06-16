local Translations = {

    client = {
        lang_1 = 'No Access!',
        lang_2 = 'Wholesale Shop',
    },

    server = {
        lang_1 = 'add here',
    },

    config = {
        lang_1 = 'add here',
    },

}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})

-- Lang:t('client.lang_1')
-- Lang:t('server.lang_1')
-- Lang:t('config.lang_1')
