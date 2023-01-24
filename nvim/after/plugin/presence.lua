require("presence"):setup({
    auto_update         = true,
    neovim_image_text   = ":h getting-bitches",
    main_image          = "neovim-hq",
    client_id           = "1062741093206204436",
    log_level           = nil,
    debounce_timeout    = 10,
    enable_line_number  = true,
    blacklist           = {},
    buttons             = true,
    file_assets         = {},
    show_time           = true,

    editing_text        = "✍️ Editing %s",
    file_explorer_text  = "📁 Browsing files",
    git_commit_text     = "💾 Committing changes",
    plugin_manager_text = "🗃️ Managing plugins",
    reading_text        = "🔎 Reading %s",
    workspace_text      = "⚙️ Working on %s",
    line_number_text    = "📜 Line %s out of %s"
})
