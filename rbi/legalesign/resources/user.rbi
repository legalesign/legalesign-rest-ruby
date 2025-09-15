# typed: strong

module Legalesign
  module Resources
    class User
      # Create user
      sig do
        params(
          email: String,
          first_name: String,
          last_name: String,
          groups: String,
          password: String,
          permission: Legalesign::UserCreateParams::Permission::OrSymbol,
          timezone: Legalesign::TimezoneEnum::OrSymbol,
          request_options: Legalesign::RequestOptions::OrHash
        ).void
      end
      def create(
        email:,
        first_name:,
        last_name:,
        # comma delimited list of groups to add user to, can be full group resource_uri or
        # groupId
        groups: nil,
        # If not set a verification email is sent. Password must be at least 8 chars,
        # include upper and lower case, with a number and a special character
        password: nil,
        # set user permissions _ 1 - admin _ 2 - create and send docs, team user _ 3 -
        # readonly, team user _ 4 - send only, team user _ 5 - send only, individual user
        # _ 6 - create and send docs, invidual user
        permission: nil,
        # List of available timezones
        timezone: nil,
        request_options: {}
      )
      end

      # Get user
      sig do
        params(
          user_id: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).returns(Legalesign::Models::UserRetrieveResponse)
      end
      def retrieve(user_id, request_options: {})
      end

      # Update a user first name or last name
      sig do
        params(
          user_id: String,
          first_name: String,
          last_name: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).void
      end
      def update(user_id, first_name: nil, last_name: nil, request_options: {})
      end

      # @api private
      sig { params(client: Legalesign::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
