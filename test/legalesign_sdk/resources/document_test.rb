# frozen_string_literal: true

require_relative "../test_helper"

class LegalesignSDK::Test::Resources::DocumentTest < LegalesignSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @legalesign_sdk.document.create(
        group: "https://example.com",
        name: "x",
        signers: [{email: "dev@stainless.com", firstname: "firstname", lastname: "lastname"}]
      )

    assert_pattern do
      response => LegalesignSDK::Models::DocumentCreateResponse
    end

    assert_pattern do
      response => {
        signer_1: String | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @legalesign_sdk.document.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => LegalesignSDK::Models::DocumentRetrieveResponse
    end

    assert_pattern do
      response => {
        archived: LegalesignSDK::Internal::Type::Boolean | nil,
        auto_archive: LegalesignSDK::Internal::Type::Boolean | nil,
        cc_emails: String | nil,
        created: Time | nil,
        do_email: LegalesignSDK::Internal::Type::Boolean | nil,
        download_final: LegalesignSDK::Internal::Type::Boolean | nil,
        footer: String | nil,
        footer_height: Integer | nil,
        group: String | nil,
        has_fields: LegalesignSDK::Internal::Type::Boolean | nil,
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
        return_signer_links: LegalesignSDK::Internal::Type::Boolean | nil,
        sign_mouse: LegalesignSDK::Internal::Type::Boolean | nil,
        sign_time: Time | nil,
        sign_type: LegalesignSDK::Internal::Type::Boolean | nil,
        sign_upload: LegalesignSDK::Internal::Type::Boolean | nil,
        signature_placement: Integer | nil,
        signature_type: Integer | nil,
        signers: ^(LegalesignSDK::Internal::Type::ArrayOf[LegalesignSDK::Internal::Type::ArrayOf[String]]) | nil,
        signers_in_order: LegalesignSDK::Internal::Type::Boolean | nil,
        status: LegalesignSDK::DocumentStatusEnum | nil,
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

    response = @legalesign_sdk.document.list(group: "group")

    assert_pattern do
      response => LegalesignSDK::Models::DocumentListResponse
    end

    assert_pattern do
      response => {
        meta: LegalesignSDK::ListMeta | nil,
        objects: ^(LegalesignSDK::Internal::Type::ArrayOf[LegalesignSDK::Models::DocumentListResponse::Object]) | nil
      }
    end
  end

  def test_archive
    skip("Prism tests are disabled")

    response = @legalesign_sdk.document.archive("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => nil
    end
  end

  def test_get_fields
    skip("Prism tests are disabled")

    response = @legalesign_sdk.document.get_fields("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => ^(LegalesignSDK::Internal::Type::ArrayOf[LegalesignSDK::Models::DocumentGetFieldsResponseItem])
    end
  end

  def test_permanently_delete
    skip("Prism tests are disabled")

    response = @legalesign_sdk.document.permanently_delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => nil
    end
  end
end
