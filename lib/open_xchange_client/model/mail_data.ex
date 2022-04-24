# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.MailData do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :nested_msgs,
    :security_info,
    :security,
    :authenticity,
    :color_label,
    :id,
    :folder_id,
    :attachment,
    :from,
    :to,
    :cc,
    :bcc,
    :subject,
    :size,
    :sent_date,
    :received_date,
    :flags,
    :level,
    :disp_notification_to,
    :priority,
    :msg_ref,
    :flag_seen,
    :account_name,
    :account_id,
    :user,
    :headers,
    :attachments,
    :truncated,
    :source,
    :cid,
    :original_id,
    :original_folder_id,
    :content_type,
    :text_preview
  ]

  @type t :: %__MODULE__{
          :nested_msgs => [OpenXchangeClient.Model.NestedMailData.t()] | nil,
          :security_info => [OpenXchangeClient.Model.GuardSecurityInfo.t()] | nil,
          :security => [OpenXchangeClient.Model.GuardSecurityResult.t()] | nil,
          :authenticity => OpenXchangeClient.Model.AuthenticationResult.t() | nil,
          :color_label => integer() | nil,
          :id => String.t() | nil,
          :folder_id => String.t() | nil,
          :attachment => boolean() | nil,
          :from => [[String.t()]] | nil,
          :to => [[String.t()]] | nil,
          :cc => [[String.t()]] | nil,
          :bcc => [[String.t()]] | nil,
          :subject => String.t() | nil,
          :size => integer() | nil,
          :sent_date => integer() | nil,
          :received_date => integer() | nil,
          :flags => integer() | nil,
          :level => integer() | nil,
          :disp_notification_to => String.t() | nil,
          :priority => integer() | nil,
          :msg_ref => String.t() | nil,
          :flag_seen => String.t() | nil,
          :account_name => String.t() | nil,
          :account_id => integer() | nil,
          :user => [String.t()] | nil,
          :headers => map() | nil,
          :attachments => [OpenXchangeClient.Model.MailAttachment.t()] | nil,
          :truncated => boolean() | nil,
          :source => String.t() | nil,
          :cid => String.t() | nil,
          :original_id => String.t() | nil,
          :original_folder_id => String.t() | nil,
          :content_type => String.t() | nil,
          :text_preview => String.t() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.MailData do
  import OpenXchangeClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:nested_msgs, :list, OpenXchangeClient.Model.NestedMailData, options)
    |> deserialize(:security_info, :list, OpenXchangeClient.Model.GuardSecurityInfo, options)
    |> deserialize(:security, :list, OpenXchangeClient.Model.GuardSecurityResult, options)
    |> deserialize(:authenticity, :struct, OpenXchangeClient.Model.AuthenticationResult, options)
    |> deserialize(:attachments, :list, OpenXchangeClient.Model.MailAttachment, options)
  end
end
