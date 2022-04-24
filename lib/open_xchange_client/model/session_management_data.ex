# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.SessionManagementData do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :sessionId,
    :ipAddress,
    :client,
    :ctxId,
    :userId,
    :loginTime,
    :lastActive,
    :location,
    :device
  ]

  @type t :: %__MODULE__{
          :sessionId => String.t() | nil,
          :ipAddress => String.t() | nil,
          :client => String.t() | nil,
          :ctxId => integer() | nil,
          :userId => integer() | nil,
          :loginTime => integer() | nil,
          :lastActive => integer() | nil,
          :location => String.t() | nil,
          :device => OpenXchangeClient.Model.DeviceInfo.t() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.SessionManagementData do
  import OpenXchangeClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:device, :struct, OpenXchangeClient.Model.DeviceInfo, options)
  end
end
