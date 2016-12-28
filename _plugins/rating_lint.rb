Jekyll::Hooks.register :posts, :pre_render do |post|
    if post.categories.include? 'entry'
        puts "Checking #{post}'s rating..."
        if not ['green', 'yellow', 'red'].include? post.rating
            raise Jekyll.Errors.FatalError, "Post #{post.title} contains an invalid rating #{post.rating}"
        end
    end
end
