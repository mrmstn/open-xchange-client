# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.FolderRestoreResponse do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"folder",
    :"path"
  ]

  @type t :: %__MODULE__{
    :"folder" => String.t | nil,
    :"path" => [OpenXchangeClient.Model.FolderPathData.t] | nil
  }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.FolderRestoreResponse do
  import OpenXchangeClient.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"path", :list, OpenXchangeClient.Model.FolderPathData, options)
  end
end

