# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.SnippetData do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :accountid,
    :createdby,
    :displayname,
    :type,
    :content,
    :module,
    :shared,
    :misc,
    :props,
    :files
  ]

  @type t :: %__MODULE__{
          :id => String.t() | nil,
          :accountid => integer() | nil,
          :createdby => integer() | nil,
          :displayname => String.t() | nil,
          :type => String.t() | nil,
          :content => String.t() | nil,
          :module => String.t() | nil,
          :shared => boolean() | nil,
          :misc => map() | nil,
          :props => map() | nil,
          :files => [OpenXchangeClient.Model.SnippetAttachment.t()] | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.SnippetData do
  import OpenXchangeClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:files, :list, OpenXchangeClient.Model.SnippetAttachment, options)
  end
end
