# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.AppointmentSearchBody do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"pattern",
    :"startletter"
  ]

  @type t :: %__MODULE__{
    :"pattern" => String.t | nil,
    :"startletter" => String.t | nil
  }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.AppointmentSearchBody do
  def decode(value, _options) do
    value
  end
end

