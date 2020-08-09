defmodule BunBun.Types.EdgeRuleTrigger do
  use TypedStruct
  use BunBun.StructBuilder

  typedstruct do
    field :guid, String.t(), enforce: true, default: ""
    field :parameter_1, String.t(), enforce: true, default: ""
    field :type, integer(), enforce: true, default: 0
    field :trigger_matching_type, integer(), enforce: true, default: 0
    field :pattern_matches, list(String.t()), enforce: true, default: []
  end

  struct_builder()
end
