defmodule BunBun.Types.PullZone do
  use TypedStruct
  use BunBun.StructBuilder

  alias BunBun.Types

  @derive Jason.Encoder
  typedstruct do
    field :id, integer(), enforce: true, default: 0
    field :name, String.t(), enforce: true, default: ""
    field :origin_url, String.t(), enforce: true, default: ""
    field :enabled, boolean(), enforce: true, default: false
    field :hostnames, list(Types.Hostname.t()), enforce: true, default: []
    field :storage_zone_id, integer(), enforce: true, default: 0

    field :allowed_referrers, list(String.t()), enforce: true, default: []
    field :blocked_ips, list(String.t()), enforce: true, default: []

    field :enabled_geo_zone_us, boolean(), enforce: true, default: false
    field :enabled_geo_zone_eu, boolean(), enforce: true, default: false
    field :enabled_geo_zone_asia, boolean(), enforce: true, default: false
    field :enabled_geo_zone_af, boolean(), enforce: true, default: false
    field :enabled_geo_zone_sa, boolean(), enforce: true, default: false

    field :zone_security_key, String.t(), enforce: true, default: ""
    field :zone_security_include_hash_remote_ip, boolean(), enforce: true, default: false
    field :ignore_query_strings, boolean(), enforce: true, default: false

    field :monthly_bandwidth_limit, integer(), enforce: true, default: 0
    field :monthly_bandwidth_used, integer(), enforce: true, default: 0
    field :monthly_charges, integer(), enforce: true, default: 0

    field :add_host_name, boolean(), enforce: true, default: false

    field :type, integer(), enforce: true, default: 0

    field :custom_nginx_config, String.t(), enforce: true, default: ""
    field :access_control_origin_header_extensions, list(String.t()), enforce: true, default: []

    field :enable_access_control_origin_header, boolean(), enforce: true, default: false
    field :block_root_path_access, boolean(), enforce: true, default: false
    field :enable_webp_vary, boolean(), enforce: true, default: false
    field :enable_logging, boolean(), enforce: true, default: false
    field :disable_cookies, boolean(), enforce: true, default: false

    field :budget_redirected_countries, list(String.t()), enforce: true, default: []
    field :blocked_countries, list(String.t()), enforce: true, default: []

    field :enable_origin_shield, boolean(), enforce: true, default: false
    field :origin_shild_zone_code, String.t(), enforce: true, default: ""

    field :add_canonical_header, boolean(), enforce: true, default: false
  end

  struct_builder()
end
