# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Api.Image do
  @moduledoc """
  API calls for all endpoints tagged `Image`.
  """

  alias OpenXchangeClient.Connection
  import OpenXchangeClient.RequestBuilder


  @doc """
  Requests a contact's profile image.
  <b>Important:</b> This endpoint is deprecated and will be removed in the future. Use the new /contacts/picture endpoint instead.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - folder (String.t): The folder ID in which the contact resides.
  - id (integer()): The object ID of the contact.
  - opts (KeywordList): [optional] Optional parameters
    - :transformation_needed (boolean()): Indicate if the image needs to be transformed.
    - :crop_width (integer()): The width a cropped image should have. Needs to be a bigger value than the images width.
    - :crop_height (integer()): The height a cropped image should have. Needs to be a bigger value than the images hight.
    - :rotate (boolean()): Indicate if the image should get rotated
    - :compress (boolean()): Indicate if the image should be compressed. Output format depends on scaleType.
    - :width (integer()): The maximum width of the target image. Can not be greater than the value set in 'com.openexchange.tools.images.maxWidth'. Default is 4096.
    - :height (integer()): The maximum height of the target image. Can not be greater than the value set in 'com.openexchange.tools.images.maxHeight'. Default is 4096.
    - :shrink_only (boolean()): Set to 'true' to only scale images 'greater than' target size
    - :scale_type (String.t): The scale type to use.
  ## Returns

  {:ok, String.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_contact_profile_image(Tesla.Env.client, String.t, integer(), keyword()) :: {:ok, nil} | {:ok, String.t} | {:error, Tesla.Env.t}
  def get_contact_profile_image(connection, folder, id, opts \\ []) do
    optional_params = %{
      :"transformationNeeded" => :query,
      :"cropWidth" => :query,
      :"cropHeight" => :query,
      :"rotate" => :query,
      :"compress" => :query,
      :"width" => :query,
      :"height" => :query,
      :"shrinkOnly" => :query,
      :"scaleType" => :query
    }
    %{}
    |> method(:get)
    |> url("/image/contact/picture")
    |> add_param(:query, :"folder", folder)
    |> add_param(:query, :"id", id)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, false},
      { 400, false}
    ])
  end

  @doc """
  Requests an inline image from a mail.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - folder (String.t): The folder ID in which the mail resides.
  - id (String.t): The object ID of the mail.
  - uid (String.t): The identifier of the image inside the referenced mail.
  - opts (KeywordList): [optional] Optional parameters
    - :account_id (integer()): The mail account identifier
  ## Returns

  {:ok, String.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_inline_mail_image(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:ok, String.t} | {:error, Tesla.Env.t}
  def get_inline_mail_image(connection, folder, id, uid, opts \\ []) do
    optional_params = %{
      :"accountId" => :query
    }
    %{}
    |> method(:get)
    |> url("/image/mail/picture")
    |> add_param(:query, :"folder", folder)
    |> add_param(:query, :"id", id)
    |> add_param(:query, :"uid", uid)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, false},
      { 400, false}
    ])
  end

  @doc """
  Requests an image that was previously uploaded with the ajax file upload module.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - uid (String.t): The identifier of the uploaded image.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, String.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_managed_image_file(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, String.t} | {:error, Tesla.Env.t}
  def get_managed_image_file(connection, uid, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/image/mfile/picture")
    |> add_param(:query, :"uid", uid)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, false},
      { 400, false}
    ])
  end

  @doc """
  Requests a MP3 cover image.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - id (String.t): The identifier of the uploaded image.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, String.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_mp3_cover_image(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, String.t} | {:error, Tesla.Env.t}
  def get_mp3_cover_image(connection, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/image/file/mp3cover")
    |> add_param(:query, :"id", id)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, false},
      { 400, false}
    ])
  end

  @doc """
  Requests an image for a trusted mail

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - uid (String.t): The identifier of the image previously obtained from the authentication_results field of the mail module.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, String.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_trusted_mail_picture(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, String.t} | {:error, Tesla.Env.t}
  def get_trusted_mail_picture(connection, uid, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/image/mail/trustedMail/picture")
    |> add_param(:query, :"uid", uid)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, false},
      { 400, false}
    ])
  end

  @doc """
  Requests a user's profile image.
  <b>Important:</b> This endpoint is deprecated and will be removed in the future. Use the new /contacts/picture endpoint instead.

  ## Parameters

  - connection (OpenXchangeClient.Connection): Connection to server
  - id (String.t): The object ID of the user.
  - opts (KeywordList): [optional] Optional parameters
    - :transformation_needed (boolean()): Indicate if the image needs to be transformed.
    - :crop_width (integer()): The width a cropped image should have. Needs to be a bigger value than the images width.
    - :crop_height (integer()): The height a cropped image should have. Needs to be a bigger value than the images hight.
    - :rotate (boolean()): Indicate if the image should get rotated
    - :compress (boolean()): Indicate if the image should be compressed. Output format depends on scaleType.
    - :width (integer()): The maximum width of the target image. Can not be greater than the value set in 'com.openexchange.tools.images.maxWidth'. Default is 4096.
    - :height (integer()): The maximum height of the target image. Can not be greater than the value set in 'com.openexchange.tools.images.maxHeight'. Default is 4096.
    - :shrink_only (boolean()): Set to 'true' to only scale images 'greater than' target size
    - :scale_type (String.t): The scale type to use.
  ## Returns

  {:ok, String.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_user_profile_image(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, String.t} | {:error, Tesla.Env.t}
  def get_user_profile_image(connection, id, opts \\ []) do
    optional_params = %{
      :"transformationNeeded" => :query,
      :"cropWidth" => :query,
      :"cropHeight" => :query,
      :"rotate" => :query,
      :"compress" => :query,
      :"width" => :query,
      :"height" => :query,
      :"shrinkOnly" => :query,
      :"scaleType" => :query
    }
    %{}
    |> method(:get)
    |> url("/image/user/picture")
    |> add_param(:query, :"id", id)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, false},
      { 400, false}
    ])
  end
end
