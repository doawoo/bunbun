defmodule BunBun.Types.BillingRecordData do
  use TypedStruct
  use BunBun.StructBuilder

  typedstruct do
    field :id, integer(), enforce: true, default: 0
    field :amount, float(), enforce: true, default: 0
    field :payer, String.t(), enforce: true, default: ""
    field :paymentId, String.t(), enforce: true, default: ""
    field :timestamp, String.t(), enforce: true, default: ""
    field :invoice_available, boolean(), enforce: true, default: false
    field :type, integer(), enforce: true, default: 0
  end

  struct_builder()
end
