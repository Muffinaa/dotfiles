require("bufferline").setup{
    options = {
        numbers = "ordinal",
        diagnostics = "nvim_lsp",
        separator_style =  "cin",
        show_tab_indicators = true,
        show_buffer_close_icons = true,
        show_close_icon = false,
        offsets = {
            {
                filetype = "NvimTree",
                text = "Files",
                highlight = "Directory",
                separator = true
            }
        }
    },
}
