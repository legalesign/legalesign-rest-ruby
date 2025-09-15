# frozen_string_literal: true

require_relative "../test_helper"

class Legalesign::Test::Resources::StatusTest < Legalesign::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @legalesign.status.retrieve("docId")

    assert_pattern do
      response => Legalesign::StatusResponse
    end

    assert_pattern do
      response => {
        archived: Legalesign::Internal::Type::Boolean | nil,
        download_final: Legalesign::Internal::Type::Boolean | nil,
        resource_uri: String | nil,
        status: Legalesign::SignerStatusEnum | nil,
        tag: String | nil,
        tag1: String | nil,
        tag2: String | nil
      }
    end
  end

  def test_retrieve_all
    skip("Prism tests are disabled")

    response = @legalesign.status.retrieve_all

    assert_pattern do
      response => Legalesign::Models::StatusRetrieveAllResponse
    end

    assert_pattern do
      response => {
        meta: Legalesign::ListMeta | nil,
        objects: ^(Legalesign::Internal::Type::ArrayOf[Legalesign::StatusResponse]) | nil
      }
    end
  end
end
