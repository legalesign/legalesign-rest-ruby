# frozen_string_literal: true

require_relative "../test_helper"

class LegalesignSDK::Test::Resources::SignerTest < LegalesignSDK::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @legalesign_sdk.signer.retrieve("signerId")

    assert_pattern do
      response => LegalesignSDK::Models::SignerRetrieveResponse
    end

    assert_pattern do
      response => {
        document: String | nil,
        email: String | nil,
        first_name: String | nil,
        has_fields: LegalesignSDK::Internal::Type::Boolean | nil,
        last_name: String | nil,
        order: Integer | nil,
        resource_uri: String | nil,
        status: LegalesignSDK::SignerStatusEnum | nil
      }
    end
  end

  def test_get_access_link
    skip("Prism tests are disabled")

    response = @legalesign_sdk.signer.get_access_link("signerId")

    assert_pattern do
      response => nil
    end
  end

  def test_retrieve_fields
    skip("Prism tests are disabled")

    response = @legalesign_sdk.signer.retrieve_fields("signerId")

    assert_pattern do
      response => ^(LegalesignSDK::Internal::Type::ArrayOf[LegalesignSDK::Models::SignerRetrieveFieldsResponseItem])
    end
  end

  def test_send_reminder
    skip("Prism tests are disabled")

    response = @legalesign_sdk.signer.send_reminder("signerId")

    assert_pattern do
      response => nil
    end
  end
end
