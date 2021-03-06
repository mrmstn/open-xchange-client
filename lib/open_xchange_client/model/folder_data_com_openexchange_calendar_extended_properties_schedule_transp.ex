# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.FolderDataComOpenexchangeCalendarExtendedPropertiesScheduleTransp do
  @moduledoc """
  Indicates whether the calendar object resources in a calendar collection will affect the owner's busy time information or not
  """

  @derive [Poison.Encoder]
  defstruct [
    :value
  ]

  @type t :: %__MODULE__{
          :value => String.t() | nil
        }
end

defimpl Poison.Decoder,
  for: OpenXchangeClient.Model.FolderDataComOpenexchangeCalendarExtendedPropertiesScheduleTransp do
  def decode(value, _options) do
    value
  end
end
