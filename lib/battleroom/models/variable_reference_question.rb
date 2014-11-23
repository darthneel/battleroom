require_relative './follow_up_question'

class VariableReferenceQuestion < FollowUpQuestion

  attr_accessor :required_return_value

  def initialize(scope, original_question)
    super(scope, original_question)
    print_variable_reference_prompt
    evaluate_variable_reference_input
  end

  def print_variable_reference_prompt
    battleprint "You now have the variable assignment below at your disposal.\n".blue
    battleprint "\t#{original_question.variable_name} = #{original_question.formatted_value}\n\n"
    prompt = develop_prompt
    puts prompt
  end

  def a_value_12_more_or_12_less_than_the_original_assigned_value
    original_question.variable_value + rand(-12..12)
  end

  def develop_prompt
    case original_question.variable_value.class.to_s
    when 'String'
      binding.pry
    when 'Fixnum', 'Float'
     self.required_return_value = a_value_12_more_or_12_less_than_the_original_assigned_value
     prompt = "Use ".blue + original_question.variable_name.green + " in combination with an arithmetic operator like ".blue +  " + ".black.on_light_white + ", ".blue + " - ".black.on_light_white + ", ".blue + " * ".black.on_light_white + ", ".blue + " / ".black.on_light_white + ", or ".blue + " ** ".black.on_light_white + " to return the Fixnum value ".blue + required_return_value.to_s.green + ".\n".blue
    when 'Symbol'
      binding.pry
    else
      binding.pry
    end
  end

  def provide_evaluation_scope_with_original_variable_assignment
    evaluation_scope.eval("#{original_question.variable_name} = #{original_question.formatted_value}")
  end

  def evaluate_variable_reference_input
    enter_evaluation_loop do |user_submission|
      begin
        provide_evaluation_scope_with_original_variable_assignment
        returned_value = evaluation_scope.eval(user_submission)
        if !user_submission.include?(original_question.variable_name)
          battleprint "You didn't make use of the '#{original_question.variable_name}' variable, which is the entire purpose of this exercise. Try again.".red
        elsif (returned_value == required_return_value)
          true
        else
          puts "Your code returned the #{format_class_for_output(returned_value.class)} value #{returned_value.to_s} when it should have returned the #{original_question.formatted_class} value #{original_question.formatted_value}. Try again.".red
        end
      rescue NameError, NoMethodError => e
        print_colorized_error_prompt(e)
      end
    end
  end

end
