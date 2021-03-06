# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.MailFilterAction do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :to,
    :into,
    :text,
    :days,
    :addresses,
    :from,
    :subject,
    :flags,
    :message,
    :method,
    :keys,
    :copy
  ]

  @type t :: %__MODULE__{
          :id => String.t() | nil,
          :to => String.t() | nil,
          :into => String.t() | nil,
          :text => String.t() | nil,
          :days => String.t() | nil,
          :addresses => [String.t()] | nil,
          :from => map() | nil,
          :subject => String.t() | nil,
          :flags => [String.t()] | nil,
          :message => String.t() | nil,
          :method => String.t() | nil,
          :keys => [String.t()] | nil,
          :copy => boolean() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.MailFilterAction do
  def decode(value, _options) do
    value
  end
end
