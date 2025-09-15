# typed: strong

module Legalesign
  module Resources
    class Notifications
      # Callbacks sent to URL of your choice
      sig do
        params(request_options: Legalesign::RequestOptions::OrHash).returns(
          T::Array[Legalesign::Models::NotificationListResponseItem]
        )
      end
      def list(request_options: {})
      end

      # @api private
      sig { params(client: Legalesign::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
