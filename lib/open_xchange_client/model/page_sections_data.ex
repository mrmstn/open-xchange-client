# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.PageSectionsData do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :items,
    :name
  ]

  @type t :: %__MODULE__{
          :items => [map()] | nil,
          :name => String.t() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.PageSectionsData do
  def decode(value, _options) do
    value
  end
end
