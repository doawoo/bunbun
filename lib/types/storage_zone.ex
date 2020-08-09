defmodule BunBun.Types.StorageZone do
  use TypedStruct
  use BunBun.StructBuilder

  typedstruct do
    field :id, integer(), enforce: true, default: 0
    field :name, String.t(), enforce: true, default: ""
    field :password, String.t(), enforce: true, default: ""
    field :read_only_password, String.t(), enforce: true, default: ""
    field :user_id, String.t(), enforce: true, default: ""
    field :files_stored, integer(), enforce: true, default: 0
    field :storage_used, integer(), enforce: true, default: 0
    field :deleted, boolean(), enforce: true, default: false
  end

  struct_builder()
end
