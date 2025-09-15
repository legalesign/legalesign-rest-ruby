# typed: strong

module Legalesign
  module Models
    class ListMeta < Legalesign::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Legalesign::ListMeta, Legalesign::Internal::AnyHash)
        end

      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig { returns(T.nilable(String)) }
      attr_accessor :next_

      sig { returns(T.nilable(Integer)) }
      attr_reader :offset

      sig { params(offset: Integer).void }
      attr_writer :offset

      sig { returns(T.nilable(String)) }
      attr_accessor :previous

      # total number of objects
      sig { returns(T.nilable(Integer)) }
      attr_reader :total_count

      sig { params(total_count: Integer).void }
      attr_writer :total_count

      sig do
        params(
          limit: Integer,
          next_: T.nilable(String),
          offset: Integer,
          previous: T.nilable(String),
          total_count: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        limit: nil,
        next_: nil,
        offset: nil,
        previous: nil,
        # total number of objects
        total_count: nil
      )
      end

      sig do
        override.returns(
          {
            limit: Integer,
            next_: T.nilable(String),
            offset: Integer,
            previous: T.nilable(String),
            total_count: Integer
          }
        )
      end
      def to_hash
      end
    end
  end
end
