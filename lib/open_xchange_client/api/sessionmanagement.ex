# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Api.Sessionmanagement do
  @moduledoc """
  API calls for all endpoints tagged `Sessionmanagement`.
  """

  alias OpenXchangeClient.Connection
  import OpenXchangeClient.RequestBuilder


  @doc """
  Get all user's sessions

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, OpenXchangeClient.Model.AllSessionsResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec all(Tesla.Env.client, String.t, keyword()) :: {:ok, OpenXchangeClient.Model.AllSessionsResponse.t} | {:error, Tesla.Env.t}
  def all(connection, session, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/sessionmanagement?action&#x3D;all")
    |> add_param(:query, :"session", session)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %OpenXchangeClient.Model.AllSessionsResponse{}}
    ])
  end

  @doc """
  Removes all user's session expect given and blacklisted

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec clear(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def clear(connection, session, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/sessionmanagement?action&#x3D;clear")
    |> add_param(:query, :"session", session)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, false}
    ])
  end

  @doc """
  Remove user's session

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - body ([String.t]): A JSON array containing all session Ids to delete
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec delete(Tesla.Env.client, String.t, list(String.t), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def delete(connection, session, body, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/sessionmanagement?action&#x3D;delete")
    |> add_param(:query, :"session", session)
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, false}
    ])
  end
end
