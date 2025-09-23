# frozen_string_literal: true

require_relative "../test_helper"

class LegalesignSDK::Test::Resources::StatusTest < LegalesignSDK::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @legalesign_sdk.status.retrieve("docId")

    assert_pattern do
      response => LegalesignSDK::Models::StatusRetrieveResponse
    end

    assert_pattern do
      response => {
        archived: LegalesignSDK::Internal::Type::Boolean | nil,
        download_final: LegalesignSDK::Internal::Type::Boolean | nil,
        resource_uri: String | nil,
        status: LegalesignSDK::SignerStatusEnum | nil,
        tag: String | nil,
        tag1: String | nil,
        tag2: String | nil
      }
    end
  end
end
