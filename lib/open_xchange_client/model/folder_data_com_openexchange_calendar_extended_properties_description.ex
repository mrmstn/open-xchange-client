# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.FolderDataComOpenexchangeCalendarExtendedPropertiesDescription do
  @moduledoc """
  The description of the folder
  """

  @derive [Poison.Encoder]
  defstruct [
    :"value"
  ]

  @type t :: %__MODULE__{
    :"value" => String.t | nil
  }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.FolderDataComOpenexchangeCalendarExtendedPropertiesDescription do
  def decode(value, _options) do
    value
  end
end

