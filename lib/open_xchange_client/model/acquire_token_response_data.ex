# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.AcquireTokenResponseData do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :token
  ]

  @type t :: %__MODULE__{
          :token => String.t() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.AcquireTokenResponseData do
  def decode(value, _options) do
    value
  end
end
