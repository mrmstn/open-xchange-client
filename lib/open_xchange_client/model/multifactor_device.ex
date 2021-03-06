# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.MultifactorDevice do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :name,
    :backup,
    :enabled,
    :providerName,
    :parameters
  ]

  @type t :: %__MODULE__{
          :id => String.t() | nil,
          :name => String.t() | nil,
          :backup => boolean() | nil,
          :enabled => boolean() | nil,
          :providerName => String.t() | nil,
          :parameters => OpenXchangeClient.Model.MultifactorDeviceParameters.t() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.MultifactorDevice do
  import OpenXchangeClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :parameters,
      :struct,
      OpenXchangeClient.Model.MultifactorDeviceParameters,
      options
    )
  end
end
