# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.FindFacetValue do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :name,
    :item,
    :filter,
    :options
  ]

  @type t :: %__MODULE__{
          :id => String.t() | nil,
          :name => String.t() | nil,
          :item => OpenXchangeClient.Model.FindFacetValueItem.t() | nil,
          :filter => OpenXchangeClient.Model.FindFacetValueFilter.t() | nil,
          :options => [OpenXchangeClient.Model.FindFacetValueOption.t()] | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.FindFacetValue do
  import OpenXchangeClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:item, :struct, OpenXchangeClient.Model.FindFacetValueItem, options)
    |> deserialize(:filter, :struct, OpenXchangeClient.Model.FindFacetValueFilter, options)
    |> deserialize(:options, :list, OpenXchangeClient.Model.FindFacetValueOption, options)
  end
end
