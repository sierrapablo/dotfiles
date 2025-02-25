-- DeepSeek R1 local via Ollama with enhanced configuration
return {
  "David-Kunz/gen.nvim",
  config = function()
    require("gen").setup({
      model = "deepseek-r1",
      display_mode = "float",
      show_prompt = false,
      show_model = false,
      temperature = 0.7,
      top_p = 1,
      best_of = 3,
      dynamic_iteration = true,
      iteration_method = "diverse",
      iterations = 3,
      refine = true,
      refine_iterations = 2
    })
  end
}
