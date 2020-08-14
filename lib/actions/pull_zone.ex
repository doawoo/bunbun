defmodule BunBun.Actions.PullZone do
  alias BunBun.TeslaClient
  alias BunBun.Types.PullZone

  @resource_subpath "pullzone"

  def list() do
    TeslaClient.get(@resource_subpath)
      |> BunBun.check_resp_status()
  end

  def get(%{:id => zone_id}) do
    TeslaClient.get("@resource_subpath/#{zone_id}")
      |> BunBun.check_resp_status()
  end
  def get(id), do: get(%{:id => id})

  def create(zone = %PullZone{}) do
    TeslaClient.post(@resource_subpath, %{:body => zone})
      |> BunBun.check_resp_status()
  end

  def update(zone = %PullZone{}) do
    TeslaClient.post("#{@resource_subpath}/#{zone.id}", %{:body => zone})
    |> BunBun.check_resp_status()
  end

  def delete(%{:id => zone_id}) do
    TeslaClient.delete("#{@resource_subpath}/#{zone_id}")
    |> BunBun.check_resp_status()
  end
  def delete(id), do: delete(%{:id => id})

  def purge_cache(%{:id => zone_id}) do
    TeslaClient.post("#{@resource_subpath}/#{to_string(zone_id)}/purgeCache", %{})
      |> BunBun.check_resp_status()
  end
  def purge_cache(id), do: purge_cache(%{:id => id})

  def set_force_ssl(%{:id => zone_id}, hostname, force) when is_binary(hostname) and is_boolean(force) do
    TeslaClient.post(@resource_subpath, %{:body => %{
      "PullZoneId" => zone_id,
      "Hostname" => hostname,
      "ForceSSL" => force
    }})
    |> BunBun.check_resp_status()
  end
  def set_force_ssl(id, hostname, force), do: set_force_ssl(%{:id => id}, hostname, force)

  def load_free_cert(hostname) when is_binary(hostname) do
    TeslaClient.get(@resource_subpath, query: [hostname: hostname])
    |> BunBun.check_resp_status()
  end
end
