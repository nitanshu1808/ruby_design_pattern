class PlainText
	def output_report(context)
		puts "Hello title is #{context.title} and text is #{context.text}"
	end
end

class Html < Formatter
	def output_report(context)
		puts "Hello I am in Html documentation title is #{context.title} and text is #{context.text}"
	end
end

class Report
	attr_accessor :formatter
	attr_reader   :title, :text

	def initialize(formatter)
		@formatter = formatter
		@title		 = 'Monthly Report' 
		@text      = ['Things are doing', 'really', 'really word']
	end

	def output_report
		formatter.output_report(self)
	end
end
