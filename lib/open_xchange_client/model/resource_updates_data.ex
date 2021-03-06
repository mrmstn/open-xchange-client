# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.ResourceUpdatesData do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :new,
    :modified,
    :deleted
  ]

  @type t :: %__MODULE__{
          :new => [OpenXchangeClient.Model.ResourceData.t()] | nil,
          :modified => [OpenXchangeClient.Model.ResourceData.t()] | nil,
          :deleted => [OpenXchangeClient.Model.ResourceData.t()] | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.ResourceUpdatesData do
  import OpenXchangeClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:new, :list, OpenXchangeClient.Model.ResourceData, options)
    |> deserialize(:modified, :list, OpenXchangeClient.Model.ResourceData, options)
    |> deserialize(:deleted, :list, OpenXchangeClient.Model.ResourceData, options)
  end
end
