# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Api.MailCategories do
  @moduledoc """
  API calls for all endpoints tagged `MailCategories`.
  """

  alias OpenXchangeClient.Connection
  import OpenXchangeClient.RequestBuilder


  @doc """
  Moves mails to the given category

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - category_id (String.t): The identifier of a category.
  - body ([OpenXchangeClient.Model.MailCategoriesMoveBody.t]): 'A JSON array of mail identifier, e.g.: [{\"id\":ID, \"folder_id\":FID},{\"id\":ID2, \"folder_id\":FID2}, {...}]'  
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, OpenXchangeClient.Model.CommonResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec move_mails(Tesla.Env.client, String.t, String.t, list(OpenXchangeClient.Model.MailCategoriesMoveBody.t), keyword()) :: {:ok, OpenXchangeClient.Model.CommonResponse.t} | {:error, Tesla.Env.t}
  def move_mails(connection, session, category_id, body, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/mail/categories?action&#x3D;move")
    |> add_param(:query, :"session", session)
    |> add_param(:query, :"category_id", category_id)
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %OpenXchangeClient.Model.CommonResponse{}}
    ])
  end

  @doc """
  Add a new rule
  Adds a new rule with the given mail addresses to the given category and optionally reorganize all existing mails in the inbox.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - category_id (String.t): The identifier of a category.
  - body (MailCategoriesTrainBody): 'A JSON object containing a \"from\" field which contains an array of mail addresses.'  
  - opts (KeywordList): [optional] Optional parameters
    - :apply_for_existing (boolean()): A flag indicating whether old mails should be reorganized. Defaults to 'false'.
    - :apply_for_future_ones (boolean()): A flag indicating whether a rule should be created or not. Defaults to 'true'.
  ## Returns

  {:ok, OpenXchangeClient.Model.CommonResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec train(Tesla.Env.client, String.t, String.t, OpenXchangeClient.Model.MailCategoriesTrainBody.t, keyword()) :: {:ok, OpenXchangeClient.Model.CommonResponse.t} | {:error, Tesla.Env.t}
  def train(connection, session, category_id, body, opts \\ []) do
    optional_params = %{
      :"apply-for-existing" => :query,
      :"apply-for-future-ones" => :query
    }
    %{}
    |> method(:put)
    |> url("/mail/categories?action&#x3D;train")
    |> add_param(:query, :"session", session)
    |> add_param(:query, :"category_id", category_id)
    |> add_param(:body, :body, body)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %OpenXchangeClient.Model.CommonResponse{}}
    ])
  end

  @doc """
  Retrieves the unread counts of active mail categories

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - opts (KeywordList): [optional] Optional parameters
    - :category_ids (String.t): A comma separated list of category identifiers. If set only the unread counters of this categories are retrieved.
  ## Returns

  {:ok, OpenXchangeClient.Model.MailCategoriesUnreadResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec unread(Tesla.Env.client, String.t, keyword()) :: {:ok, OpenXchangeClient.Model.MailCategoriesUnreadResponse.t} | {:error, Tesla.Env.t}
  def unread(connection, session, opts \\ []) do
    optional_params = %{
      :"category_ids" => :query
    }
    %{}
    |> method(:get)
    |> url("/mail/categories?action&#x3D;unread")
    |> add_param(:query, :"session", session)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %OpenXchangeClient.Model.MailCategoriesUnreadResponse{}}
    ])
  end
end
