# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.GetJobResponseData do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :job
  ]

  @type t :: %__MODULE__{
          :job => String.t() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.GetJobResponseData do
  def decode(value, _options) do
    value
  end
end