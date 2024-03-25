local env = require("env")
local opts = {}

opts = {
  api_key = env.GEMINI_API_KEY,
  locale = "id",
  alternate_locale = "en",
  prompts = {},
  use_glow = true,
}

return opts
