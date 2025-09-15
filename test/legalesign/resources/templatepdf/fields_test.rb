# frozen_string_literal: true

require_relative "../../test_helper"

class Legalesign::Test::Resources::Templatepdf::FieldsTest < Legalesign::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @legalesign.templatepdf.fields.create(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        body: [{ax: 0, ay: 0, bx: 0, by: 0, element_type: :signature, page: 0, signer: 1}]
      )

    assert_pattern do
      response => nil
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @legalesign.templatepdf.fields.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Legalesign::Models::Templatepdf::FieldListResponse
    end

    assert_pattern do
      response => {
        meta: Legalesign::ListMeta | nil,
        objects: ^(Legalesign::Internal::Type::ArrayOf[Legalesign::Models::Templatepdf::FieldListResponse::Object]) | nil
      }
    end
  end
end
