# frozen_string_literal: true

module LegalesignSDK
  module Resources
    class Group
      # Create group
      #
      # @overload create(name:, xframe_allow: nil, request_options: {})
      #
      # @param name [String]
      #
      # @param xframe_allow [Boolean] Set to true if you want to embed your signing page.
      #
      # @param request_options [LegalesignSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see LegalesignSDK::Models::GroupCreateParams
      def create(params)
        parsed, options = LegalesignSDK::GroupCreateParams.dump_request(params)
        @client.request(method: :post, path: "group/", body: parsed, model: NilClass, options: options)
      end

      # Get group
      #
      # @overload retrieve(group_id, request_options: {})
      #
      # @param group_id [String]
      # @param request_options [LegalesignSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [LegalesignSDK::Models::GroupRetrieveResponse]
      #
      # @see LegalesignSDK::Models::GroupRetrieveParams
      def retrieve(group_id, params = {})
        @client.request(
          method: :get,
          path: ["group/%1$s/", group_id],
          model: LegalesignSDK::Models::GroupRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {LegalesignSDK::Models::GroupListParams} for more details.
      #
      # List groups the api user belongs to
      #
      # @overload list(limit: nil, offset: nil, request_options: {})
      #
      # @param limit [Integer] Length of dataset to return. Use with offset query to iterate through results.
      #
      # @param offset [Integer] Offset from start of dataset. Use with the limit query to iterate through datase
      #
      # @param request_options [LegalesignSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [LegalesignSDK::Models::GroupListResponse]
      #
      # @see LegalesignSDK::Models::GroupListParams
      def list(params = {})
        parsed, options = LegalesignSDK::GroupListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "group/",
          query: parsed,
          model: LegalesignSDK::Models::GroupListResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [LegalesignSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
