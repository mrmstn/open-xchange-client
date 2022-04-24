# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.Contact do
  @moduledoc """
  In case the parameter 'extendedEntities' is set to 'true' and the entity is an internal user  then this field contains some of the contact data of this user. 
  """

  @derive [Poison.Encoder]
  defstruct [
    :first_name,
    :last_name,
    :title,
    :display_name,
    :image1_url
  ]

  @type t :: %__MODULE__{
          :first_name => String.t() | nil,
          :last_name => String.t() | nil,
          :title => String.t() | nil,
          :display_name => String.t() | nil,
          :image1_url => String.t() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.Contact do
  def decode(value, _options) do
    value
  end
end
