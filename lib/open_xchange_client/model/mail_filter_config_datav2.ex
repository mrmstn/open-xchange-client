# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.MailFilterConfigDatav2 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :tests,
    :actioncmds,
    :options
  ]

  @type t :: %__MODULE__{
          :tests => [OpenXchangeClient.Model.MailFilterConfigTestv2.t()] | nil,
          :actioncmds => [OpenXchangeClient.Model.MailFilterConfigAction.t()] | nil,
          :options => OpenXchangeClient.Model.Options.t() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.MailFilterConfigDatav2 do
  import OpenXchangeClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:tests, :list, OpenXchangeClient.Model.MailFilterConfigTestv2, options)
    |> deserialize(:actioncmds, :list, OpenXchangeClient.Model.MailFilterConfigAction, options)
    |> deserialize(:options, :struct, OpenXchangeClient.Model.Options, options)
  end
end
