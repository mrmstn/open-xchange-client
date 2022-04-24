# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.CalendarUser do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"uri",
    :"cn",
    :"email",
    :"entity"
  ]

  @type t :: %__MODULE__{
    :"uri" => String.t | nil,
    :"cn" => String.t | nil,
    :"email" => String.t | nil,
    :"entity" => integer() | nil
  }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.CalendarUser do
  def decode(value, _options) do
    value
  end
end

