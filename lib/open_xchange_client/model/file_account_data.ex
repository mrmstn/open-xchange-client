# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.FileAccountData do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :filestorageService,
    :qualifiedId,
    :displayName,
    :rootFolder,
    :isDefaultAccount,
    :capabilities,
    :configuration
  ]

  @type t :: %__MODULE__{
          :id => String.t() | nil,
          :filestorageService => String.t() | nil,
          :qualifiedId => String.t() | nil,
          :displayName => String.t() | nil,
          :rootFolder => String.t() | nil,
          :isDefaultAccount => boolean() | nil,
          :capabilities => [String.t()] | nil,
          :configuration => map() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.FileAccountData do
  def decode(value, _options) do
    value
  end
end