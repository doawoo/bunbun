defmodule BunBun.Types.Statistic do
  use TypedStruct
  use BunBun.StructBuilder

  typedstruct do
    field :total_bandwidth_used, integer(), enforce: true, default: 0
    field :total_requests_served, integer(), enforce: true, default: 0
    field :cache_hit_rate, float(), enforce: true, default: 0
    field :geo_traffic_distribution, String.t(), enforce: true, default: 0

    field :bandwidth_used_chart, term(), default: %{}
  end

  struct_builder()
end
