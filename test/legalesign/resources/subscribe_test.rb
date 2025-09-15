# frozen_string_literal: true

require_relative "../test_helper"

class Legalesign::Test::Resources::SubscribeTest < Legalesign::Test::ResourceTest
  def test_create_webhook_required_params
    skip("Prism tests are disabled")

    response = @legalesign.subscribe.create_webhook(notify: "realtime", url: "https://")

    assert_pattern do
      response => nil
    end
  end
end
