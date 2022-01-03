local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

local null_ls_helpers_status_ok, null_ls_helpers = pcall(require, "null-ls.helpers")
if not null_ls_helpers_status_ok then
	return
end

local erbformat = {
    method = null_ls.methods.FORMATTING,
    filetypes = { "eruby" },
    -- null_ls.generator creates an async source
    -- that spawns the command with the given arguments and options
    generator = null_ls_helpers.formatter_factory({
        command = "htmlbeautifier",
        to_stdin = true,
        format = nil
    }),
}

null_ls.register(erbformat)

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
	debug = false,
	sources = {
		formatting.prettier.with({ filetypes = { "javascript", "javascriptreact", "typescript", 
      "typescriptreact", "vue", "css", "scss", "less", "html", "json", "yaml", "markdown", 
      "graphql"}, 
      extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } }),
	},
})
