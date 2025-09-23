# frozen_string_literal: true

require_relative "../test_helper"

class LegalesignSDK::Test::Resources::TemplateTest < LegalesignSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @legalesign_sdk.template.create(
        group: "/api/v1/group/IK-GV--w1tvt/",
        latest_text: "latest_text",
        title: "title"
      )

    assert_pattern do
      response => nil
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @legalesign_sdk.template.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => LegalesignSDK::Models::TemplateRetrieveResponse
    end

    assert_pattern do
      response => {
        archive: LegalesignSDK::Internal::Type::Boolean | nil,
        created: Time | nil,
        group: String | nil,
        has_fields: LegalesignSDK::Internal::Type::Boolean | nil,
        latest_text: String | nil,
        modified: Time | nil,
        resource_uri: String | nil,
        signee_count: Integer | nil,
        title: String | nil,
        user: String | nil,
        uuid: String | nil
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response = @legalesign_sdk.template.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", body: "body")

    assert_pattern do
      response => nil
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @legalesign_sdk.template.list

    assert_pattern do
      response => LegalesignSDK::Models::TemplateListResponse
    end

    assert_pattern do
      response => {
        meta: LegalesignSDK::ListMeta | nil,
        objects: ^(LegalesignSDK::Internal::Type::ArrayOf[LegalesignSDK::Models::TemplateListResponse::Object]) | nil
      }
    end
  end
end
