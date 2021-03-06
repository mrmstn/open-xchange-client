# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.MailFilterConfigData do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :tests,
    :actioncommands,
    :capabilities
  ]

  @type t :: %__MODULE__{
          :tests => [OpenXchangeClient.Model.MailFilterConfigTest.t()] | nil,
          :actioncommands => [String.t()] | nil,
          :capabilities => [String.t()] | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.MailFilterConfigData do
  import OpenXchangeClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:tests, :list, OpenXchangeClient.Model.MailFilterConfigTest, options)
  end
end
