# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Api.Capabilities do
  @moduledoc """
  API calls for all endpoints tagged `Capabilities`.
  """

  alias OpenXchangeClient.Connection
  import OpenXchangeClient.RequestBuilder

  @doc """
  Gets all capabilities.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, OpenXchangeClient.Model.CapabilitiesResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_all_capabilities(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, OpenXchangeClient.Model.CapabilitiesResponse.t()} | {:error, Tesla.Env.t()}
  def get_all_capabilities(connection, session, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/capabilities?action&#x3D;all")
    |> add_param(:query, :session, session)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.CapabilitiesResponse{}}
    ])
  end

  @doc """
  Gets a capability.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - id (String.t): The identifier of the capability
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, OpenXchangeClient.Model.CapabilityResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_capability(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, OpenXchangeClient.Model.CapabilityResponse.t()} | {:error, Tesla.Env.t()}
  def get_capability(connection, session, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/capabilities?action&#x3D;get")
    |> add_param(:query, :session, session)
    |> add_param(:query, :id, id)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.CapabilityResponse{}}
    ])
  end
end