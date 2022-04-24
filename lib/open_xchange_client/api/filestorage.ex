# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Api.Filestorage do
  @moduledoc """
  API calls for all endpoints tagged `Filestorage`.
  """

  alias OpenXchangeClient.Connection
  import OpenXchangeClient.RequestBuilder

  @doc """
  Creates a file storage account.
  #### Example for creating a new OAuth-based file storage account First, get the description of the file storage service for which a new account is supposed to be created: `GET /ajax/fileservice?action=get&id=boxcom&session=...`  The response might be: ```json {   id: \"boxcom\",   displayName: \"Box File Storage Service\",   configuration: {     widget: \"oauthAccount\",     options: {       type: \"com.openexchange.oauth.boxcom\"     },     name: \"account\",     displayName: \"Select an existing account\",     mandatory: true   } } ``` Next get the associated OAuth account information: `GET /ajax/oauth/accounts?action=all&serviceId=com.openexchange.oauth.boxcom&session=...`  The response might be: ```json {   \"data\":[     {       \"id\":333,       \"displayName\":\"My Box.com account\",       \"serviceId\":\"com.openexchange.oauth.boxcom\"     }   ] } ``` Finally, create the file storage account: ``` PUT /ajax/fileaccount?action=new&session=...  {   \"filestorageService\":\"boxcom\",   \"displayName\":\"My box.com account\",   \"configuration\":{     \"account\":\"333\",     \"type\":\"com.openexchange.oauth.boxcom\"   } } ``` The response provides the relative identifier of the newly created account. 

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - body (FileAccountData): A JSON object describing the account to create, with at least the field `filestorageService` set.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, OpenXchangeClient.Model.FileAccountCreationResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec create_file_account(
          Tesla.Env.client(),
          String.t(),
          OpenXchangeClient.Model.FileAccountData.t(),
          keyword()
        ) ::
          {:ok, OpenXchangeClient.Model.FileAccountCreationResponse.t()} | {:error, Tesla.Env.t()}
  def create_file_account(connection, session, body, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/fileaccount?action&#x3D;new")
    |> add_param(:query, :session, session)
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.FileAccountCreationResponse{}}
    ])
  end

  @doc """
  Deletes a file storage account.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - filestorage_service (String.t): The identifier of the file storage service the account belongs to.
  - id (String.t): The ID of the account to delete.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, OpenXchangeClient.Model.FileAccountUpdateResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec delete_file_account(Tesla.Env.client(), String.t(), String.t(), String.t(), keyword()) ::
          {:ok, OpenXchangeClient.Model.FileAccountUpdateResponse.t()} | {:error, Tesla.Env.t()}
  def delete_file_account(connection, session, filestorage_service, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/fileaccount?action&#x3D;delete")
    |> add_param(:query, :session, session)
    |> add_param(:query, :filestorageService, filestorage_service)
    |> add_param(:query, :id, id)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.FileAccountUpdateResponse{}}
    ])
  end

  @doc """
  Gets all file storage accounts.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - opts (KeywordList): [optional] Optional parameters
    - :filestorage_service (String.t): The identifier of a file storage service to list only those accounts that belong to that file storage service.
  ## Returns

  {:ok, OpenXchangeClient.Model.FileAccountsResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_all_file_accounts(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, OpenXchangeClient.Model.FileAccountsResponse.t()} | {:error, Tesla.Env.t()}
  def get_all_file_accounts(connection, session, opts \\ []) do
    optional_params = %{
      :filestorageService => :query
    }

    %{}
    |> method(:get)
    |> url("/fileaccount?action&#x3D;all")
    |> add_param(:query, :session, session)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.FileAccountsResponse{}}
    ])
  end

  @doc """
  Gets all file storage services.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, OpenXchangeClient.Model.FileServicesResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_all_file_services(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, OpenXchangeClient.Model.FileServicesResponse.t()} | {:error, Tesla.Env.t()}
  def get_all_file_services(connection, session, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/fileservice?action&#x3D;all")
    |> add_param(:query, :session, session)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.FileServicesResponse{}}
    ])
  end

  @doc """
  Gets a file storage account.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - filestorage_service (String.t): The identifier of the file storage service the account belongs to.
  - id (String.t): The ID of the requested account.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, OpenXchangeClient.Model.FileAccountResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_file_account(Tesla.Env.client(), String.t(), String.t(), String.t(), keyword()) ::
          {:ok, OpenXchangeClient.Model.FileAccountResponse.t()} | {:error, Tesla.Env.t()}
  def get_file_account(connection, session, filestorage_service, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/fileaccount?action&#x3D;get")
    |> add_param(:query, :session, session)
    |> add_param(:query, :filestorageService, filestorage_service)
    |> add_param(:query, :id, id)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.FileAccountResponse{}}
    ])
  end

  @doc """
  Gets a file storage service.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - id (String.t): The ID of the file storage service to load.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, OpenXchangeClient.Model.FileServiceResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_file_service(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, OpenXchangeClient.Model.FileServiceResponse.t()} | {:error, Tesla.Env.t()}
  def get_file_service(connection, session, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/fileservice?action&#x3D;get")
    |> add_param(:query, :session, session)
    |> add_param(:query, :id, id)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.FileServiceResponse{}}
    ])
  end

  @doc """
  Updates a file storage account.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - body (FileAccountData): A JSON object describing the updated data of the account. The fields `id` and `filestorageService` must be set.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, OpenXchangeClient.Model.FileAccountCreationResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec update_file_account(
          Tesla.Env.client(),
          String.t(),
          OpenXchangeClient.Model.FileAccountData.t(),
          keyword()
        ) ::
          {:ok, OpenXchangeClient.Model.FileAccountCreationResponse.t()} | {:error, Tesla.Env.t()}
  def update_file_account(connection, session, body, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/fileaccount?action&#x3D;update")
    |> add_param(:query, :session, session)
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.FileAccountCreationResponse{}}
    ])
  end
end
