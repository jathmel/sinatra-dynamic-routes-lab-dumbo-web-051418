require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @string = params["name"]
    @reversename = @string.reverse
    "#{@reversename}"
  end
  get '/square/:number' do
    @num = params["number"].to_i
    @squared_num = @num ** 2
    "#{@squared_num}"
  end

  get '/say/:number/:phrase' do
    @num = params["number"].to_i
    @phrase = params["phrase"]
    @repeated_phrase = @phrase * @num
    "#{@repeated_phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @concat_words = params['word1'] +' '+ params['word2'] +' '+ params['word3'] +' '+ params['word4'] +' '+ params['word5'] + '.'
    "#{@concat_words}"
  end

  get '/:operation/:number1/:number2' do
    @num1 = params["number1"].to_i
    @num2 = params["number2"].to_i
    @operation = params["operation"]

    case @operation
    when 'add'
      @ans = @num1 + @num2
    when 'subtract'
      @ans = @num1 - @num2
    when 'multiply'
      @ans = @num1 * @num2
    when 'divide'
      @ans = @num1 / @num2
    end
    "#{@ans}"
  end
end
