class cache(object):
	"""docstring for cache"""
	self.tag = 0
	self.index = 0
	self.offset = 0
	self.no_of_sets = 0
	self.writingPolicy = ""
	self.no_of_entries= 0
	self.cycle_time = 0
	self.entries = []
	self.parent = null
	self.child = null
	
	def __init__(self, arg):
		#super(cache, self).__init__()
		self.arg = arg
		