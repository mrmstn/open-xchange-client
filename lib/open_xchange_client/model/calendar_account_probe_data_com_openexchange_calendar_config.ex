# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.CalendarAccountProbeDataComOpenexchangeCalendarConfig do
  @moduledoc """
  Holds arbitrary, provider-specific configuration data for calendar accounts.
  """

  @derive [Poison.Encoder]
  defstruct [
    :uri,
    :refreshInterval,
    :login,
    :password
  ]

  @type t :: %__MODULE__{
          :uri => String.t() | nil,
          :refreshInterval => integer() | nil,
          :login => String.t() | nil,
          :password => String.t() | nil
        }
end

defimpl Poison.Decoder,
  for: OpenXchangeClient.Model.CalendarAccountProbeDataComOpenexchangeCalendarConfig do
  def decode(value, _options) do
    value
  end
end
