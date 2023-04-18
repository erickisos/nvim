require('nvim-treesitter.configs').setup {
	ensure_installed = { 'javascript', 'java', 'typescript', 'c', 'lua', 'rust', 'clojure', 'cpp', 'python', 'tsx', 'vim' },
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	}
}
