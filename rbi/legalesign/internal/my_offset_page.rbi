# typed: strong

module Legalesign
  module Internal
    class MyOffsetPage
      include Legalesign::Internal::Type::BasePage

      Elem = type_member

      sig { returns(T.nilable(T::Array[Elem])) }
      attr_accessor :objects

      sig { returns(T.anything) }
      attr_accessor :meta

      # @api private
      sig { returns(String) }
      def inspect
      end
    end
  end
end
