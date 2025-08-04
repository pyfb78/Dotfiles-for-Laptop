require("colortils").setup({
    -- Register in which color codes will be copied
    register = "+",
    -- Preview for colors, if it contains `%s` this will be replaced with a hex color code of the color
    color_preview =  "█ %s",
    -- The default in which colors should be saved
    -- This can be hex, hsl or rgb
    default_format = "hex",
    -- Border for the float
    border = "rounded",
    -- Some mappings which are used inside the tools
    mappings = {
        increment_big = "L",
        decrement_big = "H",
    }
})
