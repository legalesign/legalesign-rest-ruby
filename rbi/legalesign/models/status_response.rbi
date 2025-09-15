# typed: strong

module Legalesign
  module Models
    class StatusResponse < Legalesign::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Legalesign::StatusResponse, Legalesign::Internal::AnyHash)
        end

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :archived

      sig { params(archived: T::Boolean).void }
      attr_writer :archived

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :download_final

      sig { params(download_final: T::Boolean).void }
      attr_writer :download_final

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

      sig { returns(T.nilable(String)) }
      attr_reader :tag

      sig { params(tag: String).void }
      attr_writer :tag

      sig { returns(T.nilable(String)) }
      attr_reader :tag1

      sig { params(tag1: String).void }
      attr_writer :tag1

      sig { returns(T.nilable(String)) }
      attr_reader :tag2

      sig { params(tag2: String).void }
      attr_writer :tag2

      sig do
        params(
          archived: T::Boolean,
          download_final: T::Boolean,
          resource_uri: String,
          status: Legalesign::SignerStatusEnum::OrInteger,
          tag: String,
          tag1: String,
          tag2: String
        ).returns(T.attached_class)
      end
      def self.new(
        archived: nil,
        download_final: nil,
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
        status: nil,
        tag: nil,
        tag1: nil,
        tag2: nil
      )
      end

      sig do
        override.returns(
          {
            archived: T::Boolean,
            download_final: T::Boolean,
            resource_uri: String,
            status: Legalesign::SignerStatusEnum::TaggedInteger,
            tag: String,
            tag1: String,
            tag2: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
