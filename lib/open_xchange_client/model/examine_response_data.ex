# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.ExamineResponseData do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"validity",
    :"total",
    :"unread",
    :"next"
  ]

  @type t :: %__MODULE__{
    :"validity" => String.t | nil,
    :"total" => integer() | nil,
    :"unread" => integer() | nil,
    :"next" => String.t | nil
  }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.ExamineResponseData do
  def decode(value, _options) do
    value
  end
end

