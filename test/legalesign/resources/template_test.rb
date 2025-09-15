# frozen_string_literal: true

require_relative "../test_helper"

class Legalesign::Test::Resources::TemplateTest < Legalesign::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @legalesign.template.create(
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

    response = @legalesign.template.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Legalesign::Models::TemplateRetrieveResponse
    end

    assert_pattern do
      response => {
        archive: Legalesign::Internal::Type::Boolean | nil,
        created: Time | nil,
        group: String | nil,
        has_fields: Legalesign::Internal::Type::Boolean | nil,
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

    response = @legalesign.template.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", body: "body")

    assert_pattern do
      response => nil
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @legalesign.template.list

    assert_pattern do
      response => Legalesign::Models::TemplateListResponse
    end

    assert_pattern do
      response => {
        meta: Legalesign::ListMeta | nil,
        objects: ^(Legalesign::Internal::Type::ArrayOf[Legalesign::Models::TemplateListResponse::Object]) | nil
      }
    end
  end

  def test_archive
    skip("Prism tests are disabled")

    response = @legalesign.template.archive("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => nil
    end
  end
end
