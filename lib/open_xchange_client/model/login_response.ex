# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.LoginResponse do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :session,
    :user,
    :user_id,
    :context_id,
    :locale,
    :rampup,
    :error,
    :error_params,
    :error_id,
    :error_desc,
    :error_stack,
    :code,
    :categories,
    :category,
    :timestamp
  ]

  @type t :: %__MODULE__{
          :session => String.t() | nil,
          :user => String.t() | nil,
          :user_id => integer() | nil,
          :context_id => integer() | nil,
          :locale => String.t() | nil,
          :rampup => map() | nil,
          :error => String.t() | nil,
          :error_params => [String.t()] | nil,
          :error_id => String.t() | nil,
          :error_desc => String.t() | nil,
          :error_stack => [String.t()] | nil,
          :code => String.t() | nil,
          :categories => String.t() | nil,
          :category => integer() | nil,
          :timestamp => integer() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.LoginResponse do
  def decode(value, _options) do
    value
  end
end
