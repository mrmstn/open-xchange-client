# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Api.Userfeedback do
  @moduledoc """
  API calls for all endpoints tagged `Userfeedback`.
  """

  alias OpenXchangeClient.Connection
  import OpenXchangeClient.RequestBuilder

  @doc """
  Store user feedback

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - type (String.t): The feedback type
  - body (String.t): A JSON object describing the feedback
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec store(Tesla.Env.client(), String.t(), String.t(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def store(connection, session, type, body, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/userfeedback?action&#x3D;store")
    |> add_param(:query, :session, session)
    |> add_param(:query, :type, type)
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, false}
    ])
  end
end
