# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Api.Sync do
  @moduledoc """
  API calls for all endpoints tagged `Sync`.
  """

  alias OpenXchangeClient.Connection
  import OpenXchangeClient.RequestBuilder

  @doc """
  Clears a folder's content.
  #### Note Although the request offers to clear multiple folders at once it is recommended to clear only one folder per request since if any exception occurs (e.g. missing permissions) the complete request is going to be aborted. 

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, OpenXchangeClient.Model.FoldersCleanUpResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec clear_folders_synced(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, OpenXchangeClient.Model.FoldersCleanUpResponse.t()} | {:error, Tesla.Env.t()}
  def clear_folders_synced(connection, session, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/sync?action&#x3D;refresh_server")
    |> add_param(:query, :session, session)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.FoldersCleanUpResponse{}}
    ])
  end
end
