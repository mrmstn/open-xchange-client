# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.AppointmentData do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :recurrence_id,
    :recurrence_position,
    :recurrence_date_position,
    :change_exceptions,
    :delete_exceptions,
    :location,
    :shown_as,
    :timezone,
    :recurrence_start,
    :ignore_conflicts,
    :title,
    :start_date,
    :end_date,
    :note,
    :alarm,
    :recurrence_type,
    :days,
    :day_in_month,
    :month,
    :interval,
    :until,
    :notification,
    :participants,
    :users,
    :occurrences,
    :uid,
    :organizer,
    :sequence,
    :confirmations,
    :organizerId,
    :principal,
    :principalId,
    :full_time,
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
          :recurrence_id => integer() | nil,
          :recurrence_position => integer() | nil,
          :recurrence_date_position => integer() | nil,
          :change_exceptions => [integer()] | nil,
          :delete_exceptions => [integer()] | nil,
          :location => String.t() | nil,
          :shown_as => integer() | nil,
          :timezone => String.t() | nil,
          :recurrence_start => integer() | nil,
          :ignore_conflicts => boolean() | nil,
          :title => String.t() | nil,
          :start_date => integer() | nil,
          :end_date => integer() | nil,
          :note => String.t() | nil,
          :alarm => integer() | nil,
          :recurrence_type => integer() | nil,
          :days => integer() | nil,
          :day_in_month => integer() | nil,
          :month => integer() | nil,
          :interval => integer() | nil,
          :until => integer() | nil,
          :notification => boolean() | nil,
          :participants => [OpenXchangeClient.Model.TaskParticipant.t()] | nil,
          :users => [OpenXchangeClient.Model.TaskUser.t()] | nil,
          :occurrences => integer() | nil,
          :uid => String.t() | nil,
          :organizer => String.t() | nil,
          :sequence => integer() | nil,
          :confirmations => [OpenXchangeClient.Model.TaskConfirmation.t()] | nil,
          :organizerId => integer() | nil,
          :principal => String.t() | nil,
          :principalId => integer() | nil,
          :full_time => boolean() | nil,
          :id => String.t() | nil,
          :created_by => String.t() | nil,
          :modified_by => String.t() | nil,
          :creation_date => integer() | nil,
          :last_modified => integer() | nil,
          :folder_id => String.t() | nil,
          :categories => String.t() | nil,
          :private_flag => boolean() | nil,
          :color_label => integer() | nil,
          :number_of_attachments => integer() | nil,
          :lastModifiedOfNewestAttachmentUTC => integer() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.AppointmentData do
  import OpenXchangeClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:participants, :list, OpenXchangeClient.Model.TaskParticipant, options)
    |> deserialize(:users, :list, OpenXchangeClient.Model.TaskUser, options)
    |> deserialize(:confirmations, :list, OpenXchangeClient.Model.TaskConfirmation, options)
  end
end
