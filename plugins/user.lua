return {
    -- You can also add new plugins here as well:
    -- Add plugins, the lazy syntax
    -- "andweeb/presence.nvim",
    -- {
    --   "ray-x/lsp_signature.nvim",
    --   event = "BufRead",
    --   config = function()
    --     require("lsp_signature").setup()
    --   end,
    -- }, 
    {
        "jcdickinson/http.nvim",
        build = "cargo build --workspace --release"
    },
    {
        "YukoOshima/codeium.nvim",
        event = "BufRead",
        lazy=false,
        requires = {
            "jcdickinson/http.nvim",
            "nvim-lua/plenary.nvim",
            "hrsh7th/nvim-cmp",
        },
        config = function()
            require("codeium").setup({
            })
        end
    },
}
