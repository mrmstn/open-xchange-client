# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.MultifactorStartRegistrationResponseDataChallenge do
  @moduledoc """
  A challenge required to be solved for registering a new device
  """

  @derive [Poison.Encoder]
  defstruct [
    :sharedSecret,
    :base64Image,
    :url,
    :requestId,
    :registerRequests
  ]

  @type t :: %__MODULE__{
          :sharedSecret => String.t() | nil,
          :base64Image => String.t() | nil,
          :url => String.t() | nil,
          :requestId => String.t() | nil,
          :registerRequests =>
            [
              OpenXchangeClient.Model.MultifactorStartRegistrationResponseDataChallengeRegisterRequests.t()
            ]
            | nil
        }
end

defimpl Poison.Decoder,
  for: OpenXchangeClient.Model.MultifactorStartRegistrationResponseDataChallenge do
  import OpenXchangeClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :registerRequests,
      :list,
      OpenXchangeClient.Model.MultifactorStartRegistrationResponseDataChallengeRegisterRequests,
      options
    )
  end
end
