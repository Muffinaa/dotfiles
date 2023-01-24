local db = require('dashboard')

local ascii = {
            " ",
            "███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
            "████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║",
            "██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║",
            "██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
            "██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
            "╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝",
            " ",
            "Fuck VS Code",
            " "
        }


db.custom_header = ascii

db.custom_center = {
    {
        desc = 'Find Files                              ',
        shortcut = 'SPC f f',
        action = 'Telescope find_files find_command=rg,--hidden,--files',
    },
    {
        desc = 'Find word                               ',
        action = 'Telescope live_grep',
        shortcut = 'SPC f g'
    },
}
