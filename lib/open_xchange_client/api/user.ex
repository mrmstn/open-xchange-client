# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Api.User do
  @moduledoc """
  API calls for all endpoints tagged `User`.
  """

  alias OpenXchangeClient.Connection
  import OpenXchangeClient.RequestBuilder


  @doc """
  Gets all users.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - columns (String.t): A comma-separated list of columns to return, like \"1,501,610\". Each column is specified by a numeric column identifier, see [Common object data](#common-object-data), [Detailed contact data](#detailed-contact-data) and [Detailed user data](#detailed-user-data).
  - opts (KeywordList): [optional] Optional parameters
    - :sort (String.t): The identifier of a column which determines the sort order of the response. If this parameter is specified, then the parameter order must be also specified.
    - :order (String.t): \"asc\" if the response entities should be sorted in the ascending order, \"desc\" if the response entries should be sorted in the descending order. If this parameter is specified, then the parameter sort must be also specified.
  ## Returns

  {:ok, OpenXchangeClient.Model.UsersResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_all_users(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, OpenXchangeClient.Model.UsersResponse.t} | {:error, Tesla.Env.t}
  def get_all_users(connection, session, columns, opts \\ []) do
    optional_params = %{
      :"sort" => :query,
      :"order" => :query
    }
    %{}
    |> method(:get)
    |> url("/user?action&#x3D;all")
    |> add_param(:query, :"session", session)
    |> add_param(:query, :"columns", columns)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %OpenXchangeClient.Model.UsersResponse{}}
    ])
  end

  @doc """
  Gets a user.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - opts (KeywordList): [optional] Optional parameters
    - :id (String.t): Object ID of the requested user. This parameter is optional and the default is the currently logged in user.
  ## Returns

  {:ok, OpenXchangeClient.Model.UserResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_user(Tesla.Env.client, String.t, keyword()) :: {:ok, OpenXchangeClient.Model.UserResponse.t} | {:error, Tesla.Env.t}
  def get_user(connection, session, opts \\ []) do
    optional_params = %{
      :"id" => :query
    }
    %{}
    |> method(:get)
    |> url("/user?action&#x3D;get")
    |> add_param(:query, :"session", session)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %OpenXchangeClient.Model.UserResponse{}}
    ])
  end

  @doc """
  Gets a user attribute.
  Gets a custom user attribute that was previously set with the `/user?action=setAttribute` request.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - id (String.t): The ID of the user.
  - name (String.t): The name of the attribute.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, OpenXchangeClient.Model.UserAttributeResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_user_attribute(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, OpenXchangeClient.Model.UserAttributeResponse.t} | {:error, Tesla.Env.t}
  def get_user_attribute(connection, session, id, name, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/user?action&#x3D;getAttribute")
    |> add_param(:query, :"session", session)
    |> add_param(:query, :"id", id)
    |> add_param(:query, :"name", name)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %OpenXchangeClient.Model.UserAttributeResponse{}}
    ])
  end

  @doc """
  Gets a list of users.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - columns (String.t): A comma-separated list of columns to return, like \"1,501,610\". Each column is specified by a numeric column identifier, see [Common object data](#common-object-data), [Detailed contact data](#detailed-contact-data) and [Detailed user data](#detailed-user-data).
  - body ([String.t]): A JSON array of identifiers of the requested users. A `null` value in the array is interpreted as the currently logged in user.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, OpenXchangeClient.Model.UsersResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_user_list(Tesla.Env.client, String.t, String.t, list(String.t), keyword()) :: {:ok, OpenXchangeClient.Model.UsersResponse.t} | {:error, Tesla.Env.t}
  def get_user_list(connection, session, columns, body, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/user?action&#x3D;list")
    |> add_param(:query, :"session", session)
    |> add_param(:query, :"columns", columns)
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %OpenXchangeClient.Model.UsersResponse{}}
    ])
  end

  @doc """
  Search for users.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - columns (String.t): A comma-separated list of columns to return, like \"1,501,610\". Each column is specified by a numeric column identifier, see [Common object data](#common-object-data), [Detailed contact data](#detailed-contact-data) and [Detailed user data](#detailed-user-data).
  - body (UserSearchBody): A JSON object containing search parameters.
  - opts (KeywordList): [optional] Optional parameters
    - :sort (String.t): The identifier of a column which determines the sort order of the response. If this parameter is specified , then the parameter order must be also specified.
    - :order (String.t): \"asc\" if the response entires should be sorted in the ascending order, \"desc\" if the response entries should be sorted in the descending order. If this parameter is specified, then the parameter sort must be also specified.
  ## Returns

  {:ok, OpenXchangeClient.Model.UsersResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec search_users(Tesla.Env.client, String.t, String.t, OpenXchangeClient.Model.UserSearchBody.t, keyword()) :: {:ok, OpenXchangeClient.Model.UsersResponse.t} | {:error, Tesla.Env.t}
  def search_users(connection, session, columns, body, opts \\ []) do
    optional_params = %{
      :"sort" => :query,
      :"order" => :query
    }
    %{}
    |> method(:put)
    |> url("/user?action&#x3D;search")
    |> add_param(:query, :"session", session)
    |> add_param(:query, :"columns", columns)
    |> add_param(:body, :body, body)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %OpenXchangeClient.Model.UsersResponse{}}
    ])
  end

  @doc """
  Sets a user attribute.
  Sets a custom user attribute consisting of a name and a value. The attribute can later be retrieved using the [/user?action=getAttribute](#operation--user-action-getAttribute-get) request. 

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - id (String.t): The ID of the user.
  - body (UserAttribute): A JSON object providing the name and the value of the attribute. If the `value` field is missing or `null`, the attribute is removed.
  - opts (KeywordList): [optional] Optional parameters
    - :set_if_absent (boolean()): Set to `true` to put the value only if the specified name is not already associated with a value, otherwise `false` to put value in any case.
  ## Returns

  {:ok, OpenXchangeClient.Model.UserAttributionResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec set_user_attribute(Tesla.Env.client, String.t, String.t, OpenXchangeClient.Model.UserAttribute.t, keyword()) :: {:ok, OpenXchangeClient.Model.UserAttributionResponse.t} | {:error, Tesla.Env.t}
  def set_user_attribute(connection, session, id, body, opts \\ []) do
    optional_params = %{
      :"setIfAbsent" => :query
    }
    %{}
    |> method(:put)
    |> url("/user?action&#x3D;setAttribute")
    |> add_param(:query, :"session", session)
    |> add_param(:query, :"id", id)
    |> add_param(:body, :body, body)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %OpenXchangeClient.Model.UserAttributionResponse{}}
    ])
  end

  @doc """
  Updates a user.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - id (String.t): Object ID of the requested user.
  - timestamp (integer()): Timestamp of the last update of the requested user. If the user was modified after the specified timestamp, then the update must fail.
  - body (UserData): A JSON object containing the user's data. Only modified fields are present. From [Detailed user data](https://documentation.open-xchange.com/latest/middleware/http_api/2_column_identifiers.html#detailed-user-data) only the fields `timezone` and `locale` are allowed to be updated.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, OpenXchangeClient.Model.CommonResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec update_user(Tesla.Env.client, String.t, String.t, integer(), OpenXchangeClient.Model.UserData.t, keyword()) :: {:ok, OpenXchangeClient.Model.CommonResponse.t} | {:error, Tesla.Env.t}
  def update_user(connection, session, id, timestamp, body, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/user?action&#x3D;update")
    |> add_param(:query, :"session", session)
    |> add_param(:query, :"id", id)
    |> add_param(:query, :"timestamp", timestamp)
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %OpenXchangeClient.Model.CommonResponse{}}
    ])
  end
end
