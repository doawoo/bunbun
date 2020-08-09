defmodule BunBun.Types.Error do
  use TypedStruct
  use BunBun.StructBuilder

  typedstruct do
    field :code, integer(), enforce: true, default: 0
    field :message, String.t(), enforce: true, default: ""
  end

  struct_builder()
end
