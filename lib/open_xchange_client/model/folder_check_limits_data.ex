# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.FolderCheckLimitsData do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :files
  ]

  @type t :: %__MODULE__{
          :files => [OpenXchangeClient.Model.FolderCheckLimitsFiles.t()] | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.FolderCheckLimitsData do
  import OpenXchangeClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:files, :list, OpenXchangeClient.Model.FolderCheckLimitsFiles, options)
  end
end