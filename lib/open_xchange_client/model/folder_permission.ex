# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.FolderPermission do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"bits",
    :"rights",
    :"entity",
    :"group",
    :"type",
    :"password",
    :"email_address",
    :"display_name",
    :"contact_id",
    :"contact_folder",
    :"expiry_date"
  ]

  @type t :: %__MODULE__{
    :"bits" => integer() | nil,
    :"rights" => String.t | nil,
    :"entity" => integer() | nil,
    :"group" => boolean() | nil,
    :"type" => String.t | nil,
    :"password" => String.t | nil,
    :"email_address" => String.t | nil,
    :"display_name" => String.t | nil,
    :"contact_id" => String.t | nil,
    :"contact_folder" => String.t | nil,
    :"expiry_date" => integer() | nil
  }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.FolderPermission do
  def decode(value, _options) do
    value
  end
end

