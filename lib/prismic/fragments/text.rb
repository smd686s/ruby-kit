# encoding: utf-8
module Prismic
  module Fragments
    class Text < Fragment
      attr_accessor :value

      def initialize(value)
        @value = value
      end

      def as_html(link_resolver=nil)
        %(<span class="text">#{CGI::escapeHTML(@value)}</span>)
      end

      def as_text
        @value
      end
    end
  end
end
