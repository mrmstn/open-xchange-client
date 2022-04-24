# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.ResolveShareReferenceResponseDataFiles do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :object_permissions,
    :shareable,
    :title,
    :url,
    :filename,
    :file_mimetype,
    :file_size,
    :version,
    :description,
    :locked_until,
    :file_md5sum,
    :version_comment,
    :current_version,
    :number_of_versions,
    :sequence_number,
    :capture_date,
    :geolocation,
    :width,
    :height,
    :camera_iso_speed,
    :camera_aperture,
    :camera_exposure_time,
    :camera_focal_length,
    :camera_model,
    :media_meta,
    :media_status,
    :media_date,
    :"com.openexchange.share.extendedObjectPermissions",
    :"com.openexchange.realtime.resourceID",
    :"com.openexchange.file.storage.mail.mailMetadata",
    :id,
    :created_by,
    :modified_by,
    :creation_date,
    :last_modified,
    :folder_id,
    :categories,
    :private_flag,
    :color_label,
    :number_of_attachments,
    :lastModifiedOfNewestAttachmentUTC
  ]

  @type t :: %__MODULE__{
          :object_permissions => [OpenXchangeClient.Model.InfoItemPermission.t()] | nil,
          :shareable => boolean() | nil,
          :title => String.t() | nil,
          :url => String.t() | nil,
          :filename => String.t() | nil,
          :file_mimetype => String.t() | nil,
          :file_size => integer() | nil,
          :version => String.t() | nil,
          :description => String.t() | nil,
          :locked_until => integer() | nil,
          :file_md5sum => String.t() | nil,
          :version_comment => String.t() | nil,
          :current_version => boolean() | nil,
          :number_of_versions => integer() | nil,
          :sequence_number => integer() | nil,
          :capture_date => integer() | nil,
          :geolocation => String.t() | nil,
          :width => integer() | nil,
          :height => integer() | nil,
          :camera_iso_speed => integer() | nil,
          :camera_aperture => String.t() | nil,
          :camera_exposure_time => String.t() | nil,
          :camera_focal_length => String.t() | nil,
          :camera_model => String.t() | nil,
          :media_meta => map() | nil,
          :media_status => String.t() | nil,
          :media_date => integer() | nil,
          :"com.openexchange.share.extendedObjectPermissions" =>
            [OpenXchangeClient.Model.InfoItemExtendedPermission.t()] | nil,
          :"com.openexchange.realtime.resourceID" => String.t() | nil,
          :"com.openexchange.file.storage.mail.mailMetadata" => map() | nil,
          :id => String.t() | nil,
          :created_by => String.t() | nil,
          :modified_by => String.t() | nil,
          :creation_date => integer() | nil,
          :last_modified => integer() | nil,
          :folder_id => String.t(),
          :categories => String.t() | nil,
          :private_flag => boolean() | nil,
          :color_label => integer() | nil,
          :number_of_attachments => integer() | nil,
          :lastModifiedOfNewestAttachmentUTC => integer() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.ResolveShareReferenceResponseDataFiles do
  import OpenXchangeClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :object_permissions,
      :list,
      OpenXchangeClient.Model.InfoItemPermission,
      options
    )
    |> deserialize(
      :"com.openexchange.share.extendedObjectPermissions",
      :list,
      OpenXchangeClient.Model.InfoItemExtendedPermission,
      options
    )
  end
end
