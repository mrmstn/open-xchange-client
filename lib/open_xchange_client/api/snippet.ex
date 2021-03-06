# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Api.Snippet do
  @moduledoc """
  API calls for all endpoints tagged `Snippet`.
  """

  alias OpenXchangeClient.Connection
  import OpenXchangeClient.RequestBuilder

  @doc """
  Attaches one or more files to an existing snippet.
  It can be uploaded multiple files at once. Each file must be specified in an own form field (the form field name is arbitrary).

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - id (String.t): The identifier of the snippet.
  - type (String.t): The file type filter to define which file types are allowed during upload. Currently supported filters are: file (for all), text (for `text/*`), media (for image, audio or video), image (for `image/*`), audio (for `audio/*`), video (for `video/*`) and application (for `application/*`).
  - file (String.t): The attachment file.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, String.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec add_snippet_attachment(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, String.t()} | {:error, Tesla.Env.t()}
  def add_snippet_attachment(connection, session, id, type, file, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/snippet?action=attach")
    |> add_param(:query, :session, session)
    |> add_param(:query, :id, id)
    |> add_param(:query, :type, type)
    |> add_param(:file, :file, file)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, false}
    ])
  end

  @doc """
  Creates a snippet.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - body (SnippetData): A JSON object describing the snippet excluding its attachment(s). For adding attachments see `/snippet?action=attach` request.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, OpenXchangeClient.Model.SnippetUpdateResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec create_snippet(
          Tesla.Env.client(),
          String.t(),
          OpenXchangeClient.Model.SnippetData.t(),
          keyword()
        ) :: {:ok, OpenXchangeClient.Model.SnippetUpdateResponse.t()} | {:error, Tesla.Env.t()}
  def create_snippet(connection, session, body, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/snippet?action=new")
    |> add_param(:query, :session, session)
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.SnippetUpdateResponse{}}
    ])
  end

  @doc """
  Deletes one or multiple snippets.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - opts (KeywordList): [optional] Optional parameters
    - :id (String.t): The identifier of the snippet. Otherwise provide one or more identifiers in the request body's JSON array.
    - :body ([String.t]): A JSON array containing the identifiers of the snippets to delete.
  ## Returns

  {:ok, OpenXchangeClient.Model.CommonResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec delete_snippet(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, OpenXchangeClient.Model.CommonResponse.t()} | {:error, Tesla.Env.t()}
  def delete_snippet(connection, session, opts \\ []) do
    optional_params = %{
      :id => :query,
      :body => :body
    }

    %{}
    |> method(:put)
    |> url("/snippet?action=delete")
    |> add_param(:query, :session, session)
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.CommonResponse{}}
    ])
  end

  @doc """
  Gets all snippets.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - opts (KeywordList): [optional] Optional parameters
    - :type (String.t): A list of comma-separated types to filter, e.g. \"signature\".
  ## Returns

  {:ok, OpenXchangeClient.Model.SnippetsResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_all_snippets(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, OpenXchangeClient.Model.SnippetsResponse.t()} | {:error, Tesla.Env.t()}
  def get_all_snippets(connection, session, opts \\ []) do
    optional_params = %{
      :type => :query
    }

    %{}
    |> method(:get)
    |> url("/snippet?action=all")
    |> add_param(:query, :session, session)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.SnippetsResponse{}}
    ])
  end

  @doc """
  Gets a snippet.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - id (String.t): The identifier of the snippet.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, OpenXchangeClient.Model.SnippetResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_snippet(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, OpenXchangeClient.Model.SnippetResponse.t()} | {:error, Tesla.Env.t()}
  def get_snippet(connection, session, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/snippet?action=get")
    |> add_param(:query, :session, session)
    |> add_param(:query, :id, id)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.SnippetResponse{}}
    ])
  end

  @doc """
  Gets the attachment of a snippet.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - id (String.t): The identifier of the snippet.
  - attachmentid (String.t): The identifier of the attachment.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, String.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_snippet_attachment(Tesla.Env.client(), String.t(), String.t(), String.t(), keyword()) ::
          {:ok, String.t()} | {:error, Tesla.Env.t()}
  def get_snippet_attachment(connection, session, id, attachmentid, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/snippet?action=getattachment")
    |> add_param(:query, :session, session)
    |> add_param(:query, :id, id)
    |> add_param(:query, :attachmentid, attachmentid)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, false},
      {500, false}
    ])
  end

  @doc """
  Gets a list of snippets.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - body ([String.t]): A JSON array of snippet identifiers.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, OpenXchangeClient.Model.SnippetsResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_snippet_list(Tesla.Env.client(), String.t(), list(String.t()), keyword()) ::
          {:ok, OpenXchangeClient.Model.SnippetsResponse.t()} | {:error, Tesla.Env.t()}
  def get_snippet_list(connection, session, body, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/snippet?action=list")
    |> add_param(:query, :session, session)
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.SnippetsResponse{}}
    ])
  end

  @doc """
  Detaches one or more files from an existing snippet.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - id (String.t): The identifier of the snippet.
  - body ([OpenXchangeClient.Model.SnippetAttachmentListElement.t]): A JSON array with JSON objects each containing a field `id` with the identifier of an attachment that shall be removed.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, OpenXchangeClient.Model.SnippetUpdateResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec remove_snippet_attachments(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          list(OpenXchangeClient.Model.SnippetAttachmentListElement.t()),
          keyword()
        ) :: {:ok, OpenXchangeClient.Model.SnippetUpdateResponse.t()} | {:error, Tesla.Env.t()}
  def remove_snippet_attachments(connection, session, id, body, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/snippet?action=detach")
    |> add_param(:query, :session, session)
    |> add_param(:query, :id, id)
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.SnippetUpdateResponse{}}
    ])
  end

  @doc """
  Updates a snippet.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - id (String.t): The identifier of the snippet.
  - body (SnippetData): A JSON object providing the fields that should be changed, excluding its attachments. For deleting attachments see `/snippet?action=detach` request.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, OpenXchangeClient.Model.SnippetResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec update_snippet(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          OpenXchangeClient.Model.SnippetData.t(),
          keyword()
        ) :: {:ok, OpenXchangeClient.Model.SnippetResponse.t()} | {:error, Tesla.Env.t()}
  def update_snippet(connection, session, id, body, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/snippet?action=update")
    |> add_param(:query, :session, session)
    |> add_param(:query, :id, id)
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %OpenXchangeClient.Model.SnippetResponse{}}
    ])
  end
end
