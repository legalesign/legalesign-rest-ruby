# frozen_string_literal: true

require_relative "../test_helper"

class Legalesign::Test::Resources::DocumentTest < Legalesign::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @legalesign.document.create(
        group: "https://example.com",
        name: "x",
        signers: [{email: "dev@stainless.com", firstname: "firstname", lastname: "lastname"}]
      )

    assert_pattern do
      response => Legalesign::Models::DocumentCreateResponse
    end

    assert_pattern do
      response => {
        signer_1: String | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @legalesign.document.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Legalesign::Models::DocumentRetrieveResponse
    end

    assert_pattern do
      response => {
        archived: Legalesign::Internal::Type::Boolean | nil,
        auto_archive: Legalesign::Internal::Type::Boolean | nil,
        cc_emails: String | nil,
        created: Time | nil,
        do_email: Legalesign::Internal::Type::Boolean | nil,
        download_final: Legalesign::Internal::Type::Boolean | nil,
        footer: String | nil,
        footer_height: Integer | nil,
        group: String | nil,
        has_fields: Legalesign::Internal::Type::Boolean | nil,
        hash_value: String | nil,
        header: String | nil,
        header_height: Integer | nil,
        modified: Time | nil,
        name: String | nil,
        pdf_password: String | nil,
        pdf_password_type: String | nil,
        pdftext: String | nil,
        redirect: String | nil,
        resource_uri: String | nil,
        return_signer_links: Legalesign::Internal::Type::Boolean | nil,
        sign_mouse: Legalesign::Internal::Type::Boolean | nil,
        sign_time: Time | nil,
        sign_type: Legalesign::Internal::Type::Boolean | nil,
        sign_upload: Legalesign::Internal::Type::Boolean | nil,
        signature_placement: Integer | nil,
        signature_type: Integer | nil,
        signers: ^(Legalesign::Internal::Type::ArrayOf[Legalesign::Internal::Type::ArrayOf[String]]) | nil,
        signers_in_order: Legalesign::Internal::Type::Boolean | nil,
        status: Legalesign::DocumentStatusEnum | nil,
        tag: String | nil,
        tag1: String | nil,
        tag2: String | nil,
        template: String | nil,
        templatepdf: String | nil,
        text: String | nil,
        user: String | nil,
        uuid: String | nil
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @legalesign.document.list(group: "group")

    assert_pattern do
      response => Legalesign::Models::DocumentListResponse
    end

    assert_pattern do
      response => {
        meta: Legalesign::ListMeta | nil,
        objects: ^(Legalesign::Internal::Type::ArrayOf[Legalesign::Models::DocumentListResponse::Object]) | nil
      }
    end
  end

  def test_archive
    skip("Prism tests are disabled")

    response = @legalesign.document.archive("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => nil
    end
  end

  def test_delete_permanently
    skip("Prism tests are disabled")

    response = @legalesign.document.delete_permanently("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => nil
    end
  end

  def test_download_audit_log
    skip("Prism doesn't support application/pdf responses")

    response = @legalesign.document.download_audit_log("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => StringIO
    end
  end

  def test_get_fields
    skip("Prism tests are disabled")

    response = @legalesign.document.get_fields("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => ^(Legalesign::Internal::Type::ArrayOf[Legalesign::Models::DocumentGetFieldsResponseItem])
    end
  end

  def test_preview
    skip("Prism doesn't properly handle redirects")

    response = @legalesign.document.preview

    assert_pattern do
      response => nil
    end
  end
end
