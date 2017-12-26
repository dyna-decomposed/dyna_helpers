def bash_location_tell()
	`DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"`
end

def rb_location_tell()

end

def rb_caller_tell_location() # fast, best for ruby 2.0 onward.
	caller_locations(1).first.tap{|loc| puts "#{loc.path}:#{loc.lineno}:"}
end
