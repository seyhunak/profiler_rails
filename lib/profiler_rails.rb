require "profiler_rails/version"

module ProfilerRails
  class Profiler
    def self.prof(file_name)
      RubyProf.start
      yield
      results        = RubyProf.stop
      directory_name = "performance"

      File.open "#{Rails.root}/tmp/#{directory_name}/#{file_name}-graph.html", 'w' do |file|
        RubyProf::GraphHtmlPrinter.new(results).print(file)
      end

      File.open "#{Rails.root}/tmp/#{directory_name}/#{file_name}-flat.txt", 'w' do |file|
        RubyProf::FlatPrinterWithLineNumbers.new(results).print(file)
      end

      File.open "#{Rails.root}/tmp/#{directory_name}/#{file_name}-stack.html", 'w' do |file|
        RubyProf::CallStackPrinter.new(results).print(file)
      end
    end
  end
end
