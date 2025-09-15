# typed: strong

module Legalesign
  module Models
    class UnsubscribeDeleteWebhookParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Legalesign::UnsubscribeDeleteWebhookParams,
            Legalesign::Internal::AnyHash
          )
        end

      # URL to remove, it must match any registered callback exactly
      sig { returns(String) }
      attr_accessor :url

      sig { returns(T.nilable(Legalesign::WebhookEventFilterEnum::OrSymbol)) }
      attr_reader :event_filter

      sig do
        params(event_filter: Legalesign::WebhookEventFilterEnum::OrSymbol).void
      end
      attr_writer :event_filter

      # if a group filter is applied refer to it with slug or resource_uri
      sig { returns(T.nilable(Integer)) }
      attr_reader :group

      sig { params(group: Integer).void }
      attr_writer :group

      sig do
        params(
          url: String,
          event_filter: Legalesign::WebhookEventFilterEnum::OrSymbol,
          group: Integer,
          request_options: Legalesign::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # URL to remove, it must match any registered callback exactly
        url:,
        event_filter: nil,
        # if a group filter is applied refer to it with slug or resource_uri
        group: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            url: String,
            event_filter: Legalesign::WebhookEventFilterEnum::OrSymbol,
            group: Integer,
            request_options: Legalesign::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
