# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.Association do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :module,
    :folder,
    :scopes,
    :name,
    :id
  ]

  @type t :: %__MODULE__{
          :module => String.t() | nil,
          :folder => String.t() | nil,
          :scopes => [String.t()] | nil,
          :name => String.t() | nil,
          :id => String.t() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.Association do
  def decode(value, _options) do
    value
  end
end
