# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.MailCategoriesTrainBody do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :from
  ]

  @type t :: %__MODULE__{
          :from => [String.t()] | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.MailCategoriesTrainBody do
  def decode(value, _options) do
    value
  end
end
