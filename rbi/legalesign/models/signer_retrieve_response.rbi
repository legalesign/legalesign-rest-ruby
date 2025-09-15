# typed: strong

module Legalesign
  module Models
    class SignerRetrieveResponse < Legalesign::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Legalesign::Models::SignerRetrieveResponse,
            Legalesign::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_reader :document

      sig { params(document: String).void }
      attr_writer :document

      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      sig { returns(T.nilable(String)) }
      attr_reader :first_name

      sig { params(first_name: String).void }
      attr_writer :first_name

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :has_fields

      sig { params(has_fields: T::Boolean).void }
      attr_writer :has_fields

      sig { returns(T.nilable(String)) }
      attr_reader :last_name

      sig { params(last_name: String).void }
      attr_writer :last_name

      sig { returns(T.nilable(Integer)) }
      attr_reader :order

      sig { params(order: Integer).void }
      attr_writer :order

      sig { returns(T.nilable(String)) }
      attr_reader :resource_uri

      sig { params(resource_uri: String).void }
      attr_writer :resource_uri

      # Signer status options:
      #
      # - 4 - unsent
      # - 5 - scheduled to be sent
      # - 10 - sent
      # - 15 - email opened
      # - 20 - visited
      # - 30 - fields complete
      # - 35 - fields complete ex signature
      # - 39 - waiting for witness to complete
      # - 40 - signed
      # - 50 - downloaded
      # - 60 - rejected
      sig { returns(T.nilable(Legalesign::SignerStatusEnum::TaggedInteger)) }
      attr_reader :status

      sig { params(status: Legalesign::SignerStatusEnum::OrInteger).void }
      attr_writer :status

      sig do
        params(
          document: String,
          email: String,
          first_name: String,
          has_fields: T::Boolean,
          last_name: String,
          order: Integer,
          resource_uri: String,
          status: Legalesign::SignerStatusEnum::OrInteger
        ).returns(T.attached_class)
      end
      def self.new(
        document: nil,
        email: nil,
        first_name: nil,
        has_fields: nil,
        last_name: nil,
        order: nil,
        resource_uri: nil,
        # Signer status options:
        #
        # - 4 - unsent
        # - 5 - scheduled to be sent
        # - 10 - sent
        # - 15 - email opened
        # - 20 - visited
        # - 30 - fields complete
        # - 35 - fields complete ex signature
        # - 39 - waiting for witness to complete
        # - 40 - signed
        # - 50 - downloaded
        # - 60 - rejected
        status: nil
      )
      end

      sig do
        override.returns(
          {
            document: String,
            email: String,
            first_name: String,
            has_fields: T::Boolean,
            last_name: String,
            order: Integer,
            resource_uri: String,
            status: Legalesign::SignerStatusEnum::TaggedInteger
          }
        )
      end
      def to_hash
      end
    end
  end
end
