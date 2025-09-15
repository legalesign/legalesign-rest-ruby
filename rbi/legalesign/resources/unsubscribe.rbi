# typed: strong

module Legalesign
  module Resources
    class Unsubscribe
      # Delete webhook
      sig do
        params(
          url: String,
          event_filter: Legalesign::WebhookEventFilterEnum::OrSymbol,
          group: Integer,
          request_options: Legalesign::RequestOptions::OrHash
        ).void
      end
      def delete_webhook(
        # URL to remove, it must match any registered callback exactly
        url:,
        event_filter: nil,
        # if a group filter is applied refer to it with slug or resource_uri
        group: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Legalesign::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
