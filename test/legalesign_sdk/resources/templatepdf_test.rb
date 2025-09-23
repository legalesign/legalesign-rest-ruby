# frozen_string_literal: true

require_relative "../test_helper"

class LegalesignSDK::Test::Resources::TemplatepdfTest < LegalesignSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @legalesign_sdk.templatepdf.create(
        group: "/api/v1/group/IK-GV--w1tvt/",
        pdf_file: "U3RhaW5sZXNzIHJvY2tz"
      )

    assert_pattern do
      response => nil
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @legalesign_sdk.templatepdf.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => LegalesignSDK::TemplatePdf
    end

    assert_pattern do
      response => {
        created: Time | nil,
        group: String | nil,
        modified: Time | nil,
        page_count: Integer | nil,
        parties: String | nil,
        resource_uri: String | nil,
        signer_count: Integer | nil,
        title: String | nil,
        user: String | nil,
        uuid: String | nil,
        valid: LegalesignSDK::Internal::Type::Boolean | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @legalesign_sdk.templatepdf.list

    assert_pattern do
      response => LegalesignSDK::Models::TemplatepdfListResponse
    end

    assert_pattern do
      response => {
        meta: LegalesignSDK::ListMeta | nil,
        objects: ^(LegalesignSDK::Internal::Type::ArrayOf[LegalesignSDK::TemplatePdf]) | nil
      }
    end
  end

  def test_get_edit_link
    skip("Prism tests are disabled")

    response = @legalesign_sdk.templatepdf.get_edit_link("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => String
    end
  end
end
