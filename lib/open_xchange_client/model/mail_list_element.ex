# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.MailListElement do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"folder"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"folder" => String.t
  }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.MailListElement do
  def decode(value, _options) do
    value
  end
end

