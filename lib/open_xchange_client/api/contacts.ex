# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Api.Contacts do
  @moduledoc """
  API calls for all endpoints tagged `Contacts`.
  """

  alias OpenXchangeClient.Connection
  import OpenXchangeClient.RequestBuilder

  @doc """
  Creates a contact.
  Creates a new contact. This request cannot add contact images. Therefor it is necessary to use the `POST` method.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - body (ContactData): A JSON object containing the contact's data. The field id is not included.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, OpenXchangeClient.Model.ContactUpdateResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec create_contact(
          Tesla.Env.client(),
          String.t(),
          OpenXchangeClient.Model.ContactData.t(),
          keyword()
        ) :: {:ok, OpenXchangeClient.Model.ContactUpdateResponse.t()} | {:error, Tesla.Env.t()}
  def create_contact(connection, session, body, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/contacts?action&#x3D;new")
    |> add_param(:query, :session, session)
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.ContactUpdateResponse{}}
    ])
  end

  @doc """
  Creates a contact.
  Creates a new contact with contact images. The normal request body must be placed as form-data using the content-type `multipart/form-data`. The form field `json` contains the contact's data while the image file must be placed in a file field named `file` (see also [File uploads](#file-uploads)).

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - json (String.t): Represents the normal request body as JSON string containing the contact data as described in the ContactData (see [createContact](#/Contacts/createContact) model.
  - file (String.t): The image file.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, String.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec create_contact_advanced(Tesla.Env.client(), String.t(), String.t(), String.t(), keyword()) ::
          {:ok, String.t()} | {:error, Tesla.Env.t()}
  def create_contact_advanced(connection, session, json, file, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/contacts?action&#x3D;new")
    |> add_param(:query, :session, session)
    |> add_param(:form, :json, json)
    |> add_param(:file, :file, file)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, false}
    ])
  end

  @doc """
  Deletes contacts.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - timestamp (integer()): Timestamp of the last update of the deleted contacts.
  - body ([OpenXchangeClient.Model.ContactListElement.t]): A JSON array of JSON objects with the id and folder of the contacts.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, OpenXchangeClient.Model.ContactDeletionsResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec delete_contacts(
          Tesla.Env.client(),
          String.t(),
          integer(),
          list(OpenXchangeClient.Model.ContactListElement.t()),
          keyword()
        ) :: {:ok, OpenXchangeClient.Model.ContactDeletionsResponse.t()} | {:error, Tesla.Env.t()}
  def delete_contacts(connection, session, timestamp, body, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/contacts?action&#x3D;delete")
    |> add_param(:query, :session, session)
    |> add_param(:query, :timestamp, timestamp)
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.ContactDeletionsResponse{}}
    ])
  end

  @doc """
  Auto-complete contacts.
  Finds contacts based on a prefix, usually used to auto-complete e-mail recipients while the user is typing.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - columns (String.t): A comma-separated list of columns to return, like \"1,500\". Each column is specified by a numeric column identifier, see [Common object data](#common-object-data) and [Detailed contact data](#detailed-contact-data).
  - query (String.t): The query to search for.
  - opts (KeywordList): [optional] Optional parameters
    - :email (boolean()): Whether to only include contacts with at least one e-mail address. Defaults to `true`.
    - :folder (String.t): Object ID of the parent folder that is searched. If not set, all visible folders are used.
    - :sort (String.t): The identifier of a column which determines the sort order of the response. If this parameter is specified, then the parameter order must be also specified. If this parameter is missing, response is sorted by a user-specific use count of contacts, ID of contacts' parent folder and display name.
    - :order (String.t): \"asc\" if the response entires should be sorted in the ascending order, \"desc\" if the response entries should be sorted in the descending order. If this parameter is specified, then the parameter sort must be also specified.
    - :collation (String.t): Allows you to specify a collation to sort the contacts by. Only supports \"gbk\" and \"gb2312\", not needed for other languages. Parameter sort should be set for this to work.
    - :left_hand_limit (integer()): A positive integer number to specify the \"left-hand\" limit of the range to return.
    - :right_hand_limit (integer()): A positive integer number to specify the \"right-hand\" limit of the range to return.
  ## Returns

  {:ok, OpenXchangeClient.Model.ContactsResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec do_auto_complete_contacts(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, OpenXchangeClient.Model.ContactsResponse.t()} | {:error, Tesla.Env.t()}
  def do_auto_complete_contacts(connection, session, columns, query, opts \\ []) do
    optional_params = %{
      :email => :query,
      :folder => :query,
      :sort => :query,
      :order => :query,
      :collation => :query,
      :left_hand_limit => :query,
      :right_hand_limit => :query
    }

    %{}
    |> method(:get)
    |> url("/contacts?action&#x3D;autocomplete")
    |> add_param(:query, :session, session)
    |> add_param(:query, :columns, columns)
    |> add_param(:query, :query, query)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.ContactsResponse{}}
    ])
  end

  @doc """
  Gets all contacts.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - folder (String.t): Object ID of the folder who contains the contacts.
  - columns (String.t): A comma-separated list of columns to return, like \"1,500\". Each column is specified by a numeric column identifier, see [Common object data](#common-object-data) and [Detailed contact data](#detailed-contact-data).
  - opts (KeywordList): [optional] Optional parameters
    - :sort (String.t): The identifier of a column which determines the sort order of the response. If this parameter is specified, then the parameter order must be also specified.
    - :order (String.t): \"asc\" if the response entities should be sorted in the ascending order, \"desc\" if the response entries should be sorted in the descending order. If this parameter is specified, then the parameter sort must be also specified.
    - :admin (boolean()): (DEPRECATED) Defines whether the context admin should be included or not. Defaults to `true`.
    - :collation (String.t): Allows you to specify a collation to sort the contacts by. Only supports \"gbk\" and \"gb2312\", not needed for other languages. Parameter sort should be set for this to work.
  ## Returns

  {:ok, OpenXchangeClient.Model.ContactsResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_all_contacts(Tesla.Env.client(), String.t(), String.t(), String.t(), keyword()) ::
          {:ok, OpenXchangeClient.Model.ContactsResponse.t()} | {:error, Tesla.Env.t()}
  def get_all_contacts(connection, session, folder, columns, opts \\ []) do
    optional_params = %{
      :sort => :query,
      :order => :query,
      :admin => :query,
      :collation => :query
    }

    %{}
    |> method(:get)
    |> url("/contacts?action&#x3D;all")
    |> add_param(:query, :session, session)
    |> add_param(:query, :folder, folder)
    |> add_param(:query, :columns, columns)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.ContactsResponse{}}
    ])
  end

  @doc """
  Gets a contact.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - id (String.t): Object ID of the requested contact.
  - folder (String.t): Object ID of the folder who contains the contacts.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, OpenXchangeClient.Model.ContactResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_contact(Tesla.Env.client(), String.t(), String.t(), String.t(), keyword()) ::
          {:ok, OpenXchangeClient.Model.ContactResponse.t()} | {:error, Tesla.Env.t()}
  def get_contact(connection, session, id, folder, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/contacts?action&#x3D;get")
    |> add_param(:query, :session, session)
    |> add_param(:query, :id, id)
    |> add_param(:query, :folder, folder)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.ContactResponse{}}
    ])
  end

  @doc """
  Gets a contact by user ID.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - id (integer()): User ID (not Object ID) of the requested user.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, OpenXchangeClient.Model.ContactResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_contact_by_user(Tesla.Env.client(), String.t(), integer(), keyword()) ::
          {:ok, OpenXchangeClient.Model.ContactResponse.t()} | {:error, Tesla.Env.t()}
  def get_contact_by_user(connection, session, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/contacts?action&#x3D;getuser")
    |> add_param(:query, :session, session)
    |> add_param(:query, :id, id)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.ContactResponse{}}
    ])
  end

  @doc """
  Gets a list of contacts.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - columns (String.t): A comma-separated list of columns to return, like \"1,500\". Each column is specified by a numeric column identifier, see [Common object data](#common-object-data) and [Detailed contact data](#detailed-contact-data).
  - body ([OpenXchangeClient.Model.ContactListElement.t]): A JSON array of JSON objects with the id and folder of the contacts.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, OpenXchangeClient.Model.ContactsResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_contact_list(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          list(OpenXchangeClient.Model.ContactListElement.t()),
          keyword()
        ) :: {:ok, OpenXchangeClient.Model.ContactsResponse.t()} | {:error, Tesla.Env.t()}
  def get_contact_list(connection, session, columns, body, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/contacts?action&#x3D;list")
    |> add_param(:query, :session, session)
    |> add_param(:query, :columns, columns)
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.ContactsResponse{}}
    ])
  end

  @doc """
  Gets a list of users.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - columns (String.t): A comma-separated list of columns to return, like \"1,500\". Each column is specified by a numeric column identifier, see [Common object data](#common-object-data) and [Detailed contact data](#detailed-contact-data).
  - body ([integer()]): A JSON array with user IDs.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, OpenXchangeClient.Model.ContactsResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_contact_list_by_users(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          list(Integer.t()),
          keyword()
        ) :: {:ok, OpenXchangeClient.Model.ContactsResponse.t()} | {:error, Tesla.Env.t()}
  def get_contact_list_by_users(connection, session, columns, body, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/contacts?action&#x3D;listuser")
    |> add_param(:query, :session, session)
    |> add_param(:query, :columns, columns)
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.ContactsResponse{}}
    ])
  end

  @doc """
  Gets a picture for a contact.
  Tries to get a picture for a given contact. To specify a contact at least one of three informations must be given: <ul>   <li><code>user_id</code> - an id of an internal user.</li>   <li><code>contact_id</code> and <code>folder_id</code> - together those ids identifiy a contact.</li>   <li><code>email</code> - an email address.</li> </ul>

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - opts (KeywordList): [optional] Optional parameters
    - :user_id (String.t): The user identifier.
    - :contact_id (String.t): The contact identifier.
    - :folder_id (String.t): The folder id the contact id belongs to.
    - :email (String.t): The mail address of the contact.
    - :rotate (boolean()): Adds a 'rotate' transformation, leading to the image being rotated according to the contained EXIF information.
    - :width (integer()): The maximum width of the target image.
    - :height (integer()): The maximum height of the target image.
    - :shrink_only (boolean()): Set to true to only scale images 'greater than' target size.
    - :scale_type (String.t): Defines the scale type. Possible value:  <ul>   <li><code>cover</code> - The \"cover\" scale type, specifying the minimum target dimensions. <br>   The source image will be resized in a way that the resulting image covers the target resolution entirely, with the original aspect ratio being preserved.    For example, scaling an image with an original resolution of 640x480 pixels to 200x200 pixels and type \"cover\", will result in the picture being resized to 267x200 pixels.</li>    <li><code>contain</code> - The \"contain\" scale type, specifying the maximum target dimensions. <br>   The source image will be resized in a way that the resulting image fits into the target resolution entirely, with the original aspect ratio being preserved.    For example, scaling an image with an original resolution of 640x480 pixels to 200x200 pixels and type \"contain\", will result in the picture being resized to 200x150 pixels.</li>    <li><code>containforcedimension</code> - The \"containforcedimension\" scale type, specifying the maximum target dimensions. <br>   The source image will be resized in a way that the resulting image fits into the target resolution entirely, with the original aspect ratio being preserved while smaller sides get    padded to fit exact dimension. For example, scaling an image with an original resolution of 640x480 pixels to 200x200 pixels and type \"containforcedimension\", will result in the picture being    first resized to 200x150 pixels, then height gets padded by 25 pixels per side resulting in exactly 200x200 pixels.</li>    <li><code>coverandcrop</code> - The \"coverandcrop\" scale type, specifying the target dimensions. <br>   If the source image is bigger than the target dimension, in a first step the image will be resized in a way that the resulting image covers the target resolution entirely,    with the original aspect ratio being preserved. In a second step the image will be cropped to fit the target dimension. For example, scaling an image with an original resolution    of 640x480 pixels to 200x200 pixels and type \"coverandcrop\", will result in the picture being resized to 267x200 pixels and then cropped to fit 200x200.    In case the image is smaller than then target dimension the image will not be resized and instead it gets padded to fit exact dimension. For example,    with an original resolution of 100x100 pixels and a target dimension of 200x200 pixels and type \"coverandcrop\", will result in the picture being padded on all sides with 50 pixels.</li>    <li><code>auto</code> - The \"auto\" scale type.<br></li> </ul>
    - :crop_width (integer()): The width of the specified rectangular region.
    - :crop_height (integer()): The height of the specified rectangular region.
    - :crop_x (integer()): The X coordinate of the upper-left corner of the specified rectangular region.
    - :crop_y (integer()): The Y coordinate of the upper-left corner of the specified rectangular region.
  ## Returns

  {:ok, String.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_contact_picture(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil} | {:ok, String.t()} | {:error, Tesla.Env.t()}
  def get_contact_picture(connection, session, opts \\ []) do
    optional_params = %{
      :user_id => :query,
      :contact_id => :query,
      :folder_id => :query,
      :email => :query,
      :rotate => :query,
      :width => :query,
      :height => :query,
      :shrinkOnly => :query,
      :scaleType => :query,
      :cropWidth => :query,
      :cropHeight => :query,
      :cropX => :query,
      :cropY => :query
    }

    %{}
    |> method(:get)
    |> url("/contacts/picture?action&#x3D;get")
    |> add_param(:query, :session, session)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, false},
      {404, false}
    ])
  end

  @doc """
  Gets updated contacts.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - folder (String.t): Object ID of the folder who contains the contacts.
  - columns (String.t): A comma-separated list of columns to return, like \"1,500\". Each column is specified by a numeric column identifier, see [Common object data](#common-object-data) and [Detailed contact data](#detailed-contact-data).
  - timestamp (integer()): Timestamp of the last update of the requested contacts.
  - opts (KeywordList): [optional] Optional parameters
    - :ignore (String.t): Which kinds of updates should be ignored. Omit this parameter or set it to \"deleted\" to not have deleted tasks identifier in the response. Set this parameter to `false` and the response contains deleted tasks identifier.
    - :sort (String.t): The identifier of a column which determines the sort order of the response. If this parameter is specified, then the parameter order must be also specified.
    - :order (String.t): \"asc\" if the response entities should be sorted in the ascending order, \"desc\" if the response entries should be sorted in the descending order. If this parameter is specified, then the parameter sort must be also specified.
  ## Returns

  {:ok, OpenXchangeClient.Model.ContactUpdatesResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_contact_updates(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          integer(),
          keyword()
        ) :: {:ok, OpenXchangeClient.Model.ContactUpdatesResponse.t()} | {:error, Tesla.Env.t()}
  def get_contact_updates(connection, session, folder, columns, timestamp, opts \\ []) do
    optional_params = %{
      :ignore => :query,
      :sort => :query,
      :order => :query
    }

    %{}
    |> method(:get)
    |> url("/contacts?action&#x3D;updates")
    |> add_param(:query, :session, session)
    |> add_param(:query, :folder, folder)
    |> add_param(:query, :columns, columns)
    |> add_param(:query, :timestamp, timestamp)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.ContactUpdatesResponse{}}
    ])
  end

  @doc """
  Search for contacts.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - columns (String.t): A comma-separated list of columns to return, like \"1,500\". Each column is specified by a numeric column identifier, see [Common object data](#common-object-data) and [Detailed contact data](#detailed-contact-data).
  - body (ContactSearchBody): A JSON object containing search parameters.
  - opts (KeywordList): [optional] Optional parameters
    - :sort (String.t): The identifier of a column which determines the sort order of the response. If this parameter is specified , then the parameter order must be also specified.
    - :order (String.t): \"asc\" if the response entires should be sorted in the ascending order, \"desc\" if the response entries should be sorted in the descending order. If this parameter is specified, then the parameter sort must be also specified.
    - :collation (String.t): Allows you to specify a collation to sort the contacts by. Only supports \"gbk\" and \"gb2312\", not needed for other languages. Parameter sort should be set for this to work.
  ## Returns

  {:ok, OpenXchangeClient.Model.ContactsResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec search_contacts(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          OpenXchangeClient.Model.ContactSearchBody.t(),
          keyword()
        ) :: {:ok, OpenXchangeClient.Model.ContactsResponse.t()} | {:error, Tesla.Env.t()}
  def search_contacts(connection, session, columns, body, opts \\ []) do
    optional_params = %{
      :sort => :query,
      :order => :query,
      :collation => :query
    }

    %{}
    |> method(:put)
    |> url("/contacts?action&#x3D;search")
    |> add_param(:query, :session, session)
    |> add_param(:query, :columns, columns)
    |> add_param(:body, :body, body)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.ContactsResponse{}}
    ])
  end

  @doc """
  Search for contacts by filter.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - columns (String.t): A comma-separated list of columns to return, like \"1,500\". Each column is specified by a numeric column identifier, see [Common object data](#common-object-data) and [Detailed contact data](#detailed-contact-data).
  - body (String.t): A JSON object describing the search term as introducted in [Advanced search](https://documentation.open-xchange.com/latest/middleware/http_api/5_advanced_search.html). Example: `{\"filter\":[\"and\",[\"=\", {\"field\":\"last_name\"},\"Mustermann\"],[\"=\",{\"field\":\"first_name\"},\"Max\"]]}` which represents 'last_name = \"Mustermann\" AND first_name = \"Max\"'. Valid fields are the ones specified in [Contact data](#/definitions/ContactData) model.
  - opts (KeywordList): [optional] Optional parameters
    - :sort (String.t): The identifier of a column which determines the sort order of the response. If this parameter is specified , then the parameter order must be also specified.
    - :order (String.t): \"asc\" if the response entires should be sorted in the ascending order, \"desc\" if the response entries should be sorted in the descending order. If this parameter is specified, then the parameter sort must be also specified.
    - :collation (String.t): Allows you to specify a collation to sort the contacts by. Only supports \"gbk\" and \"gb2312\", not needed for other languages. Parameter sort should be set for this to work.
    - :admin (boolean()): (DEPRECATED) Specifies whether to include the contact representing the admin in the result or not. Defaults to `true`.
  ## Returns

  {:ok, OpenXchangeClient.Model.ContactsResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec search_contacts_advanced(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, OpenXchangeClient.Model.ContactsResponse.t()} | {:error, Tesla.Env.t()}
  def search_contacts_advanced(connection, session, columns, body, opts \\ []) do
    optional_params = %{
      :sort => :query,
      :order => :query,
      :collation => :query,
      :admin => :query
    }

    %{}
    |> method(:put)
    |> url("/contacts?action&#x3D;advancedSearch")
    |> add_param(:query, :session, session)
    |> add_param(:query, :columns, columns)
    |> add_param(:body, :body, body)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.ContactsResponse{}}
    ])
  end

  @doc """
  Search for contacts by anniversary.
  Finds contacts whose anniversary falls into a specified time range.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - columns (String.t): A comma-separated list of columns to return, like \"1,500\". Each column is specified by a numeric column identifier, see [Common object data](#common-object-data) and [Detailed contact data](#detailed-contact-data).
  - start_date (integer()): The lower (inclusive) limit of the requested time range.
  - end_date (integer()): The upper (exclusive) limit of the requested time range.
  - opts (KeywordList): [optional] Optional parameters
    - :folder (String.t): Object ID of the parent folder that is searched. If not set, all visible folders are used.
    - :sort (String.t): The identifier of a column which determines the sort order of the response. If this parameter is specified , then the parameter order must be also specified.
    - :order (String.t): \"asc\" if the response entires should be sorted in the ascending order, \"desc\" if the response entries should be sorted in the descending order. If this parameter is specified, then the parameter sort must be also specified.
    - :collation (String.t): Allows you to specify a collation to sort the contacts by. Only supports \"gbk\" and \"gb2312\", not needed for other languages. Parameter sort should be set for this to work.
  ## Returns

  {:ok, OpenXchangeClient.Model.ContactsResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec search_contacts_by_anniversary(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          integer(),
          integer(),
          keyword()
        ) :: {:ok, OpenXchangeClient.Model.ContactsResponse.t()} | {:error, Tesla.Env.t()}
  def search_contacts_by_anniversary(
        connection,
        session,
        columns,
        start_date,
        end_date,
        opts \\ []
      ) do
    optional_params = %{
      :folder => :query,
      :sort => :query,
      :order => :query,
      :collation => :query
    }

    %{}
    |> method(:get)
    |> url("/contacts?action&#x3D;anniversaries")
    |> add_param(:query, :session, session)
    |> add_param(:query, :columns, columns)
    |> add_param(:query, :start, start_date)
    |> add_param(:query, :end, end_date)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.ContactsResponse{}}
    ])
  end

  @doc """
  Search for contacts by birthday.
  Finds contacts whose birthday falls into a specified time range.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - columns (String.t): A comma-separated list of columns to return, like \"1,500\". Each column is specified by a numeric column identifier, see [Common object data](#common-object-data) and [Detailed contact data](#detailed-contact-data).
  - start_date (integer()): The lower (inclusive) limit of the requested time range.
  - end_date (integer()): The upper (exclusive) limit of the requested time range.
  - opts (KeywordList): [optional] Optional parameters
    - :folder (String.t): Object ID of the parent folder that is searched. If not set, all visible folders are used.
    - :sort (String.t): The identifier of a column which determines the sort order of the response. If this parameter is specified , then the parameter order must be also specified.
    - :order (String.t): \"asc\" if the response entires should be sorted in the ascending order, \"desc\" if the response entries should be sorted in the descending order. If this parameter is specified, then the parameter sort must be also specified.
    - :collation (String.t): Allows you to specify a collation to sort the contacts by. Only supports \"gbk\" and \"gb2312\", not needed for other languages. Parameter sort should be set for this to work.
  ## Returns

  {:ok, OpenXchangeClient.Model.ContactsResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec search_contacts_by_birthday(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          integer(),
          integer(),
          keyword()
        ) :: {:ok, OpenXchangeClient.Model.ContactsResponse.t()} | {:error, Tesla.Env.t()}
  def search_contacts_by_birthday(connection, session, columns, start_date, end_date, opts \\ []) do
    optional_params = %{
      :folder => :query,
      :sort => :query,
      :order => :query,
      :collation => :query
    }

    %{}
    |> method(:get)
    |> url("/contacts?action&#x3D;birthdays")
    |> add_param(:query, :session, session)
    |> add_param(:query, :columns, columns)
    |> add_param(:query, :start, start_date)
    |> add_param(:query, :end, end_date)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.ContactsResponse{}}
    ])
  end

  @doc """
  Updates a contact.
  Updates a contact's data. This request cannot change or add contact images. Therefore it is necessary to use the `POST` method.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - folder (String.t): Object ID of the folder who contains the contacts.
  - id (String.t): Object ID of the contact that shall be updated.
  - timestamp (integer()): Timestamp of the updated contact. If the contact was modified after the specified timestamp, then the update must fail.
  - body (ContactData): A JSON object containing the contact's data. Only modified fields must be specified. To remove some contact image send the image attribute set to null.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, OpenXchangeClient.Model.ContactUpdateResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec update_contact(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          integer(),
          OpenXchangeClient.Model.ContactData.t(),
          keyword()
        ) :: {:ok, OpenXchangeClient.Model.ContactUpdateResponse.t()} | {:error, Tesla.Env.t()}
  def update_contact(connection, session, folder, id, timestamp, body, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/contacts?action&#x3D;update")
    |> add_param(:query, :session, session)
    |> add_param(:query, :folder, folder)
    |> add_param(:query, :id, id)
    |> add_param(:query, :timestamp, timestamp)
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.ContactUpdateResponse{}}
    ])
  end

  @doc """
  Updates a contact.
  Updates a contact's data and images. The normal request body must be placed as form-data using the content-type `multipart/form-data`. The form field `json` contains the contact's data while the image file must be placed in a file field named `file` (see also [File uploads](#file-uploads)).

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - folder (String.t): Object ID of the folder who contains the contacts.
  - id (String.t): Object ID of the contact that shall be updated.
  - timestamp (integer()): Timestamp of the updated contact. If the contact was modified after the specified timestamp, then the update must fail.
  - json (String.t): Represents the normal request body as JSON string containing the contact data as described in [ContactData](#/definitions/ContactData) model. Only modified fields must be specified but at least \\\"{}\\\".
  - file (String.t): The image file.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, String.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec update_contact_advanced(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          integer(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, String.t()} | {:error, Tesla.Env.t()}
  def update_contact_advanced(connection, session, folder, id, timestamp, json, file, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/contacts?action&#x3D;update")
    |> add_param(:query, :session, session)
    |> add_param(:query, :folder, folder)
    |> add_param(:query, :id, id)
    |> add_param(:query, :timestamp, timestamp)
    |> add_param(:form, :json, json)
    |> add_param(:file, :file, file)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, false}
    ])
  end
end