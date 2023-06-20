require '.\decorator.rb'
class CapitalizeDecorator < Decorator
    def correct_name
        super.upcase
    end
end