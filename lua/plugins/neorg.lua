return {
    "nvim-neorg/neorg",
    lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = "*", -- Pin Neorg to the latest stable release
    config = function ()
        require("neorg").setup {
            load = {
                ["core.defaults"] = {},
                ["core.concealer"] = {},
                ["core.dirman"] = {
                    config = {
                        workspaces = {
                            notes = "~/Documents/Notes",
                        },
                        default_workspace = "notes",
                    },
                },
                ["core.summary"] = {},
                ["core.integrations.telescope"] = {},
            },
        }

        vim.wo.foldlevel = 99
        vim.wo.conceallevel = 2
    end,
    dependencies = {
        {
            "nvim-lua/plenary.nvim"
        },
        {
            "nvim-neorg/neorg-telescope"
        },
    },
}
