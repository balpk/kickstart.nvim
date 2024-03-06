local plugin = {"lervag/vimtex"}

function plugin.init()
    vim.opt.conceallevel=2

    vim.g.vimtex_syntax_conceal = {
         accents = 1,
         cites = 1,
         fancy = 1,
         greek = 1,
         math_bounds = 1,
         math_delimiters = 1,
         math_fracs = 1,
         math_super_sub = 1,
         math_symbols = 1,
         sections = 0,
         styles = 1,
    }

    -- Viewer options: One may configure the viewer either by specifying a built-in
    -- viewer method:
    vim.g.vimtex_view_method = 'zathura'

    -- disable quickfix error panel
    vim.g.vimtex_quickfix_enabled = 1

    -- disable forward search on initial compiling
    vim.g.vimtex_view_forward_search_on_start = 0

    vim.g.vimtex_compiler_latexmk = {
        build_dir = '',
        callback = 1,
        continuous = 1,
        executable = 'latexmk',
        hooks = {},
        options = {
           '-shell-escape',
           '-verbose',
           '-file-line-error',
           '-synctex=1',
           '-interaction=nonstopmode',
         },
    }

    vim.g.vimtex_compiler_latexrun_engines = {
        _                = 'pdflatex',
        pdflatex         = 'pdflatex',
        lualatex         = 'lualatex',
        xelatex          = 'xelatex',
    }
end

return plugin
