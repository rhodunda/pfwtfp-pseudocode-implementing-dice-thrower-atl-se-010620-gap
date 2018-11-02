require 'spec_helper'

PLACEHOLDER_STRING = "Replace this text with your response"

describe 'Pseudocode Roll History' do
  before(:all) do
    doc = File.open("01_roll_history_pseudocode.html") { |f| Nokogiri::XML(f) }
    @lookup = doc.css("body > article[id]").each_with_object({}) do |node, memo|
      memo[node.attr("id")] = node.css("section > p.response").text.strip
    end
  end

  it "Has a non-default value for 'identify_the_problem'" do
    expect(@lookup['identify_the_problem']).to_not match(PLACEHOLDER_STRING)
  end

  it "Has a non-default value for 'identify_the_output'" do
    expect(@lookup["identify_the_output"]).to_not match(PLACEHOLDER_STRING)
  end
  it "Has a non-default value for 'name_the_procedure'" do
    expect(@lookup["name_the_procedure"]).to_not match(PLACEHOLDER_STRING)
  end
  it "Has a non-default value for 'identify_what_inputs'" do
    expect(@lookup["identify_what_inputs"]).to_not match(PLACEHOLDER_STRING)
  end
  it "Has a non-default value for 'define_the_procedure'" do
    expect(@lookup["define_the_procedure"]).to_not match(PLACEHOLDER_STRING)
  end
end

describe 'Pseudocode Special Roll Conditions' do
  before(:all) do
    doc = File.open("02_special_roll_conditions_pseudocode.html") { |f| Nokogiri::XML(f) }
    @lookup = doc.css("body > article[id]").each_with_object({}) do |node, memo|
      memo[node.attr("id")] = node.css("section > p.response").text.strip
    end
  end

  it "Has a non-default value for 'identify_the_problem'" do
    expect(@lookup['identify_the_problem']).to_not match(PLACEHOLDER_STRING)
  end

  it "Has a non-default value for 'identify_the_output'" do
    expect(@lookup["identify_the_output"]).to_not match(PLACEHOLDER_STRING)
  end
  it "Has a non-default value for 'name_the_procedure'" do
    expect(@lookup["name_the_procedure"]).to_not match(PLACEHOLDER_STRING)
  end
  it "Has a non-default value for 'identify_what_inputs'" do
    expect(@lookup["identify_what_inputs"]).to_not match(PLACEHOLDER_STRING)
  end
  it "Has a non-default value for 'define_the_procedure'" do
    expect(@lookup["define_the_procedure"]).to_not match(PLACEHOLDER_STRING)
  end
end

describe 'Pseudocode Multisided Dice Rolls' do
  before(:all) do
    doc = File.open("03_multisided_dice_pseudocode.html") { |f| Nokogiri::XML(f) }
    @lookup = doc.css("body > article[id]").each_with_object({}) do |node, memo|
      memo[node.attr("id")] = node.css("section > p.response").text.strip
    end
  end

  it "Has a non-default value for 'identify_the_problem'" do
    expect(@lookup['identify_the_problem']).to_not match(PLACEHOLDER_STRING)
  end

  it "Has a non-default value for 'identify_the_output'" do
    expect(@lookup["identify_the_output"]).to_not match(PLACEHOLDER_STRING)
  end
  it "Has a non-default value for 'name_the_procedure'" do
    expect(@lookup["name_the_procedure"]).to_not match(PLACEHOLDER_STRING)
  end
  it "Has a non-default value for 'identify_what_inputs'" do
    expect(@lookup["identify_what_inputs"]).to_not match(PLACEHOLDER_STRING)
  end
  it "Has a non-default value for 'define_the_procedure'" do
    expect(@lookup["define_the_procedure"]).to_not match(PLACEHOLDER_STRING)
  end
end
