module SchoolHelper
	def status(boolean)
		#decide whether text should be green or red.
		boolean == true ? "text-success" : "text-warning"
	end
end

