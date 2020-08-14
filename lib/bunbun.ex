defmodule BunBun do
  def get_api_token() do
    System.get_env("BUNNYCDN_API_TOKEN") || Application.fetch_env!(__MODULE__, :api_token)
  end

  @spec api_keyname_to_atom(binary) :: atom
  def api_keyname_to_atom(keyname) when is_binary(keyname) do
    keyname
      |> String.replace("IP", "Ip")
      |> String.split(~r{(?=[A-Z])})
      |> Enum.filter(fn item -> item != "" end)
      |> Enum.join("_")
      |> String.downcase()
      |> String.to_existing_atom()
  end

  def check_resp_status({:ok, %Tesla.Env{} = env}) do
    case env do
      %{:status => 200} -> env.body
      %{:status => non_ok} -> BunBun.Error.build(message: env.body, code: non_ok)
    end
  end

  def check_resp_status({:error, reason}) do
    BunBun.Error.build(message: reason, code: -1)
  end
end
