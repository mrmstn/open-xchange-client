# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.ReminderData do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :target_id,
    :folder,
    :alarm,
    :module,
    :server_time,
    :user_id,
    :last_modified,
    :recurrence_position
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :target_id => integer() | nil,
          :folder => integer() | nil,
          :alarm => integer() | nil,
          :module => integer() | nil,
          :server_time => integer() | nil,
          :user_id => integer() | nil,
          :last_modified => integer() | nil,
          :recurrence_position => integer() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.ReminderData do
  def decode(value, _options) do
    value
  end
end
