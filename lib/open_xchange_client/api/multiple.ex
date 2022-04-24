# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Api.Multiple do
  @moduledoc """
  API calls for all endpoints tagged `Multiple`.
  """

  alias OpenXchangeClient.Connection
  import OpenXchangeClient.RequestBuilder

  @doc """
  Processes multiple requests to other modules in a single request.
  #### Not supported requests are:  * the ones from modules login and multiple  * POST requests with a multipart encoding (uploads)  * GET requests which do not use an object as described in [Low level protocol](#low-level-protocol)  #### Request body A JSON array with JSON objects describing the requests. Each object contains a field `module` with the name of the request's module and the field `action` with the concrete request action to execute. Additionally the parameters of the request are added as fields too. A session parameter is not included! If the request has a request body itself, this body is stored as a JSON object in a field `data`.  #### Example: query reminder range and update a reminder's alarm ```json [{\"module\":\"reminder\",\"action\":\"range\",\"end\":1497461067180},{\"module\":\"reminder\",\"action\":\"remindAgain\",\"id\":51,\"data\":{\"alarm\":1459478800000}}] ``` 

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - body ([OpenXchangeClient.Model.SingleRequest.t]): A JSON array with JSON objects, each describing one request.
  - opts (KeywordList): [optional] Optional parameters
    - :continue (boolean()): Specifies whether processing of requests should stop when an error occurs, or whether all request should be processed regardless of errors.
  ## Returns

  {:ok, OpenXchangeClient.Model.MultipleResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec process(
          Tesla.Env.client(),
          String.t(),
          list(OpenXchangeClient.Model.SingleRequest.t()),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, OpenXchangeClient.Model.MultipleResponse.t()}
          | {:error, Tesla.Env.t()}
  def process(connection, session, body, opts \\ []) do
    optional_params = %{
      :continue => :query
    }

    %{}
    |> method(:put)
    |> url("/multiple")
    |> add_param(:query, :session, session)
    |> add_param(:body, :body, body)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.MultipleResponse{}},
      {400, false}
    ])
  end
end