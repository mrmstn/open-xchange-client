# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.AppointmentDeletionsElement do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"folder",
    :"pos"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"folder" => String.t,
    :"pos" => integer() | nil
  }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.AppointmentDeletionsElement do
  def decode(value, _options) do
    value
  end
end

