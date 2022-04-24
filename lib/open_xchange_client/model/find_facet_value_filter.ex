# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.FindFacetValueFilter do
  @moduledoc """
  The filter to refine the search.
  """

  @derive [Poison.Encoder]
  defstruct [
    :fields,
    :queries
  ]

  @type t :: %__MODULE__{
          :fields => [String.t()] | nil,
          :queries => [String.t()] | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.FindFacetValueFilter do
  def decode(value, _options) do
    value
  end
end