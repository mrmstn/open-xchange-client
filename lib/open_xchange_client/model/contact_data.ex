# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.ContactData do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :uid,
    :display_name,
    :first_name,
    :last_name,
    :second_name,
    :suffix,
    :title,
    :street_home,
    :postal_code_home,
    :city_home,
    :state_home,
    :country_home,
    :birthday,
    :marital_status,
    :number_of_children,
    :profession,
    :nickname,
    :spouse_name,
    :anniversary,
    :note,
    :department,
    :position,
    :employee_type,
    :room_number,
    :street_business,
    :postal_code_business,
    :city_business,
    :state_business,
    :country_business,
    :user_id,
    :number_of_employees,
    :sales_volume,
    :tax_id,
    :commercial_register,
    :branches,
    :business_category,
    :info,
    :manager_name,
    :assistant_name,
    :street_other,
    :postal_code_other,
    :city_other,
    :state_other,
    :country_other,
    :telephone_business1,
    :telephone_business2,
    :fax_business,
    :telephone_callback,
    :telephone_car,
    :telephone_company,
    :telephone_home1,
    :telephone_home2,
    :fax_home,
    :cellular_telephone1,
    :cellular_telephone2,
    :telephone_other,
    :fax_other,
    :email1,
    :email2,
    :email3,
    :url,
    :telephone_isdn,
    :telephone_pager,
    :telephone_primary,
    :telephone_radio,
    :telephone_telex,
    :telephone_ttytdd,
    :instant_messenger1,
    :instant_messenger2,
    :telephone_ip,
    :telephone_assistant,
    :company,
    :image1,
    :image1_content_type,
    :image1_url,
    :number_of_images,
    :image_last_modified,
    :distribution_list,
    :number_of_distribution_list,
    :mark_as_distributionlist,
    :file_as,
    :default_address,
    :useCount,
    :yomiFirstName,
    :yomiLastName,
    :yomiCompany,
    :addressHome,
    :addressBusiness,
    :addressOther,
    :userfield01,
    :userfield02,
    :userfield03,
    :userfield04,
    :userfield05,
    :userfield06,
    :userfield07,
    :userfield08,
    :userfield09,
    :userfield10,
    :userfield11,
    :userfield12,
    :userfield13,
    :userfield14,
    :userfield15,
    :userfield16,
    :userfield17,
    :userfield18,
    :userfield19,
    :userfield20,
    :id,
    :created_by,
    :modified_by,
    :creation_date,
    :last_modified,
    :folder_id,
    :categories,
    :private_flag,
    :color_label,
    :number_of_attachments,
    :lastModifiedOfNewestAttachmentUTC
  ]

  @type t :: %__MODULE__{
          :uid => String.t() | nil,
          :display_name => String.t() | nil,
          :first_name => String.t() | nil,
          :last_name => String.t() | nil,
          :second_name => String.t() | nil,
          :suffix => String.t() | nil,
          :title => String.t() | nil,
          :street_home => String.t() | nil,
          :postal_code_home => String.t() | nil,
          :city_home => String.t() | nil,
          :state_home => String.t() | nil,
          :country_home => String.t() | nil,
          :birthday => integer() | nil,
          :marital_status => String.t() | nil,
          :number_of_children => String.t() | nil,
          :profession => String.t() | nil,
          :nickname => String.t() | nil,
          :spouse_name => String.t() | nil,
          :anniversary => integer() | nil,
          :note => String.t() | nil,
          :department => String.t() | nil,
          :position => String.t() | nil,
          :employee_type => String.t() | nil,
          :room_number => String.t() | nil,
          :street_business => String.t() | nil,
          :postal_code_business => String.t() | nil,
          :city_business => String.t() | nil,
          :state_business => String.t() | nil,
          :country_business => String.t() | nil,
          :user_id => integer() | nil,
          :number_of_employees => String.t() | nil,
          :sales_volume => String.t() | nil,
          :tax_id => String.t() | nil,
          :commercial_register => String.t() | nil,
          :branches => String.t() | nil,
          :business_category => String.t() | nil,
          :info => String.t() | nil,
          :manager_name => String.t() | nil,
          :assistant_name => String.t() | nil,
          :street_other => String.t() | nil,
          :postal_code_other => String.t() | nil,
          :city_other => String.t() | nil,
          :state_other => String.t() | nil,
          :country_other => String.t() | nil,
          :telephone_business1 => String.t() | nil,
          :telephone_business2 => String.t() | nil,
          :fax_business => String.t() | nil,
          :telephone_callback => String.t() | nil,
          :telephone_car => String.t() | nil,
          :telephone_company => String.t() | nil,
          :telephone_home1 => String.t() | nil,
          :telephone_home2 => String.t() | nil,
          :fax_home => String.t() | nil,
          :cellular_telephone1 => String.t() | nil,
          :cellular_telephone2 => String.t() | nil,
          :telephone_other => String.t() | nil,
          :fax_other => String.t() | nil,
          :email1 => String.t() | nil,
          :email2 => String.t() | nil,
          :email3 => String.t() | nil,
          :url => String.t() | nil,
          :telephone_isdn => String.t() | nil,
          :telephone_pager => String.t() | nil,
          :telephone_primary => String.t() | nil,
          :telephone_radio => String.t() | nil,
          :telephone_telex => String.t() | nil,
          :telephone_ttytdd => String.t() | nil,
          :instant_messenger1 => String.t() | nil,
          :instant_messenger2 => String.t() | nil,
          :telephone_ip => String.t() | nil,
          :telephone_assistant => String.t() | nil,
          :company => String.t() | nil,
          :image1 => String.t() | nil,
          :image1_content_type => String.t() | nil,
          :image1_url => String.t() | nil,
          :number_of_images => integer() | nil,
          :image_last_modified => integer() | nil,
          :distribution_list => [OpenXchangeClient.Model.DistributionListMember.t()] | nil,
          :number_of_distribution_list => integer() | nil,
          :mark_as_distributionlist => boolean() | nil,
          :file_as => String.t() | nil,
          :default_address => integer() | nil,
          :useCount => integer() | nil,
          :yomiFirstName => String.t() | nil,
          :yomiLastName => String.t() | nil,
          :yomiCompany => String.t() | nil,
          :addressHome => String.t() | nil,
          :addressBusiness => String.t() | nil,
          :addressOther => String.t() | nil,
          :userfield01 => String.t() | nil,
          :userfield02 => String.t() | nil,
          :userfield03 => String.t() | nil,
          :userfield04 => String.t() | nil,
          :userfield05 => String.t() | nil,
          :userfield06 => String.t() | nil,
          :userfield07 => String.t() | nil,
          :userfield08 => String.t() | nil,
          :userfield09 => String.t() | nil,
          :userfield10 => String.t() | nil,
          :userfield11 => String.t() | nil,
          :userfield12 => String.t() | nil,
          :userfield13 => String.t() | nil,
          :userfield14 => String.t() | nil,
          :userfield15 => String.t() | nil,
          :userfield16 => String.t() | nil,
          :userfield17 => String.t() | nil,
          :userfield18 => String.t() | nil,
          :userfield19 => String.t() | nil,
          :userfield20 => String.t() | nil,
          :id => String.t() | nil,
          :created_by => String.t() | nil,
          :modified_by => String.t() | nil,
          :creation_date => integer() | nil,
          :last_modified => integer() | nil,
          :folder_id => String.t() | nil,
          :categories => String.t() | nil,
          :private_flag => boolean() | nil,
          :color_label => integer() | nil,
          :number_of_attachments => integer() | nil,
          :lastModifiedOfNewestAttachmentUTC => integer() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.ContactData do
  import OpenXchangeClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :distribution_list,
      :list,
      OpenXchangeClient.Model.DistributionListMember,
      options
    )
  end
end
