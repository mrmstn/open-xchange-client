# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.EventId do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"folder",
    :"id",
    :"recurrenceId",
    :"recurrenceRange"
  ]

  @type t :: %__MODULE__{
    :"folder" => String.t,
    :"id" => String.t,
    :"recurrenceId" => String.t | nil,
    :"recurrenceRange" => String.t | nil
  }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.EventId do
  def decode(value, _options) do
    value
  end
end

