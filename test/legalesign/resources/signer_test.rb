# frozen_string_literal: true

require_relative "../test_helper"

class Legalesign::Test::Resources::SignerTest < Legalesign::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @legalesign.signer.retrieve("signerId")

    assert_pattern do
      response => Legalesign::Models::SignerRetrieveResponse
    end

    assert_pattern do
      response => {
        document: String | nil,
        email: String | nil,
        first_name: String | nil,
        has_fields: Legalesign::Internal::Type::Boolean | nil,
        last_name: String | nil,
        order: Integer | nil,
        resource_uri: String | nil,
        status: Legalesign::SignerStatusEnum | nil
      }
    end
  end

  def test_get_access_link
    skip("Prism tests are disabled")

    response = @legalesign.signer.get_access_link("signerId")

    assert_pattern do
      response => nil
    end
  end

  def test_get_rejection_reason
    skip("Prism tests are disabled")

    response = @legalesign.signer.get_rejection_reason("signerId")

    assert_pattern do
      response => Legalesign::Models::SignerGetRejectionReasonResponse
    end

    assert_pattern do
      response => {
        reason: String | nil,
        status: Integer | nil
      }
    end
  end

  def test_reset_required_params
    skip("Prism tests are disabled")

    response = @legalesign.signer.reset("signerId", email: "email")

    assert_pattern do
      response => nil
    end
  end

  def test_retrieve_fields
    skip("Prism tests are disabled")

    response = @legalesign.signer.retrieve_fields("signerId")

    assert_pattern do
      response => ^(Legalesign::Internal::Type::ArrayOf[Legalesign::Models::SignerRetrieveFieldsResponseItem])
    end
  end

  def test_send_reminder
    skip("Prism tests are disabled")

    response = @legalesign.signer.send_reminder("signerId")

    assert_pattern do
      response => nil
    end
  end
end
