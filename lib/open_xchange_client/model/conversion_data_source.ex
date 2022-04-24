# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.ConversionDataSource do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :"com.openexchange.mail.conversion.fullname",
    :"com.openexchange.mail.conversion.mailid",
    :"com.openexchange.mail.conversion.sequenceid"
  ]

  @type t :: %__MODULE__{
          :"com.openexchange.mail.conversion.fullname" => String.t() | nil,
          :"com.openexchange.mail.conversion.mailid" => String.t() | nil,
          :"com.openexchange.mail.conversion.sequenceid" => String.t() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.ConversionDataSource do
  def decode(value, _options) do
    value
  end
end
