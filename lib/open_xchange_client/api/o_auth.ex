# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Api.OAuth do
  @moduledoc """
  API calls for all endpoints tagged `OAuth`.
  """

  alias OpenXchangeClient.Connection
  import OpenXchangeClient.RequestBuilder

  @doc """
  Creates an OAuth account.
  This action is typically called by provided call-back URL and is only intended for manual invocation if \"outOfBand\" interaction is returned by preceeding [/oauth/account?action=init](#operation--oauth-accounts-action-init-get) step.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - oauth_token (String.t): The request token from preceeding OAuth interaction.
  - uuid (String.t): The UUID of the preceeding OAuth interaction.
  - display_name (String.t): The display name for the new account.
  - scopes (String.t): A space-separated list of scopes to be added. Valid scopes are 'calendar', 'contacts', 'mail', 'drive', 'generic'. Note that not all scopes are applicable to every OAuth provider.
  - opts (KeywordList): [optional] Optional parameters
    - :oauth_verifier (String.t): The verifier string which confirms that user granted access.
  ## Returns

  {:ok, OpenXchangeClient.Model.OAuthAccountResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec create_o_auth_account(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, OpenXchangeClient.Model.OAuthAccountResponse.t()} | {:error, Tesla.Env.t()}
  def create_o_auth_account(
        connection,
        session,
        oauth_token,
        uuid,
        display_name,
        scopes,
        opts \\ []
      ) do
    optional_params = %{
      :oauth_verifier => :query
    }

    %{}
    |> method(:put)
    |> url("/oauth/accounts?action=create")
    |> add_param(:query, :session, session)
    |> add_param(:query, :oauth_token, oauth_token)
    |> add_param(:query, :uuid, uuid)
    |> add_param(:query, :displayName, display_name)
    |> add_param(:query, :scopes, scopes)
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.OAuthAccountResponse{}}
    ])
  end

  @doc """
  Deletes an OAuth account.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - id (integer()): The account identifier.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, OpenXchangeClient.Model.OAuthAccountDeletionResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec delete_o_auth_account(Tesla.Env.client(), String.t(), integer(), keyword()) ::
          {:ok, OpenXchangeClient.Model.OAuthAccountDeletionResponse.t()}
          | {:error, Tesla.Env.t()}
  def delete_o_auth_account(connection, session, id, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/oauth/accounts?action=delete")
    |> add_param(:query, :session, session)
    |> add_param(:query, :id, id)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.OAuthAccountDeletionResponse{}}
    ])
  end

  @doc """
  Gets all OAuth accounts.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - opts (KeywordList): [optional] Optional parameters
    - :service_id (String.t): The service meta data identifier. If missing all accounts of all services are returned; otherwise all accounts of specified service are returned.
  ## Returns

  {:ok, OpenXchangeClient.Model.OAuthAccountsResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_all_o_auth_accounts(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, OpenXchangeClient.Model.OAuthAccountsResponse.t()} | {:error, Tesla.Env.t()}
  def get_all_o_auth_accounts(connection, session, opts \\ []) do
    optional_params = %{
      :serviceId => :query
    }

    %{}
    |> method(:get)
    |> url("/oauth/accounts?action=all")
    |> add_param(:query, :session, session)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.OAuthAccountsResponse{}}
    ])
  end

  @doc """
  Gets all OAuth grants.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, OpenXchangeClient.Model.OAuthGrantsResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_all_o_auth_grants(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, OpenXchangeClient.Model.OAuthGrantsResponse.t()} | {:error, Tesla.Env.t()}
  def get_all_o_auth_grants(connection, session, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/oauth/grants?action=all")
    |> add_param(:query, :session, session)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.OAuthGrantsResponse{}}
    ])
  end

  @doc """
  Gets all OAuth services' meta data.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, OpenXchangeClient.Model.OAuthServicesResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_all_o_auth_services(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, OpenXchangeClient.Model.OAuthServicesResponse.t()} | {:error, Tesla.Env.t()}
  def get_all_o_auth_services(connection, session, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/oauth/services?action=all")
    |> add_param(:query, :session, session)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.OAuthServicesResponse{}}
    ])
  end

  @doc """
  Gets an OAuth account.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - id (integer()): The account identifier.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, OpenXchangeClient.Model.OAuthAccountResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_o_auth_account(Tesla.Env.client(), String.t(), integer(), keyword()) ::
          {:ok, OpenXchangeClient.Model.OAuthAccountResponse.t()} | {:error, Tesla.Env.t()}
  def get_o_auth_account(connection, session, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/oauth/accounts?action=get")
    |> add_param(:query, :session, session)
    |> add_param(:query, :id, id)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.OAuthAccountResponse{}}
    ])
  end

  @doc """
  Gets all OAuth service's meta data.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - id (String.t): The service's identifier.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, OpenXchangeClient.Model.OAuthServiceResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_o_auth_service(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, OpenXchangeClient.Model.OAuthServiceResponse.t()} | {:error, Tesla.Env.t()}
  def get_o_auth_service(connection, session, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/oauth/services?action=get")
    |> add_param(:query, :session, session)
    |> add_param(:query, :id, id)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.OAuthServiceResponse{}}
    ])
  end

  @doc """
  Initializes the creation of an OAuth account.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - service_id (String.t): The service meta data identifier, e.g. \"com.openexchange.oauth.twitter\".
  - display_name (String.t): The display name of the account.
  - scopes (String.t): A space-separated list of scopes to be added. Valid scopes are 'calendar', 'contacts', 'mail', 'drive', 'generic'. Note that not all scopes are applicable to every OAuth provider.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, OpenXchangeClient.Model.OAuthAccountInteractionResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec init_o_auth_account(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, OpenXchangeClient.Model.OAuthAccountInteractionResponse.t()}
          | {:error, Tesla.Env.t()}
  def init_o_auth_account(connection, session, service_id, display_name, scopes, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/oauth/accounts?action=init")
    |> add_param(:query, :session, session)
    |> add_param(:query, :serviceId, service_id)
    |> add_param(:query, :displayName, display_name)
    |> add_param(:query, :scopes, scopes)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.OAuthAccountInteractionResponse{}}
    ])
  end

  @doc """
  Reauthorises the specified OAuth account

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - id (integer()): The account identifier. May also be provided in request body's JSON object by field `id`.
  - service_id (String.t): The service meta data identifier, e.g. \"com.openexchange.oauth.twitter\".
  - scopes (String.t): A space-separated list of scopes to be added. Valid scopes are 'calendar', 'contacts', 'mail', 'drive', 'generic'. Note that not all scopes are applicable to every OAuth provider.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec reauthorize_o_auth_account(
          Tesla.Env.client(),
          String.t(),
          integer(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def reauthorize_o_auth_account(connection, session, id, service_id, scopes, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/oauth/accounts?action=reauthorize")
    |> add_param(:query, :session, session)
    |> add_param(:query, :id, id)
    |> add_param(:query, :serviceId, service_id)
    |> add_param(:query, :scopes, scopes)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, false}
    ])
  end

  @doc """
  Revokes access for an OAuth client.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - client (String.t): The ID of the client whose access shall be revoked.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, OpenXchangeClient.Model.CommonResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec revoke_o_auth_grant(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, OpenXchangeClient.Model.CommonResponse.t()} | {:error, Tesla.Env.t()}
  def revoke_o_auth_grant(connection, session, client, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/oauth/grants?action=revoke")
    |> add_param(:query, :session, session)
    |> add_param(:query, :client, client)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.CommonResponse{}}
    ])
  end

  @doc """
  Updates an OAuth account.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - id (integer()): The account identifier. May also be provided in request body's JSON object by field `id`.
  - body (OAuthAccountData): A JSON object providing the OAuth account data to update. Currently the only values which make sense being updated are `displayName` and the `token`-`secret`-pair.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, OpenXchangeClient.Model.OAuthAccountUpdateResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec update_o_auth_account(
          Tesla.Env.client(),
          String.t(),
          integer(),
          OpenXchangeClient.Model.OAuthAccountData.t(),
          keyword()
        ) ::
          {:ok, OpenXchangeClient.Model.OAuthAccountUpdateResponse.t()} | {:error, Tesla.Env.t()}
  def update_o_auth_account(connection, session, id, body, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/oauth/accounts?action=update")
    |> add_param(:query, :session, session)
    |> add_param(:query, :id, id)
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.OAuthAccountUpdateResponse{}}
    ])
  end
end
