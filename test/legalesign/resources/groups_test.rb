# frozen_string_literal: true

require_relative "../test_helper"

class Legalesign::Test::Resources::GroupsTest < Legalesign::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @legalesign.groups.create(name: "xxxx")

    assert_pattern do
      response => nil
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @legalesign.groups.retrieve("groupId")

    assert_pattern do
      response => Legalesign::Models::GroupRetrieveResponse
    end

    assert_pattern do
      response => {
        created: Time | nil,
        default_email: String | nil,
        default_extraemail: String | nil,
        footer: String | nil,
        footer_height: Integer | nil,
        header: String | nil,
        is_active: Legalesign::Internal::Type::Boolean | nil,
        members: ^(Legalesign::Internal::Type::ArrayOf[String]) | nil,
        modified: Time | nil,
        name: String | nil,
        pagesize: Integer | nil,
        public_name: String | nil,
        resource_uri: String | nil,
        slug: String | nil,
        user: String | nil,
        xframe_allow: Legalesign::Internal::Type::Boolean | nil,
        xframe_allow_pdf_edit: Legalesign::Internal::Type::Boolean | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @legalesign.groups.update("groupId")

    assert_pattern do
      response => nil
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @legalesign.groups.list

    assert_pattern do
      response => Legalesign::Models::GroupListResponse
    end

    assert_pattern do
      response => {
        meta: Legalesign::ListMeta | nil,
        objects: ^(Legalesign::Internal::Type::ArrayOf[Legalesign::Models::GroupListResponse::Object]) | nil
      }
    end
  end
end
