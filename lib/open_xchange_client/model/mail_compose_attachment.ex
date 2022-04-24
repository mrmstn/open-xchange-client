# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.MailComposeAttachment do
  @moduledoc """
  An attachment object.
  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :name,
    :size,
    :mimeType,
    :cid,
    :contentDisposition,
    :origin
  ]

  @type t :: %__MODULE__{
          :id => String.t() | nil,
          :name => String.t() | nil,
          :size => integer() | nil,
          :mimeType => String.t() | nil,
          :cid => String.t() | nil,
          :contentDisposition => String.t() | nil,
          :origin => String.t() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.MailComposeAttachment do
  def decode(value, _options) do
    value
  end
end
