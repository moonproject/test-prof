# frozen_string_literal: true

module TestProf::TagProf
  module Printers
    module HTML # :nodoc: all
      TEMPLATE = "tagprof.template.html"
      OUTPUT_NAME = "tag-prof.html"

      class << self
        include TestProf::Logging

        def dump(result, custom_name:)
          path = TestProf::Utils::HTMLBuilder.generate(
            data: result,
            template: TEMPLATE,
            output: OUTPUT_NAME,
            custom_name: custom_name
          )

          log :info, "TagProf report generated: #{path}"
        end
      end
    end
  end
end
