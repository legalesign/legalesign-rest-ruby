# frozen_string_literal: true

require_relative "../test_helper"

class Legalesign::Test::Resources::InvitedTest < Legalesign::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @legalesign.invited.list

    assert_pattern do
      response => Legalesign::Models::InvitedListResponse
    end

    assert_pattern do
      response => {
        meta: Legalesign::ListMeta | nil,
        objects: ^(Legalesign::Internal::Type::ArrayOf[Legalesign::Models::InvitedListResponse::Object]) | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @legalesign.invited.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => nil
    end
  end
end
