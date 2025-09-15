# frozen_string_literal: true

require_relative "../test_helper"

class Legalesign::Test::Resources::MemberTest < Legalesign::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @legalesign.member.create(email: "dev@stainless.com", group: "/api/v1/group/IK-GV--w1tvt/")

    assert_pattern do
      response => nil
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @legalesign.member.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Legalesign::MemberResponse
    end

    assert_pattern do
      response => {
        created: Time | nil,
        group: String | nil,
        modified: Time | nil,
        permission: Legalesign::PermissionsEnum | nil,
        resource_uri: String | nil,
        user: String | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @legalesign.member.list

    assert_pattern do
      response => Legalesign::Models::MemberListResponse
    end

    assert_pattern do
      response => {
        meta: Legalesign::ListMeta | nil,
        objects: ^(Legalesign::Internal::Type::ArrayOf[Legalesign::MemberResponse]) | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @legalesign.member.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => nil
    end
  end
end
