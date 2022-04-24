# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.MailFilterRule do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :position,
    :rulename,
    :active,
    :flags,
    :test,
    :actioncmds,
    :text,
    :errormsg
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :position => integer() | nil,
          :rulename => String.t() | nil,
          :active => boolean() | nil,
          :flags => [String.t()] | nil,
          :test => OpenXchangeClient.Model.MailFilterTest.t() | nil,
          :actioncmds => [OpenXchangeClient.Model.MailFilterAction.t()] | nil,
          :text => String.t() | nil,
          :errormsg => String.t() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.MailFilterRule do
  import OpenXchangeClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:test, :struct, OpenXchangeClient.Model.MailFilterTest, options)
    |> deserialize(:actioncmds, :list, OpenXchangeClient.Model.MailFilterAction, options)
  end
end
