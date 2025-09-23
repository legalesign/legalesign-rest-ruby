# frozen_string_literal: true

require_relative "../../test_helper"

class LegalesignSDK::Test::Resources::Templatepdf::FieldsTest < LegalesignSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @legalesign_sdk.templatepdf.fields.create(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        body: [{ax: 0, ay: 0, bx: 0, by: 0, element_type: :signature, page: 0, signer: 1}]
      )

    assert_pattern do
      response => nil
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @legalesign_sdk.templatepdf.fields.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => LegalesignSDK::Models::Templatepdf::FieldListResponse
    end

    assert_pattern do
      response => {
        meta: LegalesignSDK::ListMeta | nil,
        objects: ^(LegalesignSDK::Internal::Type::ArrayOf[LegalesignSDK::Models::Templatepdf::FieldListResponse::Object]) | nil
      }
    end
  end
end
