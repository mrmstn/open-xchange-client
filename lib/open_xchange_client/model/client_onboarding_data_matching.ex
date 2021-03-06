# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.ClientOnboardingDataMatching do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :enabled,
    :actions
  ]

  @type t :: %__MODULE__{
          :id => String.t() | nil,
          :enabled => boolean() | nil,
          :actions => [String.t()] | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.ClientOnboardingDataMatching do
  def decode(value, _options) do
    value
  end
end
