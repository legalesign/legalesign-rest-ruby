# frozen_string_literal: true

module Legalesign
  module Resources
    class Notifications
      # Callbacks sent to URL of your choice
      #
      # @overload list(request_options: {})
      #
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Legalesign::Models::NotificationListResponseItem>]
      #
      # @see Legalesign::Models::NotificationListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "notifications/",
          model: Legalesign::Internal::Type::ArrayOf[Legalesign::Models::NotificationListResponseItem],
          options: params[:request_options]
        )
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
