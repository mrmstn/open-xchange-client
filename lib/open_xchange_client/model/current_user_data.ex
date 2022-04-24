# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.CurrentUserData do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :context_id,
    :user_id,
    :context_admin,
    :login_name,
    :display_name
  ]

  @type t :: %__MODULE__{
          :context_id => integer() | nil,
          :user_id => integer() | nil,
          :context_admin => integer() | nil,
          :login_name => String.t() | nil,
          :display_name => String.t() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.CurrentUserData do
  def decode(value, _options) do
    value
  end
end
