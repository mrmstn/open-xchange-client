# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.QuotaData do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :quota,
    :use
  ]

  @type t :: %__MODULE__{
          :quota => integer() | nil,
          :use => integer() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.QuotaData do
  def decode(value, _options) do
    value
  end
end
