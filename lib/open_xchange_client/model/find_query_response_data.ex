# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.FindQueryResponseData do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :num_found,
    :start,
    :size,
    :results
  ]

  @type t :: %__MODULE__{
          :num_found => integer() | nil,
          :start => integer() | nil,
          :size => integer() | nil,
          :results => map() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.FindQueryResponseData do
  def decode(value, _options) do
    value
  end
end