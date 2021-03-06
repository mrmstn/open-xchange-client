# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Api.Conversion do
  @moduledoc """
  API calls for all endpoints tagged `Conversion`.
  """

  alias OpenXchangeClient.Connection
  import OpenXchangeClient.RequestBuilder

  @doc """
  Converts data from source using a specific data handler.
  #### Saving an iCal email attachment If an iCal file is attached to an email, its content can be saved as appointments and tasks into given calendar and task folder. If the fields \"com.openexchange.groupware.calendar.confirmstatus\" and \"com.openexchange.groupware.calendar.confirmmessage\" are set, the data handler inserts the appointment with the given status for the user, if the appointment does not exist. If it is already existing, the handler just updates the participant status. ```json {   \"datasource\": {     \"identifier\":\"com.openexchange.mail.ical\",     \"args\":     [       {\"com.openexchange.mail.conversion.fullname\":\"<folder-fullname>\"},       {\"com.openexchange.mail.conversion.mailid\":\"<mail-id>\"},       {\"com.openexchange.mail.conversion.sequenceid\":\"<attachment-sequence-id>\"}     ]   },   \"datahandler\": {     \"identifier\":\"com.openexchange.ical\",     \"args\":     [       {\"com.openexchange.groupware.calendar.folder\":\"<calendar-folder-id>\"},       {\"com.openexchange.groupware.task.folder\":\"<task-folder-id>\"},       {\"com.openexchange.groupware.calendar.confirmstatus\":\"<status>\"},       {\"com.openexchange.groupware.calendar.confirmmessage\":\"<message>\"}     ]   } } ``` The response is a JSON array of JSON objects each providing folder and object ID of added appointments/tasks, e.g. `[{\"folder_id\":2567,\"id\":7689}, ...]`. #### Converting an iCal email attachment into JSON objects If an iCal file is attached to an email, its content can be converted to JSON appointments and tasks. ```json {   \"datasource\": {     \"identifier\":\"com.openexchange.mail.ical\",     \"args\":     [       {\"com.openexchange.mail.conversion.fullname\":\"<folder-fullname>\"},       {\"com.openexchange.mail.conversion.mailid\":\"<mail-id>\"},       {\"com.openexchange.mail.conversion.sequenceid\":\"<attachment-sequence-id>\"}     ]   },   \"datahandler\": {     \"identifier\":\"com.openexchange.ical.json\",     \"args\":     [       {\"com.openexchange.groupware.calendar.timezone\":\"<timezone-id>\"},       {\"com.openexchange.groupware.calendar.recurrencePosition\":\"<recurrence-position>\"},       {\"com.openexchange.groupware.calendar.searchobject\":\"<true|false>\"}     ]   } } ``` The response is a JSON array of JSON objects for each appointment/task. See the TaskData model of the [getTask](#tasks/getTask) request and the AppointmentData model of the [getAttachment](#attachments/getAttachment) request for more informations. #### Saving a vCard email attachment If a vCard file is attached to an email, its content can be saved as contacts into given contact folder. ```json {   \"datasource\": {     \"identifier\":\"com.openexchange.mail.vcard\",     \"args\":     [       {\"com.openexchange.mail.conversion.fullname\":\"<folder-fullname>\"},       {\"com.openexchange.mail.conversion.mailid\":\"<mail-id>\"},       {\"com.openexchange.mail.conversion.sequenceid\":\"<attachment-sequence-id>\"}     ]   },   \"datahandler\": {     \"identifier\":\"com.openexchange.contact\",     \"args\":     [       {\"com.openexchange.groupware.contact.folder\":\"<contact-folder-id>\"}     ]   } } ``` The response is a JSON array of JSON objects each providing folder and object ID of added contacts, e.g. `[{\"folder_id\":2567,\"id\":7689}, ...]`. #### Contact(s) attached to a new email as a vCard file Obtain vCard data from spacified contact object(s). ```json {   \"datasource\": {     \"identifier\":\"com.openexchange.contact\",     \"args\":     [       {\"folder\":\"<folder-id1>\",\"id\":\"<id1>\"},       ...,       \"folder\":\"<folder-idn>\",\"id\":\"<idn>\"     ]   },   \"datahandler\": {     \"identifier\":\"com.openexchange.mail.vcard\",     \"args\": []   } } ``` The response is a JSON object containing mail data. See the MailData model of the [getMail](#mail/getMail) request. `[{\"folder_id\":2567,\"id\":7689}, ...]`.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - body (ConversionBody): A JSON object the data source object and the data handler object.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, OpenXchangeClient.Model.ConversionResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec convert_data(
          Tesla.Env.client(),
          String.t(),
          OpenXchangeClient.Model.ConversionBody.t(),
          keyword()
        ) :: {:ok, OpenXchangeClient.Model.ConversionResponse.t()} | {:error, Tesla.Env.t()}
  def convert_data(connection, session, body, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/conversion?action=convert")
    |> add_param(:query, :session, session)
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.ConversionResponse{}}
    ])
  end
end
