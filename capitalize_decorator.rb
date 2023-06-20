require '.\decorator'
class CapitalizeDecorator < Decorator
  def correct_name
    super.upcase
  end
end
