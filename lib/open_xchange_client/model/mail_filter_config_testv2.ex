# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.MailFilterConfigTestv2 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :comparisons,
    :headers,
    :parts
  ]

  @type t :: %__MODULE__{
          :id => String.t() | nil,
          :comparisons => [String.t()] | nil,
          :headers => [String.t()] | nil,
          :parts => [String.t()] | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.MailFilterConfigTestv2 do
  def decode(value, _options) do
    value
  end
end
