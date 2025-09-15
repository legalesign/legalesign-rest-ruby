# frozen_string_literal: true

require_relative "../test_helper"

class Legalesign::Test::Resources::UserTest < Legalesign::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @legalesign.user.create(email: "dev@stainless.com", first_name: "first_name", last_name: "last_name")

    assert_pattern do
      response => nil
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @legalesign.user.retrieve("userId")

    assert_pattern do
      response => Legalesign::Models::UserRetrieveResponse
    end

    assert_pattern do
      response => {
        date_joined: Time | nil,
        email: String | nil,
        first_name: String | nil,
        groups: ^(Legalesign::Internal::Type::ArrayOf[String]) | nil,
        last_login: Time | nil,
        last_name: String | nil,
        resource_uri: String | nil,
        timezone: Legalesign::TimezoneEnum | nil,
        username: String | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @legalesign.user.update("userId")

    assert_pattern do
      response => nil
    end
  end
end
