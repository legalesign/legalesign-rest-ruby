# frozen_string_literal: true

module Legalesign
  module Resources
    class User
      # Some parameter documentations has been truncated, see
      # {Legalesign::Models::UserCreateParams} for more details.
      #
      # Create user
      #
      # @overload create(email:, first_name:, last_name:, groups: nil, password: nil, permission: nil, timezone: nil, request_options: {})
      #
      # @param email [String]
      #
      # @param first_name [String]
      #
      # @param last_name [String]
      #
      # @param groups [String] comma delimited list of groups to add user to, can be full group resource_uri or
      #
      # @param password [String] If not set a verification email is sent. Password must be at least 8 chars, incl
      #
      # @param permission [Symbol, Legalesign::Models::UserCreateParams::Permission] set user permissions _ 1 - admin _ 2 - create and send docs, team user \* 3 -
      # rea
      #
      # @param timezone [Symbol, Legalesign::Models::TimezoneEnum] List of available timezones
      #
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Legalesign::Models::UserCreateParams
      def create(params)
        parsed, options = Legalesign::UserCreateParams.dump_request(params)
        @client.request(method: :post, path: "user/", body: parsed, model: NilClass, options: options)
      end

      # Get user
      #
      # @overload retrieve(user_id, request_options: {})
      #
      # @param user_id [String]
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Legalesign::Models::UserRetrieveResponse]
      #
      # @see Legalesign::Models::UserRetrieveParams
      def retrieve(user_id, params = {})
        @client.request(
          method: :get,
          path: ["user/%1$s/", user_id],
          model: Legalesign::Models::UserRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Update a user first name or last name
      #
      # @overload update(user_id, first_name: nil, last_name: nil, request_options: {})
      #
      # @param user_id [String]
      # @param first_name [String]
      # @param last_name [String]
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Legalesign::Models::UserUpdateParams
      def update(user_id, params = {})
        parsed, options = Legalesign::UserUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["user/%1$s/", user_id],
          body: parsed,
          model: NilClass,
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
