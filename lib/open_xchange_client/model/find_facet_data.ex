# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.FindFacetData do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :style,
    :id,
    :name,
    :item,
    :flags,
    :filter,
    :values,
    :options
  ]

  @type t :: %__MODULE__{
          :style => String.t() | nil,
          :id => String.t() | nil,
          :name => String.t() | nil,
          :item => OpenXchangeClient.Model.FindFacetItem.t() | nil,
          :flags => [String.t()] | nil,
          :filter => OpenXchangeClient.Model.FindFacetFilter.t() | nil,
          :values => [OpenXchangeClient.Model.FindFacetValue.t()] | nil,
          :options => [OpenXchangeClient.Model.FindFacetValue.t()] | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.FindFacetData do
  import OpenXchangeClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:item, :struct, OpenXchangeClient.Model.FindFacetItem, options)
    |> deserialize(:filter, :struct, OpenXchangeClient.Model.FindFacetFilter, options)
    |> deserialize(:values, :list, OpenXchangeClient.Model.FindFacetValue, options)
    |> deserialize(:options, :list, OpenXchangeClient.Model.FindFacetValue, options)
  end
end