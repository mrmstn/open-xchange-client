# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.GroupData do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"display_name",
    :"name",
    :"members",
    :"last_modified_utc"
  ]

  @type t :: %__MODULE__{
    :"id" => integer() | nil,
    :"display_name" => String.t | nil,
    :"name" => String.t | nil,
    :"members" => [integer()] | nil,
    :"last_modified_utc" => integer() | nil
  }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.GroupData do
  def decode(value, _options) do
    value
  end
end

