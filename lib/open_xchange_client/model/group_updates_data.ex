# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.GroupUpdatesData do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :new,
    :modified,
    :deleted
  ]

  @type t :: %__MODULE__{
          :new => [OpenXchangeClient.Model.GroupData.t()] | nil,
          :modified => [OpenXchangeClient.Model.GroupData.t()] | nil,
          :deleted => [OpenXchangeClient.Model.GroupData.t()] | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.GroupUpdatesData do
  import OpenXchangeClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:new, :list, OpenXchangeClient.Model.GroupData, options)
    |> deserialize(:modified, :list, OpenXchangeClient.Model.GroupData, options)
    |> deserialize(:deleted, :list, OpenXchangeClient.Model.GroupData, options)
  end
end