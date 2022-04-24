# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.FindFacetValueItem do
  @moduledoc """
  A more complex object to display this facet. Attributes are `name`, `detail` (optional), and `image_url` (optional).
  """

  @derive [Poison.Encoder]
  defstruct [
    :name,
    :detail,
    :image_url
  ]

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :detail => String.t() | nil,
          :image_url => String.t() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.FindFacetValueItem do
  def decode(value, _options) do
    value
  end
end