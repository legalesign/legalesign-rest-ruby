# frozen_string_literal: true

module Legalesign
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
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Legalesign::Models::GroupCreateParams
      def create(params)
        parsed, options = Legalesign::GroupCreateParams.dump_request(params)
        @client.request(method: :post, path: "group/", body: parsed, model: NilClass, options: options)
      end

      # Get group
      #
      # @overload retrieve(group_id, request_options: {})
      #
      # @param group_id [String]
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Legalesign::Models::GroupRetrieveResponse]
      #
      # @see Legalesign::Models::GroupRetrieveParams
      def retrieve(group_id, params = {})
        @client.request(
          method: :get,
          path: ["group/%1$s/", group_id],
          model: Legalesign::Models::GroupRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Update group
      #
      # @overload update(group_id, public_name: nil, request_options: {})
      #
      # @param group_id [String] group id
      #
      # @param public_name [String]
      #
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Legalesign::Models::GroupUpdateParams
      def update(group_id, params = {})
        parsed, options = Legalesign::GroupUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["group/%1$s/", group_id],
          body: parsed,
          model: NilClass,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Legalesign::Models::GroupListParams} for more details.
      #
      # List groups the api user belongs to
      #
      # @overload list(limit: nil, offset: nil, request_options: {})
      #
      # @param limit [Integer] Length of dataset to return. Use with offset query to iterate through results.
      #
      # @param offset [Integer] Offset from start of dataset. Use with the limit query to iterate through datase
      #
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Legalesign::Models::GroupListResponse]
      #
      # @see Legalesign::Models::GroupListParams
      def list(params = {})
        parsed, options = Legalesign::GroupListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "group/",
          query: parsed,
          model: Legalesign::Models::GroupListResponse,
          options: options
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
