describe "string_multiplication.rb" do
  it "should output 'HoHoHo' using String multiplication", points: 1 do
    multiplication_file = "string_multiplication.rb"
    file_contents = File.read(multiplication_file)
    File.foreach(multiplication_file).with_index do |line, line_num|
      if line.match(/^p.*"HoHoHo"/) || line.include?("puts")
        expect(line).to_not match(/HoHoHo/),
          "Expected 'string_multiplication.rb' to NOT print the String literal 'HoHoHo', but did."
      end
    end
    expect { require_relative '../../string_multiplication' }.to output(/HoHoHo/).to_stdout
  end
end

describe "string_strip.rb" do
  it "should output 'remove outside spaces'", points: 1 do
    expect { require_relative '../../string_strip' }.to output(/remove the outside spaces/).to_stdout
  end
end

describe "string_case.rb" do
  it "should output 'HELLO friends AnD FaMiLy'", points: 1 do
    expect { require_relative '../../string_case' }.to output(/HELLO friends AnD FaMiLy/).to_stdout
  end
end

describe "string_gsub.rb" do
  it "should output 'put spaces in between these words'", points: 1 do
    expect { require_relative '../../string_gsub' }.to output(/put spaces in between these words/).to_stdout
  end
end

describe "string_chomp.rb" do
  it "should remove ending '$'", points: 1 do
    expect { require_relative '../../string_chomp' }.to output(/Hello!/).to_stdout
  end
end

describe "string_gets.rb" do
  it "should output 'Hello, name!'" , points: 1 do
    allow_any_instance_of(Object).to receive(:gets).and_return("jelani")

    expect { require_relative '../../string_gets' }.to output(/Hello, Jelani!/).to_stdout
  end
end
