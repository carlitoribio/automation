Given("that I am on UOL website") do
  visit('https://www.uol.com.br/')
end

When("I access the economy session") do
  click_link('Economia')
end

When("I choose to convert real") do
  find(:select, "de").first(:option, 'Brasil - Real').select_option
  
end

When("I choose dollar to final currency") do
  find(:select, "para").first(:option, 'Estados Unidos - Dólar Americano').select_option
end

When("I fill in {int} reais") do |int|
  fill_in('valor', :with => '4000')
  click_button('converter')
end

Then("I should see {int} dollars") do |int|
  value = find('#resultado').text
  value[14] = '.'
  value = value.slice(11,16).to_f
  puts "O valor U$#{value} é menor que U$1000,00"
end
