# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.FolderCheckLimitsResponseErrorData do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"error",
    :"error_params",
    :"error_id",
    :"error_desc",
    :"error_stack",
    :"code",
    :"categories",
    :"category",
    :"timestamp"
  ]

  @type t :: %__MODULE__{
    :"error" => String.t | nil,
    :"error_params" => [String.t] | nil,
    :"error_id" => String.t | nil,
    :"error_desc" => String.t | nil,
    :"error_stack" => [String.t] | nil,
    :"code" => String.t | nil,
    :"categories" => String.t | nil,
    :"category" => integer() | nil,
    :"timestamp" => integer() | nil
  }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.FolderCheckLimitsResponseErrorData do
  def decode(value, _options) do
    value
  end
end

