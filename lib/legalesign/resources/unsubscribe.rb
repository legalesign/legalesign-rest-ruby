# frozen_string_literal: true

module Legalesign
  module Resources
    class Unsubscribe
      # Delete webhook
      #
      # @overload delete_webhook(url:, event_filter: nil, group: nil, request_options: {})
      #
      # @param url [String] URL to remove, it must match any registered callback exactly
      #
      # @param event_filter [Symbol, Legalesign::Models::WebhookEventFilterEnum]
      #
      # @param group [Integer] if a group filter is applied refer to it with slug or resource_uri
      #
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Legalesign::Models::UnsubscribeDeleteWebhookParams
      def delete_webhook(params)
        parsed, options = Legalesign::UnsubscribeDeleteWebhookParams.dump_request(params)
        @client.request(method: :post, path: "unsubscribe/", body: parsed, model: NilClass, options: options)
      end

      # @api private
      #
      # @param client [Legalesign::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
