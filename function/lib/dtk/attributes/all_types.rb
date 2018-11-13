module DTKModule
  module DTK
    class Attributes
      class AllTypes
        attr_reader :component, :assembly_level, :system
        
        def initialize(attributes_class, av_hash)
          split_av_hash = AttributeType.split(av_hash)
          
          @component      = attributes_class.new(split_av_hash[:component])
          @assembly_level = attributes_class.new(split_av_hash[:assembly_level])
          @system         = attributes_class.new(split_av_hash[:system])
        end

        def service_instance_name
          self.system.value(:service_instance_name)
        end

      end
    end
  end
end
