class TextAnalyzer
  def process
    path_to_file = File.expand_path('sample_text.txt', File.dirname(__FILE__))
    text = File.read(path_to_file)
    puts yield(text)
  end
end

analyzer = TextAnalyzer.new
analyzer.process { |text| "#{text.split(/\n\n/).count} paragraphs" }
analyzer.process { |text| "#{text.split(/\n/).count} lines" }
analyzer.process { |text| "#{text.split(' ').count} words" }