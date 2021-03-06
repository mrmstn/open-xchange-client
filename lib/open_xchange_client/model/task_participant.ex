# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.TaskParticipant do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :type,
    :mail
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :type => integer() | nil,
          :mail => String.t() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.TaskParticipant do
  def decode(value, _options) do
    value
  end
end
