# frozen_string_literal: true

require_relative "../test_helper"

class Legalesign::Test::Resources::UnsubscribeTest < Legalesign::Test::ResourceTest
  def test_delete_webhook_required_params
    skip("Prism tests are disabled")

    response = @legalesign.unsubscribe.delete_webhook(url: "https://")

    assert_pattern do
      response => nil
    end
  end
end
