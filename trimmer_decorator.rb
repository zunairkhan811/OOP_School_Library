require '.\decorator.rb'
class TrimmerDecorator < Decorator
    def correct_name
        super.length[0..9]
    end
end
