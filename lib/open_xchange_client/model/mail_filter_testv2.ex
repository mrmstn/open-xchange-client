# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.MailFilterTestv2 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :test,
    :id,
    :comparison,
    :addresspart,
    :headers,
    :header,
    :values,
    :size,
    :datepart,
    :datevalue,
    :zone,
    :extensionskey,
    :extensionsvalue
  ]

  @type t :: %__MODULE__{
          :test => OpenXchangeClient.Model.MailFilterNotTestv2.t() | nil,
          :id => String.t() | nil,
          :comparison => String.t() | nil,
          :addresspart => String.t() | nil,
          :headers => [String.t()] | nil,
          :header => String.t() | nil,
          :values => [String.t()] | nil,
          :size => integer() | nil,
          :datepart => String.t() | nil,
          :datevalue => [integer()] | nil,
          :zone => String.t() | nil,
          :extensionskey => String.t() | nil,
          :extensionsvalue => String.t() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.MailFilterTestv2 do
  import OpenXchangeClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:test, :struct, OpenXchangeClient.Model.MailFilterNotTestv2, options)
  end
end
