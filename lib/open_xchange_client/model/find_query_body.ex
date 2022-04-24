# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.FindQueryBody do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"facets",
    :"options",
    :"start",
    :"size"
  ]

  @type t :: %__MODULE__{
    :"facets" => [OpenXchangeClient.Model.FindActiveFacet.t] | nil,
    :"options" => OpenXchangeClient.Model.FindOptionsData.t | nil,
    :"start" => integer() | nil,
    :"size" => integer() | nil
  }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.FindQueryBody do
  import OpenXchangeClient.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"facets", :list, OpenXchangeClient.Model.FindActiveFacet, options)
    |> deserialize(:"options", :struct, OpenXchangeClient.Model.FindOptionsData, options)
  end
end

