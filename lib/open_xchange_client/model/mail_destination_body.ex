# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.MailDestinationBody do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"folder_id"
  ]

  @type t :: %__MODULE__{
    :"folder_id" => String.t | nil
  }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.MailDestinationBody do
  def decode(value, _options) do
    value
  end
end

