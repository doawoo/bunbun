defmodule BunBun.Types.CountryFilterData do
  use TypedStruct
  use BunBun.StructBuilder

  typedstruct do
    field :pull_zone_id, integer(), enforce: true, default: 0
    field :budget_redirected_countries, list(String.t()), enforce: true, default: []
    field :blocked_countries, list(String.t()), enforce: true, default: []
  end

  struct_builder()
end
