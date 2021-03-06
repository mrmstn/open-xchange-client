# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Api.Import do
  @moduledoc """
  API calls for all endpoints tagged `Import`.
  """

  alias OpenXchangeClient.Connection
  import OpenXchangeClient.RequestBuilder

  @doc """
  Imports contact data from CSV file.
  #### Example CSV ``` \"Given name\",\"Sur name\" \"Günther\",\"Mustermann\" \"Hildegard\",\"Musterfrau\" ``` The delimiter may be any CSV-valid character (e.g. \",\" or \";\"). The first line must contain the column titles that are related to the corresponding fields of the ContactData model (see [getContact](#contacts/getContact) request). See [Detailed contact data](#detailed-contact-data) for a mapping of fields to CSV column titles.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - folder (String.t): Object ID of the folder into which the data should be imported. This must be a contact folder.
  - file (String.t): The CSV file containing the contact data. The column titles are the ones described in [Detailed contact data](#detailed-contact-data).
  - opts (KeywordList): [optional] Optional parameters
    - :charset (String.t): A fixed character encoding to use when parsing the uploaded file, overriding the built-in defaults, following the conventions documented in [RFC 2278](http://tools.ietf.org/html/rfc2278).
  ## Returns

  {:ok, String.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec import_csv(Tesla.Env.client(), String.t(), String.t(), String.t(), keyword()) ::
          {:ok, String.t()} | {:error, Tesla.Env.t()}
  def import_csv(connection, session, folder, file, opts \\ []) do
    optional_params = %{
      :charset => :query
    }

    %{}
    |> method(:post)
    |> url("/import?action=CSV")
    |> add_param(:query, :session, session)
    |> add_param(:query, :folder, folder)
    |> add_param(:file, :file, file)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, false}
    ])
  end

  @doc """
  Imports calendar data from iCalendar file.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - folder (String.t): Object ID of the folder into which the data should be imported. This may be be an appointment or a task folder.
  - file (String.t): The iCal file containing the appointment and task data.
  - opts (KeywordList): [optional] Optional parameters
    - :suppress_notification (boolean()): Can be used to disable the notifications for new appointments that are imported through the given iCal file. This help keeping the Inbox clean if a lot of appointments need to be imported. The value of this parameter does not matter because only for the existence of the parameter is checked.
    - :ignore_uids (boolean()): When set to `true`, UIDs are partially ignored during import of tasks and appointments from iCal. Internally, each UID is replaced statically by a random one to preserve possibly existing relations between recurring appointments in the same iCal file, but at the same time to avoid collisions with already existing tasks and appointments.
    - :plain_json (boolean()): When set to `true`, signals that client expects plain JSON; no JavaScript callback.
  ## Returns

  {:ok, String.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec import_i_cal(Tesla.Env.client(), String.t(), String.t(), String.t(), keyword()) ::
          {:ok, String.t()} | {:error, Tesla.Env.t()}
  def import_i_cal(connection, session, folder, file, opts \\ []) do
    optional_params = %{
      :suppressNotification => :query,
      :ignoreUIDs => :query,
      :plainJson => :query
    }

    %{}
    |> method(:post)
    |> url("/import?action=ICAL")
    |> add_param(:query, :session, session)
    |> add_param(:query, :folder, folder)
    |> add_param(:file, :file, file)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, false}
    ])
  end

  @doc """
  Imports contact data from an Outlook CSV file.
  #### Example: exported Outlook CSV ``` First Name,Last Name Günther,Mustermann Hildegard,Musterfrau ``` The column titles in the first line of the CSV file may be those used by the English, French or German version of Outlook.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - folder (String.t): Object ID of the folder into which the data should be imported. This must be a contact folder.
  - file (String.t): The CSV file **with Windows' default encoding CP-1252** containing the contact data. The column titles are those used by the English, French or German version of Outlook.
  - opts (KeywordList): [optional] Optional parameters
    - :charset (String.t): A fixed character encoding to use when parsing the uploaded file, overriding the built-in defaults, following the conventions documented in [RFC 2278](http://tools.ietf.org/html/rfc2278).
  ## Returns

  {:ok, String.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec import_outlook_csv(Tesla.Env.client(), String.t(), String.t(), String.t(), keyword()) ::
          {:ok, String.t()} | {:error, Tesla.Env.t()}
  def import_outlook_csv(connection, session, folder, file, opts \\ []) do
    optional_params = %{
      :charset => :query
    }

    %{}
    |> method(:post)
    |> url("/import?action=OUTLOOK_CSV")
    |> add_param(:query, :session, session)
    |> add_param(:query, :folder, folder)
    |> add_param(:file, :file, file)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, false}
    ])
  end

  @doc """
  Imports data from vCard file.
  #### Supported vCard formats  * vCard 2.1  * vCard 3.0  * vCalendar 1.0

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - folder (String.t): Object ID of the folder into which the data should be imported. This must be a contact folder.
  - file (String.t): The vCard file.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, String.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec import_v_card(Tesla.Env.client(), String.t(), String.t(), String.t(), keyword()) ::
          {:ok, String.t()} | {:error, Tesla.Env.t()}
  def import_v_card(connection, session, folder, file, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/import?action=VCARD")
    |> add_param(:query, :session, session)
    |> add_param(:query, :folder, folder)
    |> add_param(:file, :file, file)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, false}
    ])
  end
end
