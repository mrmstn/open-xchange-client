# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.MailCategoriesMoveBody do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :folder_id
  ]

  @type t :: %__MODULE__{
          :id => String.t() | nil,
          :folder_id => String.t() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.MailCategoriesMoveBody do
  def decode(value, _options) do
    value
  end
end
