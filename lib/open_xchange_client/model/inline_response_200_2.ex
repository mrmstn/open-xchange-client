# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.InlineResponse2002 do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"success"
  ]

  @type t :: %__MODULE__{
    :"success" => boolean() | nil
  }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.InlineResponse2002 do
  def decode(value, _options) do
    value
  end
end

