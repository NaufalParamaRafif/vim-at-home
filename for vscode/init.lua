-- add this line of code to nvim config file
if vim.g.vscode then
	vim.keymap.set('n', 'grr', function()
		vim.fn.VSCodeNotify('editor.action.goToReferences')
	end, { desc = 'Go to References' })

	vim.keymap.set('n', 'gI', function()
		vim.fn.VSCodeNotify('editor.action.peekImplementation')
	end, { desc = 'Go to Implementation' })

	vim.keymap.set('n', 'gy', function()
		vim.fn.VSCodeNotify('editor.action.goToTypeDefinition')
	end, { desc = 'Go to Type Definition' })

	vim.keymap.set('n', 'gf', function()
		vim.fn.VSCodeNotify('editor.action.revealDeclaration')
	end, { desc = 'Go to Declaration' })
end
