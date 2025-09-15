# typed: strong

module Legalesign
  module Resources
    class Subscribe
      # Create webhook
      sig do
        params(
          notify: String,
          url: String,
          event_filter: Legalesign::WebhookEventFilterEnum::OrSymbol,
          group: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).void
      end
      def create_webhook(
        # The type of callback to receive, value must be all, signed, sent, rejected or
        # realtime
        notify:,
        # The URL where you wish to get notified
        url:,
        event_filter: nil,
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
