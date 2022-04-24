# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Api.OpenID do
  @moduledoc """
  API calls for all endpoints tagged `OpenID`.
  """

  alias OpenXchangeClient.Connection
  import OpenXchangeClient.RequestBuilder


  @doc """
  Initiate the communication with the OpenID module
  The init request is used to initiate communication with the OpenID module from a UI client. It may be used to login or logout a user or to initiate the authorization process from  a third party. 

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - flow (String.t): One of the three following strings can be used, {login, logout, thirdParty}. Either one  will start the corresponding process in the OpenID module. 
  - redirect (boolean()): Describes wether the response will be in form of a redirect or an URL placed in a 'redirect' parameter  in a JSON body. 
  - opts (KeywordList): [optional] Optional parameters
    - :hash (String.t): The hash value from where the request was triggered for later deeplink purposes.
    - :version (String.t): The client version.
    - :client (String.t): The client identifier.
  ## Returns

  {:ok, OpenXchangeClient.Model.InitResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec init(Tesla.Env.client, String.t, boolean(), keyword()) :: {:ok, nil} | {:ok, OpenXchangeClient.Model.InitResponse.t} | {:error, Tesla.Env.t}
  def init(connection, flow, redirect, opts \\ []) do
    optional_params = %{
      :"hash" => :query,
      :"version" => :query,
      :"client" => :form
    }
    %{}
    |> method(:get)
    |> url("/init")
    |> add_param(:form, :"flow", flow)
    |> add_param(:form, :"redirect", redirect)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %OpenXchangeClient.Model.InitResponse{}},
      { 302, false}
    ])
  end

  @doc """
  Initiate the communication with the OpenID module
  The init request as a POST is for thirdParty flow only. Will directly inititate the login process. 

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - flow (String.t): Only 'thirdParty' as value possible. 
  - redirect (boolean()): Describes wether the response will be in form of a redirect or an URL placed in a 'redirect' parameter  in a JSON body. 
  - opts (KeywordList): [optional] Optional parameters
    - :hash (String.t): The hash value from where the request was triggered for later deeplink purposes.
    - :version (String.t): The client version.
    - :client (String.t): The client identifier.
  ## Returns

  {:ok, OpenXchangeClient.Model.InitResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec init_0(Tesla.Env.client, String.t, boolean(), keyword()) :: {:ok, nil} | {:ok, OpenXchangeClient.Model.InitResponse.t} | {:error, Tesla.Env.t}
  def init_0(connection, flow, redirect, opts \\ []) do
    optional_params = %{
      :"hash" => :query,
      :"version" => :query,
      :"client" => :form
    }
    %{}
    |> method(:post)
    |> url("/init")
    |> add_param(:form, :"flow", flow)
    |> add_param(:form, :"redirect", redirect)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %OpenXchangeClient.Model.InitResponse{}},
      { 302, false}
    ])
  end

  @doc """
  Initiate the communication with the OpenID module
  The logout request will terminate everx session for the current user and redirect him to the  configured after logout page. 

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - state (String.t): The state which started the logout process.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec logout(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def logout(connection, state, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/logout")
    |> add_param(:query, :"state", state)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 302, false}
    ])
  end
end
