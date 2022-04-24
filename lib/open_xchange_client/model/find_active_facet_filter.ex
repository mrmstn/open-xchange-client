# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.FindActiveFacetFilter do
  @moduledoc """
  The filter object, copied from the value or option.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"fields",
    :"queries"
  ]

  @type t :: %__MODULE__{
    :"fields" => [String.t] | nil,
    :"queries" => [String.t] | nil
  }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.FindActiveFacetFilter do
  def decode(value, _options) do
    value
  end
end

