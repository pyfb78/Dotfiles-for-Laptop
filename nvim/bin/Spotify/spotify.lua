vim.api.nvim_set_keymap("n", "sn", "<Plug>(SpotifySkip)", { silent = true }) -- Skip the current track
vim.api.nvim_set_keymap("n", "sp", "<Plug>(SpotifyPause)", { silent = true }) -- Pause/Resume the current track
vim.api.nvim_set_keymap("n", "ss", "<Plug>(SpotifySave)", { silent = true }) -- Add the current track to your library
vim.api.nvim_set_keymap("n", "so", ":Spotify<CR>", { silent = true }) -- Open Spotify Search window
vim.api.nvim_set_keymap("n", "sd", ":SpotifyDevices<CR>", { silent = true }) -- Open Spotify Devices window
vim.api.nvim_set_keymap("n", "sb", "<Plug>(SpotifyPrev)", { silent = true }) -- Go back to the previous track
-- spt is retarded
vim.api.nvim_set_keymap("n", "sm", "<Plug>(SpotifyShuffle)", { silent = true }) -- Toggles shuffle mode
vim.api.nvim_set_keymap("n", "sh", "smsm", { silent = true }) -- Toggles shuffle mode
local spotify = require'nvim-spotify'

spotify.setup {
    -- default opts
    status = {
        update_interval = 1, -- the interval (ms) to check for what's currently playing
        format = '%s %t by %a' -- spotify-tui --format argument
    }
}
