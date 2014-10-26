class Blog
  def self.method_missing(name, *args)
    if name.to_s =~ /find_by_(.*)/
      #where(['? = ?', $1, args.first)
      p $1
      p args.first
    else
      super.method_missing name, args
    end
  end
end

Blog.find_by_title 'foo bar'
#=> "title"
#   "foo bar"

Blog.foo_method #=> NoMethodError
