# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.ChronosAttachment do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"filename",
    :"fmtType",
    :"size",
    :"created",
    :"managedId",
    :"uri"
  ]

  @type t :: %__MODULE__{
    :"filename" => String.t | nil,
    :"fmtType" => String.t | nil,
    :"size" => integer() | nil,
    :"created" => integer() | nil,
    :"managedId" => integer() | nil,
    :"uri" => String.t | nil
  }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.ChronosAttachment do
  def decode(value, _options) do
    value
  end
end

