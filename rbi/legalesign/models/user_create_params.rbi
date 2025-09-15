# typed: strong

module Legalesign
  module Models
    class UserCreateParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Legalesign::UserCreateParams, Legalesign::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :email

      sig { returns(String) }
      attr_accessor :first_name

      sig { returns(String) }
      attr_accessor :last_name

      # comma delimited list of groups to add user to, can be full group resource_uri or
      # groupId
      sig { returns(T.nilable(String)) }
      attr_reader :groups

      sig { params(groups: String).void }
      attr_writer :groups

      # If not set a verification email is sent. Password must be at least 8 chars,
      # include upper and lower case, with a number and a special character
      sig { returns(T.nilable(String)) }
      attr_reader :password

      sig { params(password: String).void }
      attr_writer :password

      # set user permissions _ 1 - admin _ 2 - create and send docs, team user _ 3 -
      # readonly, team user _ 4 - send only, team user _ 5 - send only, individual user
      # _ 6 - create and send docs, invidual user
      sig do
        returns(T.nilable(Legalesign::UserCreateParams::Permission::OrSymbol))
      end
      attr_reader :permission

      sig do
        params(
          permission: Legalesign::UserCreateParams::Permission::OrSymbol
        ).void
      end
      attr_writer :permission

      # List of available timezones
      sig { returns(T.nilable(Legalesign::TimezoneEnum::OrSymbol)) }
      attr_reader :timezone

      sig { params(timezone: Legalesign::TimezoneEnum::OrSymbol).void }
      attr_writer :timezone

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
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            email: String,
            first_name: String,
            last_name: String,
            groups: String,
            password: String,
            permission: Legalesign::UserCreateParams::Permission::OrSymbol,
            timezone: Legalesign::TimezoneEnum::OrSymbol,
            request_options: Legalesign::RequestOptions
          }
        )
      end
      def to_hash
      end

      # set user permissions _ 1 - admin _ 2 - create and send docs, team user _ 3 -
      # readonly, team user _ 4 - send only, team user _ 5 - send only, individual user
      # _ 6 - create and send docs, invidual user
      module Permission
        extend Legalesign::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Legalesign::UserCreateParams::Permission)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PERMISSION_1 =
          T.let(:"1", Legalesign::UserCreateParams::Permission::TaggedSymbol)
        PERMISSION_2 =
          T.let(:"2", Legalesign::UserCreateParams::Permission::TaggedSymbol)
        PERMISSION_3 =
          T.let(:"3", Legalesign::UserCreateParams::Permission::TaggedSymbol)
        PERMISSION_4 =
          T.let(:"4", Legalesign::UserCreateParams::Permission::TaggedSymbol)
        PERMISSION_5 =
          T.let(:"5", Legalesign::UserCreateParams::Permission::TaggedSymbol)
        PERMISSION_6 =
          T.let(:"6", Legalesign::UserCreateParams::Permission::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Legalesign::UserCreateParams::Permission::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
