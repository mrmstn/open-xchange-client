# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.MultifactorDeviceParameters do
  @moduledoc """
  The provider specific parameters required for starting a new registration.
  """

  @derive [Poison.Encoder]
  defstruct [
    :phoneNumber
  ]

  @type t :: %__MODULE__{
          :phoneNumber => String.t() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.MultifactorDeviceParameters do
  def decode(value, _options) do
    value
  end
end
