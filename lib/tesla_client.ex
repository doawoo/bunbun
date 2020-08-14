defmodule BunBun.TeslaClient do
  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://bunnycdn.com/api/"
  plug Tesla.Middleware.Headers, [{"AccessKey", BunBun.get_api_token()}]
  plug Tesla.Middleware.JSON
end
