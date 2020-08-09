defmodule BunBun.Types.Hostname do
  use TypedStruct
  use BunBun.StructBuilder

  typedstruct do
    field :id, integer(), enforce: true, default: 0
    field :value, String.t(), enforce: true, default: ""
    field :force_ssl, boolean(), enforce: true, default: false
    field :is_system_hostname, boolean(), enforce: true, default: false
    field :has_certificate, boolean(), enforce: true, default: false
  end

  struct_builder()
end
