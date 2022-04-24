# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.ShareLinkSendBody do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :recipients,
    :message,
    :module,
    :folder,
    :item
  ]

  @type t :: %__MODULE__{
          :recipients => [[String.t()]] | nil,
          :message => String.t() | nil,
          :module => String.t() | nil,
          :folder => String.t() | nil,
          :item => String.t() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.ShareLinkSendBody do
  def decode(value, _options) do
    value
  end
end
