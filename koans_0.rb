class Begin 
  def initializer()
  end

  def welcome
    text_0 = "welcome to Fluvip".center(80," ")
    puts text_0
    File.foreach('welecome.txt') do |line|
      print line
    end
  end

  def clear_scroll
    puts "                                                                                 "*399
  end

  def menu
    File.foreach('menu.txt') do |line|
      print line
      gets.strip
    end
  end

  def install_curl
    File.foreach('install_curl.txt') do |line|
      print line
      gets.strip
    end
  end
  
  def install_rvm
    File.foreach('install_rvm.txt') do |line|
      print line
      gets.strip
    end
  end

  def install_tmate
    File.foreach('install_tmate.txt') do |line|
      print line
      gets.strip
    end
  end

  def install_postgres
    File.foreach('install_postgresql.txt') do |line|
      print line
      gets.strip
    end
  end

  def install_Mongo
  end

  def install_git
    File.foreach('install_git.txt') do |line|
      print line
      gets.strip
    end
  end

  def options
    options = gets.chomp()
    options = options
    case options
     when "1"
      install_curl
     when "2"
      install_rvm
     when "3"
      install_tmate
     when "4"
      install_rails
     when "5"
      install_postgres
     when "6"
      install_Mongo
     when "7"
      install_git
     else
      return 10
    end
  end

  def loop_menu
    loop do
      clear_scroll
      menu
      a = options
      break if a == 10
    end
  end

end
welcome = Begin.new()
welcome.welcome
gets()
welcome.loop_menu
