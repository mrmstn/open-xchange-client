# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Api.Mailfilter do
  @moduledoc """
  API calls for all endpoints tagged `Mailfilter`.
  """

  alias OpenXchangeClient.Connection
  import OpenXchangeClient.RequestBuilder


  @doc """
  Creates a mail filter rule.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - body (MailFilterRule): A JSON object describing the mail filter rule. If the field `position` is included, it's taken as the position of the rule in the array on the server side (this value shouldn't be greater than the size of all rules).
  - opts (KeywordList): [optional] Optional parameters
    - :username (String.t): Must contain the user name for **admin mode**. So the normal credentials are taken for authentication but the mail filter of the user with this username is being changed.
  ## Returns

  {:ok, OpenXchangeClient.Model.MailFilterCreationResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec create_rule(Tesla.Env.client, String.t, OpenXchangeClient.Model.MailFilterRule.t, keyword()) :: {:ok, OpenXchangeClient.Model.MailFilterCreationResponse.t} | {:error, Tesla.Env.t}
  def create_rule(connection, session, body, opts \\ []) do
    optional_params = %{
      :"username" => :query
    }
    %{}
    |> method(:put)
    |> url("/mailfilter?action&#x3D;new")
    |> add_param(:query, :"session", session)
    |> add_param(:body, :body, body)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %OpenXchangeClient.Model.MailFilterCreationResponse{}}
    ])
  end

  @doc """
  Creates a mail filter rule.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - body (MailFilterRulev2): A JSON object describing the mail filter rule. If the field `position` is included, it's taken as the position of the rule in the array on the server side (this value shouldn't be greater than the size of all rules).
  - opts (KeywordList): [optional] Optional parameters
    - :username (String.t): Must contain the user name for **admin mode**. So the normal credentials are taken for authentication but the mail filter of the user with this username is being changed.
  ## Returns

  {:ok, OpenXchangeClient.Model.MailFilterCreationResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec create_rule_0(Tesla.Env.client, String.t, OpenXchangeClient.Model.MailFilterRulev2.t, keyword()) :: {:ok, OpenXchangeClient.Model.MailFilterCreationResponse.t} | {:error, Tesla.Env.t}
  def create_rule_0(connection, session, body, opts \\ []) do
    optional_params = %{
      :"username" => :query
    }
    %{}
    |> method(:put)
    |> url("/mailfilter/v2?action&#x3D;new")
    |> add_param(:query, :"session", session)
    |> add_param(:body, :body, body)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %OpenXchangeClient.Model.MailFilterCreationResponse{}}
    ])
  end

  @doc """
  Deletes a mail filter rule.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - body (MailFilterDeletionBody): A JSON object with the ID of the rule to delete.
  - opts (KeywordList): [optional] Optional parameters
    - :username (String.t): Must contain the user name for **admin mode**. So the normal credentials are taken for authentication but the mail filter of the user with this username is being changed.
  ## Returns

  {:ok, OpenXchangeClient.Model.CommonResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec delete_rule(Tesla.Env.client, String.t, OpenXchangeClient.Model.MailFilterDeletionBody.t, keyword()) :: {:ok, OpenXchangeClient.Model.CommonResponse.t} | {:error, Tesla.Env.t}
  def delete_rule(connection, session, body, opts \\ []) do
    optional_params = %{
      :"username" => :query
    }
    %{}
    |> method(:put)
    |> url("/mailfilter?action&#x3D;delete")
    |> add_param(:query, :"session", session)
    |> add_param(:body, :body, body)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %OpenXchangeClient.Model.CommonResponse{}}
    ])
  end

  @doc """
  Deletes a mail filter rule.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - body (MailFilterDeletionBody): A JSON object with the ID of the rule to delete.
  - opts (KeywordList): [optional] Optional parameters
    - :username (String.t): Must contain the user name for **admin mode**. So the normal credentials are taken for authentication but the mail filter of the user with this username is being changed.
  ## Returns

  {:ok, OpenXchangeClient.Model.CommonResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec delete_rule_0(Tesla.Env.client, String.t, OpenXchangeClient.Model.MailFilterDeletionBody.t, keyword()) :: {:ok, OpenXchangeClient.Model.CommonResponse.t} | {:error, Tesla.Env.t}
  def delete_rule_0(connection, session, body, opts \\ []) do
    optional_params = %{
      :"username" => :query
    }
    %{}
    |> method(:put)
    |> url("/mailfilter/v2?action&#x3D;delete")
    |> add_param(:query, :"session", session)
    |> add_param(:body, :body, body)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %OpenXchangeClient.Model.CommonResponse{}}
    ])
  end

  @doc """
  Deletes the whole mail filter script.
  This call is only used as workaround for parsing errors in the backend, so that the user is able to kick a whole script if it contains errors in the grammar.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - opts (KeywordList): [optional] Optional parameters
    - :username (String.t): Must contain the user name for **admin mode**. So the normal credentials are taken for authentication but the mail filter of the user with this username is being changed.
  ## Returns

  {:ok, OpenXchangeClient.Model.CommonResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec delete_script(Tesla.Env.client, String.t, keyword()) :: {:ok, OpenXchangeClient.Model.CommonResponse.t} | {:error, Tesla.Env.t}
  def delete_script(connection, session, opts \\ []) do
    optional_params = %{
      :"username" => :query
    }
    %{}
    |> method(:put)
    |> url("/mailfilter?action&#x3D;deletescript")
    |> add_param(:query, :"session", session)
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %OpenXchangeClient.Model.CommonResponse{}}
    ])
  end

  @doc """
  Deletes the whole mail filter script.
  This call is only used as workaround for parsing errors in the backend, so that the user is able to kick a whole script if it contains errors in the grammar.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - opts (KeywordList): [optional] Optional parameters
    - :username (String.t): Must contain the user name for **admin mode**. So the normal credentials are taken for authentication but the mail filter of the user with this username is being changed.
  ## Returns

  {:ok, OpenXchangeClient.Model.CommonResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec delete_script_0(Tesla.Env.client, String.t, keyword()) :: {:ok, OpenXchangeClient.Model.CommonResponse.t} | {:error, Tesla.Env.t}
  def delete_script_0(connection, session, opts \\ []) do
    optional_params = %{
      :"username" => :query
    }
    %{}
    |> method(:put)
    |> url("/mailfilter/v2?action&#x3D;deletescript")
    |> add_param(:query, :"session", session)
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %OpenXchangeClient.Model.CommonResponse{}}
    ])
  end

  @doc """
  Gets the configuration of the mail filter backend.
  A mail filter can have different rules each containing one command. A command has a test condition and actions that are executed if the condition is true. The list of available comparisions (that can be used in test conditions) and the list of available actions depends on a given test and the mail filter server configuration and must be determined at runtime.  All those dynamic values can be fetched via a config object at startup, which shows the capabilities of the server to the client. 

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - opts (KeywordList): [optional] Optional parameters
    - :username (String.t): Must contain the user name for **admin mode**. So the normal credentials are taken for authentication but the mail filter of the user with this username is being changed.
  ## Returns

  {:ok, OpenXchangeClient.Model.MailFilterConfigResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_config(Tesla.Env.client, String.t, keyword()) :: {:ok, OpenXchangeClient.Model.MailFilterConfigResponse.t} | {:error, Tesla.Env.t}
  def get_config(connection, session, opts \\ []) do
    optional_params = %{
      :"username" => :query
    }
    %{}
    |> method(:get)
    |> url("/mailfilter?action&#x3D;config")
    |> add_param(:query, :"session", session)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %OpenXchangeClient.Model.MailFilterConfigResponse{}}
    ])
  end

  @doc """
  Gets the configuration of the mail filter backend.
  A mail filter can have different rules each containing one command. A command has a test condition and actions that are executed if the condition is true. The list of available comparisions (that can be used in test conditions) and the list of available actions depends on a given test and the mail filter server configuration and must be determined at runtime.  All those dynamic values can be fetched via a config object at startup, which shows the capabilities of the server to the client. 

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - opts (KeywordList): [optional] Optional parameters
    - :username (String.t): Must contain the user name for **admin mode**. So the normal credentials are taken for authentication but the mail filter of the user with this username is being changed.
  ## Returns

  {:ok, OpenXchangeClient.Model.MailFilterConfigResponsev2.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_config_0(Tesla.Env.client, String.t, keyword()) :: {:ok, OpenXchangeClient.Model.MailFilterConfigResponsev2.t} | {:error, Tesla.Env.t}
  def get_config_0(connection, session, opts \\ []) do
    optional_params = %{
      :"username" => :query
    }
    %{}
    |> method(:get)
    |> url("/mailfilter/v2?action&#x3D;config")
    |> add_param(:query, :"session", session)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %OpenXchangeClient.Model.MailFilterConfigResponsev2{}}
    ])
  end

  @doc """
  Gets all mail filter rules.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - opts (KeywordList): [optional] Optional parameters
    - :flag (String.t): If given, only rules with this flag are returned.
    - :username (String.t): Must contain the user name for **admin mode**. So the normal credentials are taken for authentication but the mail filter of the user with this username is being changed.
  ## Returns

  {:ok, OpenXchangeClient.Model.MailFilterRulesResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_rules(Tesla.Env.client, String.t, keyword()) :: {:ok, OpenXchangeClient.Model.MailFilterRulesResponse.t} | {:error, Tesla.Env.t}
  def get_rules(connection, session, opts \\ []) do
    optional_params = %{
      :"flag" => :query,
      :"username" => :query
    }
    %{}
    |> method(:get)
    |> url("/mailfilter?action&#x3D;list")
    |> add_param(:query, :"session", session)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %OpenXchangeClient.Model.MailFilterRulesResponse{}}
    ])
  end

  @doc """
  Gets all mail filter rules.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - opts (KeywordList): [optional] Optional parameters
    - :flag (String.t): If given, only rules with this flag are returned.
    - :username (String.t): Must contain the user name for **admin mode**. So the normal credentials are taken for authentication but the mail filter of the user with this username is being changed.
  ## Returns

  {:ok, OpenXchangeClient.Model.MailFilterRulesResponsev2.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_rules_0(Tesla.Env.client, String.t, keyword()) :: {:ok, OpenXchangeClient.Model.MailFilterRulesResponsev2.t} | {:error, Tesla.Env.t}
  def get_rules_0(connection, session, opts \\ []) do
    optional_params = %{
      :"flag" => :query,
      :"username" => :query
    }
    %{}
    |> method(:get)
    |> url("/mailfilter/v2?action&#x3D;list")
    |> add_param(:query, :"session", session)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %OpenXchangeClient.Model.MailFilterRulesResponsev2{}}
    ])
  end

  @doc """
  Gets the whole mail filter script.
  This call is only used as workaround for parsing errors in the backend, so that the user is able to get the plaintext of a complete script.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - opts (KeywordList): [optional] Optional parameters
    - :username (String.t): Must contain the user name for **admin mode**. So the normal credentials are taken for authentication but the mail filter of the user with this username is being changed.
  ## Returns

  {:ok, OpenXchangeClient.Model.MailFilterScriptResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_script(Tesla.Env.client, String.t, keyword()) :: {:ok, OpenXchangeClient.Model.MailFilterScriptResponse.t} | {:error, Tesla.Env.t}
  def get_script(connection, session, opts \\ []) do
    optional_params = %{
      :"username" => :query
    }
    %{}
    |> method(:put)
    |> url("/mailfilter?action&#x3D;getscript")
    |> add_param(:query, :"session", session)
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %OpenXchangeClient.Model.MailFilterScriptResponse{}}
    ])
  end

  @doc """
  Gets the whole mail filter script.
  This call is only used as workaround for parsing errors in the backend, so that the user is able to get the plaintext of a complete script.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - opts (KeywordList): [optional] Optional parameters
    - :username (String.t): Must contain the user name for **admin mode**. So the normal credentials are taken for authentication but the mail filter of the user with this username is being changed.
  ## Returns

  {:ok, OpenXchangeClient.Model.MailFilterScriptResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_script_0(Tesla.Env.client, String.t, keyword()) :: {:ok, OpenXchangeClient.Model.MailFilterScriptResponse.t} | {:error, Tesla.Env.t}
  def get_script_0(connection, session, opts \\ []) do
    optional_params = %{
      :"username" => :query
    }
    %{}
    |> method(:put)
    |> url("/mailfilter/v2?action&#x3D;getscript")
    |> add_param(:query, :"session", session)
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %OpenXchangeClient.Model.MailFilterScriptResponse{}}
    ])
  end

  @doc """
  Reorders mail filter rules.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - body ([integer()]): A JSON array with unique identifiers, which represents how the corresponding rules are order.
  - opts (KeywordList): [optional] Optional parameters
    - :username (String.t): Must contain the user name for **admin mode**. So the normal credentials are taken for authentication but the mail filter of the user with this username is being changed.
  ## Returns

  {:ok, OpenXchangeClient.Model.CommonResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec reorder_rules(Tesla.Env.client, String.t, list(Integer.t), keyword()) :: {:ok, OpenXchangeClient.Model.CommonResponse.t} | {:error, Tesla.Env.t}
  def reorder_rules(connection, session, body, opts \\ []) do
    optional_params = %{
      :"username" => :query
    }
    %{}
    |> method(:put)
    |> url("/mailfilter?action&#x3D;reorder")
    |> add_param(:query, :"session", session)
    |> add_param(:body, :body, body)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %OpenXchangeClient.Model.CommonResponse{}}
    ])
  end

  @doc """
  Reorders mail filter rules.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - body ([integer()]): A JSON array with unique identifiers, which represents how the corresponding rules are order.
  - opts (KeywordList): [optional] Optional parameters
    - :username (String.t): Must contain the user name for **admin mode**. So the normal credentials are taken for authentication but the mail filter of the user with this username is being changed.
  ## Returns

  {:ok, OpenXchangeClient.Model.CommonResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec reorder_rules_0(Tesla.Env.client, String.t, list(Integer.t), keyword()) :: {:ok, OpenXchangeClient.Model.CommonResponse.t} | {:error, Tesla.Env.t}
  def reorder_rules_0(connection, session, body, opts \\ []) do
    optional_params = %{
      :"username" => :query
    }
    %{}
    |> method(:put)
    |> url("/mailfilter/v2?action&#x3D;reorder")
    |> add_param(:query, :"session", session)
    |> add_param(:body, :body, body)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %OpenXchangeClient.Model.CommonResponse{}}
    ])
  end

  @doc """
  Updates a mail filter rule.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - body (MailFilterRule): A JSON object describing the rule with the `id` set (which identifies the rule to change). Only modified fields are present.
  - opts (KeywordList): [optional] Optional parameters
    - :username (String.t): Must contain the user name for **admin mode**. So the normal credentials are taken for authentication but the mail filter of the user with this username is being changed.
  ## Returns

  {:ok, OpenXchangeClient.Model.CommonResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec update_rule(Tesla.Env.client, String.t, OpenXchangeClient.Model.MailFilterRule.t, keyword()) :: {:ok, OpenXchangeClient.Model.CommonResponse.t} | {:error, Tesla.Env.t}
  def update_rule(connection, session, body, opts \\ []) do
    optional_params = %{
      :"username" => :query
    }
    %{}
    |> method(:put)
    |> url("/mailfilter?action&#x3D;update")
    |> add_param(:query, :"session", session)
    |> add_param(:body, :body, body)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %OpenXchangeClient.Model.CommonResponse{}}
    ])
  end

  @doc """
  Updates a mail filter rule.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - body (MailFilterRulev2): A JSON object describing the rule with the `id` set (which identifies the rule to change). Only modified fields are present.
  - opts (KeywordList): [optional] Optional parameters
    - :username (String.t): Must contain the user name for **admin mode**. So the normal credentials are taken for authentication but the mail filter of the user with this username is being changed.
  ## Returns

  {:ok, OpenXchangeClient.Model.CommonResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec update_rule_0(Tesla.Env.client, String.t, OpenXchangeClient.Model.MailFilterRulev2.t, keyword()) :: {:ok, OpenXchangeClient.Model.CommonResponse.t} | {:error, Tesla.Env.t}
  def update_rule_0(connection, session, body, opts \\ []) do
    optional_params = %{
      :"username" => :query
    }
    %{}
    |> method(:put)
    |> url("/mailfilter/v2?action&#x3D;update")
    |> add_param(:query, :"session", session)
    |> add_param(:body, :body, body)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %OpenXchangeClient.Model.CommonResponse{}}
    ])
  end
end
