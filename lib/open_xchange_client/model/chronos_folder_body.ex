# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.ChronosFolderBody do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :folders
  ]

  @type t :: %__MODULE__{
          :folders => [String.t()] | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.ChronosFolderBody do
  def decode(value, _options) do
    value
  end
end