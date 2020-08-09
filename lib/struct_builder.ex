defmodule BunBun.StructBuilder do

  @moduledoc """
  This module defines a macro to be used in modules that provide a typedstruct.
  Calling the `struct_builder()` macro inside the module will define a `build/1` function on
  the module.
  """

  @spec __using__(any) ::
          {:import, [{:context, BunBun.StructBuilder}, ...], [{:__aliases__, [...], [...]}, ...]}
  defmacro __using__(_opts) do
    quote do
      import BunBun.StructBuilder
    end
  end

  @spec struct_builder ::
          {:def, [{:context, BunBun.StructBuilder} | {:generated, true} | {:import, Kernel}, ...],
           [[{any, any}, ...] | {:build, [...], [...]}, ...]}
  defmacro struct_builder() do
    quote generated: true do
      def build(attrs) do
        filtered = Enum.filter(attrs, fn {_k, v} -> !is_nil(v) end)
        struct(unquote(__CALLER__.module), filtered)
      end
    end
  end
end
