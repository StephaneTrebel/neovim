require("obsidian").setup({
    workspaces = {
        -- First one will be selected by default
        {name = "perso", path = "~/Dropbox/obsidian/perso"},
        {name = "vibe-coding", path = "~/projets/perso/budgeteen"},
        {name = "bevy-spritesim", path = "~/projets/perso/bevy-spritesim"},
        {name = "gt-software", path = "~/obsidian/GT Software"}
    },
    daily_notes = {
        -- Optional, if you keep daily notes in a separate directory.
        folder = "dailies",
        -- Optional, default tags to add to each new daily note created.
        default_tags = {"daily-notes"}
    },
    -- Optional, by default when you use `:ObsidianFollowLink` on a link to an external
    -- URL it will be ignored but you can customize this behavior here.
    ---@param url string
    follow_url_func = function(url)
        -- Open the URL in the default web browser.
        -- vim.fn.jobstart({"open", url}) -- Mac OS
        vim.fn.jobstart({"xdg-open", url})  -- linux
        -- vim.cmd(':silent exec "!start ' .. url .. '"') -- Windows
        -- vim.ui.open(url) -- need Neovim 0.10.0+
    end,

    -- Optional, by default when you use `:ObsidianFollowLink` on a link to an image
    -- file it will be ignored but you can customize this behavior here.
    ---@param img string
    follow_img_func = function(img)
        -- vim.fn.jobstart {"qlmanage", "-p", img} -- Mac OS quick look preview
        vim.fn.jobstart({"xdg-open", url})  -- linux
        -- vim.cmd(':silent exec "!start ' .. url .. '"') -- Windows
    end
})

-- This is mandatory to substitue [ ] to their checkbox counterpart
vim.opt.conceallevel = 2
