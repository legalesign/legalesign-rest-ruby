# typed: strong

module Legalesign
  module Models
    class UserRetrieveResponse < Legalesign::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Legalesign::Models::UserRetrieveResponse,
            Legalesign::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Time)) }
      attr_reader :date_joined

      sig { params(date_joined: Time).void }
      attr_writer :date_joined

      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      sig { returns(T.nilable(String)) }
      attr_reader :first_name

      sig { params(first_name: String).void }
      attr_writer :first_name

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :groups

      sig { params(groups: T::Array[String]).void }
      attr_writer :groups

      sig { returns(T.nilable(Time)) }
      attr_reader :last_login

      sig { params(last_login: Time).void }
      attr_writer :last_login

      sig { returns(T.nilable(String)) }
      attr_reader :last_name

      sig { params(last_name: String).void }
      attr_writer :last_name

      sig { returns(T.nilable(String)) }
      attr_reader :resource_uri

      sig { params(resource_uri: String).void }
      attr_writer :resource_uri

      # List of available timezones
      sig { returns(T.nilable(Legalesign::TimezoneEnum::TaggedSymbol)) }
      attr_reader :timezone

      sig { params(timezone: Legalesign::TimezoneEnum::OrSymbol).void }
      attr_writer :timezone

      sig { returns(T.nilable(String)) }
      attr_reader :username

      sig { params(username: String).void }
      attr_writer :username

      sig do
        params(
          date_joined: Time,
          email: String,
          first_name: String,
          groups: T::Array[String],
          last_login: Time,
          last_name: String,
          resource_uri: String,
          timezone: Legalesign::TimezoneEnum::OrSymbol,
          username: String
        ).returns(T.attached_class)
      end
      def self.new(
        date_joined: nil,
        email: nil,
        first_name: nil,
        groups: nil,
        last_login: nil,
        last_name: nil,
        resource_uri: nil,
        # List of available timezones
        timezone: nil,
        username: nil
      )
      end

      sig do
        override.returns(
          {
            date_joined: Time,
            email: String,
            first_name: String,
            groups: T::Array[String],
            last_login: Time,
            last_name: String,
            resource_uri: String,
            timezone: Legalesign::TimezoneEnum::TaggedSymbol,
            username: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
