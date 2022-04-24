# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.FindActiveFacet do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :facet,
    :value,
    :filter
  ]

  @type t :: %__MODULE__{
          :facet => String.t() | nil,
          :value => String.t() | nil,
          :filter => OpenXchangeClient.Model.FindActiveFacetFilter.t() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.FindActiveFacet do
  import OpenXchangeClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:filter, :struct, OpenXchangeClient.Model.FindActiveFacetFilter, options)
  end
end