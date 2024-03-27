local env = require("env")

local opts = {
	api_key = env.GEMINI_API_KEY,
	language = "indonesia",
	second_language = "english",
	prompts = {},
	use_glow = true,
}

return opts
