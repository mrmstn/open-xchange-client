# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.FolderDataComOpenexchangeCalendarExtendedProperties do
  @moduledoc """
  Contains the extended properties for calendar folders
  """

  @derive [Poison.Encoder]
  defstruct [
    :description,
    :usedForSync,
    :color,
    :scheduleTransp,
    :lastUpdate
  ]

  @type t :: %__MODULE__{
          :description =>
            OpenXchangeClient.Model.FolderDataComOpenexchangeCalendarExtendedPropertiesDescription.t()
            | nil,
          :usedForSync =>
            OpenXchangeClient.Model.FolderDataComOpenexchangeCalendarExtendedPropertiesUsedForSync.t()
            | nil,
          :color =>
            OpenXchangeClient.Model.FolderDataComOpenexchangeCalendarExtendedPropertiesColor.t()
            | nil,
          :scheduleTransp =>
            OpenXchangeClient.Model.FolderDataComOpenexchangeCalendarExtendedPropertiesScheduleTransp.t()
            | nil,
          :lastUpdate =>
            OpenXchangeClient.Model.FolderDataComOpenexchangeCalendarExtendedPropertiesLastUpdate.t()
            | nil
        }
end

defimpl Poison.Decoder,
  for: OpenXchangeClient.Model.FolderDataComOpenexchangeCalendarExtendedProperties do
  import OpenXchangeClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :description,
      :struct,
      OpenXchangeClient.Model.FolderDataComOpenexchangeCalendarExtendedPropertiesDescription,
      options
    )
    |> deserialize(
      :usedForSync,
      :struct,
      OpenXchangeClient.Model.FolderDataComOpenexchangeCalendarExtendedPropertiesUsedForSync,
      options
    )
    |> deserialize(
      :color,
      :struct,
      OpenXchangeClient.Model.FolderDataComOpenexchangeCalendarExtendedPropertiesColor,
      options
    )
    |> deserialize(
      :scheduleTransp,
      :struct,
      OpenXchangeClient.Model.FolderDataComOpenexchangeCalendarExtendedPropertiesScheduleTransp,
      options
    )
    |> deserialize(
      :lastUpdate,
      :struct,
      OpenXchangeClient.Model.FolderDataComOpenexchangeCalendarExtendedPropertiesLastUpdate,
      options
    )
  end
end