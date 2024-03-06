local plugin = {"dustinblackman/oatmeal.nvim"}

plugin.cmd = { "Oatmeal" }

plugin.keys = {
    {
        "<leader>om",
        mode ="n",
        desc = "Start Oatmeal session" 
    }
}

plugin.opts = {
    backend = "ollama",
    model   = "deepseek-coder:1.3b-instruct"
}

return plugin
