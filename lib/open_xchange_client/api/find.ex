# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Api.Find do
  @moduledoc """
  API calls for all endpoints tagged `Find`.
  """

  alias OpenXchangeClient.Connection
  import OpenXchangeClient.RequestBuilder


  @doc """
  Suggests possible search filters based on a user's input.
  Filters are grouped into categories, the so called facets. #### Facets The style of a facet is responsible for how the according object is structured, how it is handled on the server-side and how the client has to handle it. We distinguish three styles of facets:  * simple  * default  * exclusive ___ Every facet value contains an embedded `filter` object. The filter must not be changed by the client, it has to be seen as a black-box. Instead the filters of selected facet values have to be copied and sent to the server with the subsequent requests. #### Simple facets A simple facet is a special facet that has exactly one value. The facet's type and its value are strictly coupled, in a way that a display name for both, facet and value would be redundant. A simple facet generally denotes a logical field like 'phone number'. Internally this logical field can map to several internal fields (e.g. 'phone_private', 'phone_mobile', 'phone_business'). In clients the facet as a whole can be displayed as a single item. Example: \"Search for 'term' in field 'phone number'\". #### Default facets A default facet contains multiple values and may be present multiple times in search requests to filter results by a combination of different values (e.g. \"mails with 'foo' and 'bar' in subject\").  Facet values may be one- or two-dimensional. A one-dimensional value can be displayed as is and contains an according filter object. A two-dimensional value contains an array \"options\" with every option defining different semantics of how the value is used to filter the search results. #### Exclusive facets An exclusive facet is a facet where the contained values are mutually exclusive. That means that the facet must only be present once in an autocomplete or query request.  Facet values may be one- or two-dimensional. A one-dimensional value can be displayed as is and contains an according filter object. A two-dimensional value contains an array \"options\" with every option defining different semantics of how the value is used to filter the search results. 

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - module (String.t): The name of the module within that the search shall be performed. Possible modules are: mail, contacts, calendar, tasks, drive. Because a user may have limited access to modules the useable modules might only be a subset of the available ones. Retrieve a list of allowed modules by querying the user configuration, see module \"config\" (path `search`) or module \"JSlob\" (e.g. `id=io.ox/core`). 
  - body (FindAutoCompleteBody): A JSON object containing the user's input (specified in field `prefix`), already selected `facets`, and possible `options`.
  - opts (KeywordList): [optional] Optional parameters
    - :limit (integer()): The maximum number of values returned per facet.
  ## Returns

  {:ok, OpenXchangeClient.Model.FindAutoCompleteResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec do_auto_complete(Tesla.Env.client, String.t, String.t, OpenXchangeClient.Model.FindAutoCompleteBody.t, keyword()) :: {:ok, OpenXchangeClient.Model.FindAutoCompleteResponse.t} | {:error, Tesla.Env.t}
  def do_auto_complete(connection, session, module, body, opts \\ []) do
    optional_params = %{
      :"limit" => :query
    }
    %{}
    |> method(:put)
    |> url("/find?action&#x3D;autocomplete")
    |> add_param(:query, :"session", session)
    |> add_param(:query, :"module", module)
    |> add_param(:body, :body, body)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %OpenXchangeClient.Model.FindAutoCompleteResponse{}}
    ])
  end

  @doc """
  Performs the actual search and returns the found items.
  Before querying the search you should fetch the search filters (facets) by calling the [/find?action=autocomplete](#operation--find-action-autocomplete-put)  request. #### Active facets Every value that has been selected by a user must be remembered and provided with every subsequent request. The representation of a facet within a request body differs from the one within an autocomplete response. We call those \"active facets\". Their representation is independent from their style. 

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - session (String.t): A session ID previously obtained from the login module.
  - module (String.t): The name of the module within that the search shall be performed. Possible modules are: mail, contacts, calendar, tasks, drive. Because a user may have limited access to modules the useable modules might only be a subset of the available ones. Retrieve a list of allowed modules by querying the user configuration, see module \"config\" (path `search`) or module \"JSlob\" (e.g. `id=io.ox/core`). 
  - body (FindQueryBody): A JSON object containing the selected `facets` and possible `options`. For pagination the keys `start` and `size` can be set.
  - opts (KeywordList): [optional] Optional parameters
    - :columns (String.t): A comma-separated list of module-specific columns that shall be contained in the response items.  See [Column identifiers](#column-identifiers) for the numeric IDs of fields for specific modules. 
    - :fields (String.t): A comma-separated list of field identifiers. This parameter must be used instead of columns in case the module is set to 'calendar'.
  ## Returns

  {:ok, OpenXchangeClient.Model.FindQueryResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec do_query(Tesla.Env.client, String.t, String.t, OpenXchangeClient.Model.FindQueryBody.t, keyword()) :: {:ok, OpenXchangeClient.Model.FindQueryResponse.t} | {:error, Tesla.Env.t}
  def do_query(connection, session, module, body, opts \\ []) do
    optional_params = %{
      :"columns" => :query,
      :"fields" => :query
    }
    %{}
    |> method(:put)
    |> url("/find?action&#x3D;query")
    |> add_param(:query, :"session", session)
    |> add_param(:query, :"module", module)
    |> add_param(:body, :body, body)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %OpenXchangeClient.Model.FindQueryResponse{}}
    ])
  end
end
