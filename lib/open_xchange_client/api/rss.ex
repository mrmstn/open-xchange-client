# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Api.RSS do
  @moduledoc """
  API calls for all endpoints tagged `RSS`.
  """

  alias OpenXchangeClient.Connection
  import OpenXchangeClient.RequestBuilder


  @doc """
  Get the RSS Feed of a specific link.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - feed_url ([String.t]): An array containing all RSS Feeds to load. Array can consist of one element.
  - opts (KeywordList): [optional] Optional parameters
    - :limit (integer()): Limitation of elements returned (in total).
    - :sort (String.t): The identifier which determines the sort order of the response.
    - :order (String.t): \"asc\" if the response entities should be sorted in the ascending order, \"desc\" if the response entries should be sorted in the descending order.
  ## Returns

  {:ok, OpenXchangeClient.Model.RssResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_rss_feed(Tesla.Env.client, String.t, list(String.t), keyword()) :: {:ok, OpenXchangeClient.Model.RssResponse.t} | {:error, Tesla.Env.t}
  def get_rss_feed(connection, session, feed_url, opts \\ []) do
    optional_params = %{
      :"limit" => :query,
      :"sort" => :query,
      :"order" => :query
    }
    %{}
    |> method(:put)
    |> url("/rss")
    |> add_param(:query, :"session", session)
    |> add_param(:query, :"feedUrl", feed_url)
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %OpenXchangeClient.Model.RssResponse{}}
    ])
  end
end
