require('code_runner').setup({
  mode = "float",
  float = {
      border = "rounded",
      height = 0.95,
      width = 0.5,
      x = 1,
      y = 0.25,

      -- Highlight group for floating window/border (see ':h winhl')
      border_hl = "FloatBorder",
      float_hl = "Normal",

      -- Transparency (see ':h winblend')
      winblend = 30,
  },
  filetype = {
		java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
		python = "python3 -u",
		typescript = "deno run",
		rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
        cpp = "cd $dir && g++ $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt"
	},
})
