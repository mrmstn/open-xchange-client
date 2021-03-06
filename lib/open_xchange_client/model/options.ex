# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.Options do
  @moduledoc """
  A options object containing additional information for the client.
  """

  @derive [Poison.Encoder]
  defstruct [
    :allowNestedTests
  ]

  @type t :: %__MODULE__{
          :allowNestedTests => boolean() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.Options do
  def decode(value, _options) do
    value
  end
end
