# frozen_string_literal: true

module Legalesign
  module Internal
    # @generic Elem
    #
    # @example
    #   if my_offset_page.has_next?
    #     my_offset_page = my_offset_page.next_page
    #   end
    #
    # @example
    #   my_offset_page.auto_paging_each do |item|
    #     puts(item)
    #   end
    class MyOffsetPage
      include Legalesign::Internal::Type::BasePage

      # @return [Array<generic<Elem>>, nil]
      attr_accessor :objects

      # @return [Object]
      attr_accessor :meta

      # @return [Boolean]
      def next_page?
        !objects.to_a.empty?
      end

      # @raise [Legalesign::HTTP::Error]
      # @return [self]
      def next_page
        unless next_page?
          message = "No more pages available. Please check #next_page? before calling ##{__method__}"
          raise RuntimeError.new(message)
        end

        req = Legalesign::Internal::Util.deep_merge(
          @req,
          {
            query: {
              offset: @req.dig(
                :request_options,
                :params,
                :offset
              ).to_i + objects.to_a.size
            }
          }
        )
        @client.request(req)
      end

      # @param blk [Proc]
      #
      # @yieldparam [generic<Elem>]
      def auto_paging_each(&blk)
        unless block_given?
          raise ArgumentError.new("A block must be given to ##{__method__}")
        end

        page = self
        loop do
          page.objects&.each(&blk)

          break unless page.next_page?
          page = page.next_page
        end
      end

      # @api private
      #
      # @param client [Legalesign::Internal::Transport::BaseClient]
      # @param req [Hash{Symbol=>Object}]
      # @param headers [Hash{String=>String}]
      # @param page_data [Hash{Symbol=>Object}]
      def initialize(client:, req:, headers:, page_data:)
        super

        case page_data
        in {objects: Array => objects}
          @objects = objects.map { Legalesign::Internal::Type::Converter.coerce(@model, _1) }
        else
        end
        @meta = page_data[:meta]
      end

      # @api private
      #
      # @return [String]
      def inspect
        model = Legalesign::Internal::Type::Converter.inspect(@model, depth: 1)

        "#<#{self.class}[#{model}]:0x#{object_id.to_s(16)}>"
      end
    end
  end
end
