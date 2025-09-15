# frozen_string_literal: true

require_relative "../test_helper"

class Legalesign::Test::Resources::NotificationsTest < Legalesign::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @legalesign.notifications.list

    assert_pattern do
      response => ^(Legalesign::Internal::Type::ArrayOf[Legalesign::Models::NotificationListResponseItem])
    end
  end
end
