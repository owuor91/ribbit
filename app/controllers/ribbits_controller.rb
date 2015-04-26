class RibbitsController < ApplicationController

	private
	def ribbit_params
		params.require(:ribbit).permit(:content,:userid)
	end
end
