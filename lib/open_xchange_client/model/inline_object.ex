# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.InlineObject do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"folderId"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t | nil,
    :"folderId" => String.t | nil
  }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.InlineObject do
  def decode(value, _options) do
    value
  end
end

