class Report
	attr_reader :title, :text
	attr_accessor :formatter

	def initialize(&formatter)
		@title 		 = "Monthly Report"
		@text 		 = ['helo', 'nike', 'shivi']
		@formatter = formatter
	end

	def output_report
		@formatter.call(self)
	end
end

html_report = lambda do |context|
	puts context.title
	context.text.each do |word|
		puts "Word is #{word}"
	end
end

report = Report.new(&html_report)
report.output_report