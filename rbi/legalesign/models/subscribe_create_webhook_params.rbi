# typed: strong

module Legalesign
  module Models
    class SubscribeCreateWebhookParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Legalesign::SubscribeCreateWebhookParams,
            Legalesign::Internal::AnyHash
          )
        end

      # The type of callback to receive, value must be all, signed, sent, rejected or
      # realtime
      sig { returns(String) }
      attr_accessor :notify

      # The URL where you wish to get notified
      sig { returns(String) }
      attr_accessor :url

      sig { returns(T.nilable(Legalesign::WebhookEventFilterEnum::OrSymbol)) }
      attr_reader :event_filter

      sig do
        params(event_filter: Legalesign::WebhookEventFilterEnum::OrSymbol).void
      end
      attr_writer :event_filter

      sig { returns(T.nilable(String)) }
      attr_reader :group

      sig { params(group: String).void }
      attr_writer :group

      sig do
        params(
          notify: String,
          url: String,
          event_filter: Legalesign::WebhookEventFilterEnum::OrSymbol,
          group: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            notify: String,
            url: String,
            event_filter: Legalesign::WebhookEventFilterEnum::OrSymbol,
            group: String,
            request_options: Legalesign::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
