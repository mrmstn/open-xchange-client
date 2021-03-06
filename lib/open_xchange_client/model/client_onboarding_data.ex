# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.ClientOnboardingData do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :platforms,
    :devices,
    :scenarios,
    :actions,
    :matching
  ]

  @type t :: %__MODULE__{
          :platforms => [OpenXchangeClient.Model.ClientOnboardingDataPlatforms.t()] | nil,
          :devices => [OpenXchangeClient.Model.ClientOnboardingDataDevices.t()] | nil,
          :scenarios => [OpenXchangeClient.Model.ClientOnboardingDataPlatforms.t()] | nil,
          :actions => [OpenXchangeClient.Model.ClientOnboardingDataActions.t()] | nil,
          :matching => [OpenXchangeClient.Model.ClientOnboardingDataMatching.t()] | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.ClientOnboardingData do
  import OpenXchangeClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :platforms,
      :list,
      OpenXchangeClient.Model.ClientOnboardingDataPlatforms,
      options
    )
    |> deserialize(:devices, :list, OpenXchangeClient.Model.ClientOnboardingDataDevices, options)
    |> deserialize(
      :scenarios,
      :list,
      OpenXchangeClient.Model.ClientOnboardingDataPlatforms,
      options
    )
    |> deserialize(:actions, :list, OpenXchangeClient.Model.ClientOnboardingDataActions, options)
    |> deserialize(
      :matching,
      :list,
      OpenXchangeClient.Model.ClientOnboardingDataMatching,
      options
    )
  end
end
