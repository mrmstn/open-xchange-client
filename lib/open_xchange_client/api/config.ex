# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Api.Config do
  @moduledoc """
  API calls for all endpoints tagged `Config`.
  """

  alias OpenXchangeClient.Connection
  import OpenXchangeClient.RequestBuilder

  @doc """
  Gets data of a configuration node.
  The configuration is stored in a tree. Each node of the tree has a name and a value. The values of leaf nodes are strings which store the actual configuration data. The values of inner nodes are defined recursively as objects with one field for each child node. The name and the value of each field is the name and the value of the corresponding child node, respectively.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - path (String.t): The path to the node.
  - session (String.t): A session ID previously obtained from the login module.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, OpenXchangeClient.Model.ConfigResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_config_node(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, OpenXchangeClient.Model.ConfigResponse.t()} | {:error, Tesla.Env.t()}
  def get_config_node(connection, path, session, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/config/#{path}")
    |> add_param(:query, :session, session)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.ConfigResponse{}}
    ])
  end

  @doc """
  Gets a property of the configuration.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - name (String.t): The name of the property to return.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, OpenXchangeClient.Model.ConfigPropertyResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_config_property(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, OpenXchangeClient.Model.ConfigPropertyResponse.t()} | {:error, Tesla.Env.t()}
  def get_config_property(connection, session, name, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/config?action=get_property")
    |> add_param(:query, :session, session)
    |> add_param(:query, :name, name)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.ConfigPropertyResponse{}}
    ])
  end

  @doc """
  Sets the value of a configuration node.
  The configuration is stored in a tree. Each node of the tree has a name and a value. The values of leaf nodes are strings which store the actual configuration data. The values of inner nodes are defined recursively as objects with one field for each child node. The name and the value of each field is the name and the value of the corresponding child node, respectively.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - path (String.t): The path to the node.
  - session (String.t): A session ID previously obtained from the login module.
  - body (ConfigBody): A JSON object containing the value of the config node.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, OpenXchangeClient.Model.CommonResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec put_config_node(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          OpenXchangeClient.Model.ConfigBody.t(),
          keyword()
        ) :: {:ok, OpenXchangeClient.Model.CommonResponse.t()} | {:error, Tesla.Env.t()}
  def put_config_node(connection, path, session, body, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/config/#{path}")
    |> add_param(:query, :session, session)
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.CommonResponse{}}
    ])
  end

  @doc """
  Sets a property of the configuration.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - name (String.t): The name of the property to return.
  - body (ConfigPropertyBody): A JSON object providing the value to set (Example: {\"value\":\"test123\"}).
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, OpenXchangeClient.Model.ConfigPropertyResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec set_config_property(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          OpenXchangeClient.Model.ConfigPropertyBody.t(),
          keyword()
        ) :: {:ok, OpenXchangeClient.Model.ConfigPropertyResponse.t()} | {:error, Tesla.Env.t()}
  def set_config_property(connection, session, name, body, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/config?action=set_property")
    |> add_param(:query, :session, session)
    |> add_param(:query, :name, name)
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.ConfigPropertyResponse{}}
    ])
  end
end
