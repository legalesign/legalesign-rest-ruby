# frozen_string_literal: true

module Legalesign
  module Resources
    class Subscribe
      # Some parameter documentations has been truncated, see
      # {Legalesign::Models::SubscribeCreateWebhookParams} for more details.
      #
      # Create webhook
      #
      # @overload create_webhook(notify:, url:, event_filter: nil, group: nil, request_options: {})
      #
      # @param notify [String] The type of callback to receive, value must be all, signed, sent, rejected or re
      #
      # @param url [String] The URL where you wish to get notified
      #
      # @param event_filter [Symbol, Legalesign::Models::WebhookEventFilterEnum]
      #
      # @param group [String]
      #
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Legalesign::Models::SubscribeCreateWebhookParams
      def create_webhook(params)
        parsed, options = Legalesign::SubscribeCreateWebhookParams.dump_request(params)
        @client.request(method: :post, path: "subscribe/", body: parsed, model: NilClass, options: options)
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
