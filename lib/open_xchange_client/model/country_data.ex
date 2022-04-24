# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.CountryData do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :country_id,
    :name,
    :iso_3166,
    :icon,
    :icon_etag,
    :name_translation,
    :translation_url,
    :page_id
  ]

  @type t :: %__MODULE__{
          :country_id => integer() | nil,
          :name => String.t() | nil,
          :iso_3166 => String.t() | nil,
          :icon => String.t() | nil,
          :icon_etag => String.t() | nil,
          :name_translation => String.t() | nil,
          :translation_url => String.t() | nil,
          :page_id => integer() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.CountryData do
  def decode(value, _options) do
    value
  end
end
