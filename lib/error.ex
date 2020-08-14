defmodule BunBun.Error do
  use TypedStruct
  use BunBun.StructBuilder

  typedstruct do
    field :code, integer(), enforce: false, default: 0
    field :message, term, enforce: true, default: nil
  end

  struct_builder()
end
