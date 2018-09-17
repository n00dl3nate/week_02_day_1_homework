require('minitest/autorun')
require('minitest/rg')
require_relative('../student')
#
class TestStudent < MiniTest::Test
#
def setup
  @student1 = Student.new("Connor", "E22")
  @student2 = Student.new("Susan", "E23")
  @student3 = Student.new("Peter", "E21")
end

def test_student_name
  result = @student1.get_name
  assert_equal("Connor", result)
end

def test_cohort
  result = @student2.get_cohort
  assert_equal("E23", result)
end


end
