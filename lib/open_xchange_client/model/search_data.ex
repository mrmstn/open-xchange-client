# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.SearchData do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :item_id,
    :name,
    :page_sections
  ]

  @type t :: %__MODULE__{
          :item_id => String.t() | nil,
          :name => String.t() | nil,
          :page_sections => [OpenXchangeClient.Model.PageSectionsData.t()] | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.SearchData do
  import OpenXchangeClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:page_sections, :list, OpenXchangeClient.Model.PageSectionsData, options)
  end
end