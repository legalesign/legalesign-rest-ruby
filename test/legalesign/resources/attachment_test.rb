# frozen_string_literal: true

require_relative "../test_helper"

class Legalesign::Test::Resources::AttachmentTest < Legalesign::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @legalesign.attachment.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Legalesign::AttachmentResponse
    end

    assert_pattern do
      response => {
        created: Time | nil,
        description: String | nil,
        filename: String | nil,
        group: String | nil,
        resource_uri: String | nil,
        user: String | nil,
        uuid: String | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @legalesign.attachment.list

    assert_pattern do
      response => Legalesign::Models::AttachmentListResponse
    end

    assert_pattern do
      response => {
        meta: Legalesign::ListMeta | nil,
        objects: ^(Legalesign::Internal::Type::ArrayOf[Legalesign::AttachmentResponse]) | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @legalesign.attachment.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => nil
    end
  end

  def test_upload_required_params
    skip("Prism tests are disabled")

    response =
      @legalesign.attachment.upload(
        filename: "IK-GV--w1tvt7pdf",
        group: "/api/v1/group/IK-GV--w1tvt/",
        pdf_file: "U3RhaW5sZXNzIHJvY2tz"
      )

    assert_pattern do
      response => nil
    end
  end
end
