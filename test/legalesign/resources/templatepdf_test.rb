# frozen_string_literal: true

require_relative "../test_helper"

class Legalesign::Test::Resources::TemplatepdfTest < Legalesign::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @legalesign.templatepdf.create(group: "/api/v1/group/IK-GV--w1tvt/", pdf_file: "U3RhaW5sZXNzIHJvY2tz")

    assert_pattern do
      response => nil
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @legalesign.templatepdf.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Legalesign::TemplatePdf
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
        valid: Legalesign::Internal::Type::Boolean | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @legalesign.templatepdf.list

    assert_pattern do
      response => Legalesign::Models::TemplatepdfListResponse
    end

    assert_pattern do
      response => {
        meta: Legalesign::ListMeta | nil,
        objects: ^(Legalesign::Internal::Type::ArrayOf[Legalesign::TemplatePdf]) | nil
      }
    end
  end

  def test_archive
    skip("Prism tests are disabled")

    response = @legalesign.templatepdf.archive("pdfId")

    assert_pattern do
      response => nil
    end
  end

  def test_convert_tags
    skip("Prism tests are disabled")

    response = @legalesign.templatepdf.convert_tags("pdfId")

    assert_pattern do
      response => nil
    end
  end

  def test_get_edit_link
    skip("Prism tests are disabled")

    response = @legalesign.templatepdf.get_edit_link("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => String
    end
  end
end
