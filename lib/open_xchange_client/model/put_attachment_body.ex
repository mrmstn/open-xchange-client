# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.PutAttachmentBody do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :filename,
    :description
  ]

  @type t :: %__MODULE__{
          :filename => String.t() | nil,
          :description => String.t() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.PutAttachmentBody do
  def decode(value, _options) do
    value
  end
end
