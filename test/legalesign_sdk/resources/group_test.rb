# frozen_string_literal: true

require_relative "../test_helper"

class LegalesignSDK::Test::Resources::GroupTest < LegalesignSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @legalesign_sdk.group.create(name: "xxxx")

    assert_pattern do
      response => nil
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @legalesign_sdk.group.retrieve("groupId")

    assert_pattern do
      response => LegalesignSDK::Models::GroupRetrieveResponse
    end

    assert_pattern do
      response => {
        created: Time | nil,
        default_email: String | nil,
        default_extraemail: String | nil,
        footer: String | nil,
        footer_height: Integer | nil,
        header: String | nil,
        is_active: LegalesignSDK::Internal::Type::Boolean | nil,
        members: ^(LegalesignSDK::Internal::Type::ArrayOf[String]) | nil,
        modified: Time | nil,
        name: String | nil,
        pagesize: Integer | nil,
        public_name: String | nil,
        resource_uri: String | nil,
        slug: String | nil,
        user: String | nil,
        xframe_allow: LegalesignSDK::Internal::Type::Boolean | nil,
        xframe_allow_pdf_edit: LegalesignSDK::Internal::Type::Boolean | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @legalesign_sdk.group.list

    assert_pattern do
      response => LegalesignSDK::Models::GroupListResponse
    end

    assert_pattern do
      response => {
        meta: LegalesignSDK::ListMeta | nil,
        objects: ^(LegalesignSDK::Internal::Type::ArrayOf[LegalesignSDK::Models::GroupListResponse::Object]) | nil
      }
    end
  end
end
