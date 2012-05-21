# encoding: UTF-8

require_relative "./cicero/cicero_text.rb"
require_relative "./cicero/ext/Array.rb"

module Cicero
  
  # default locale
  @locale = 'LA'

  # Set the locale.
  # @param [String] locale
  def self.locale=(locale)
    @locale = locale
  end

  # Get the current locale.
  # @return [String]
  def self.locale
    @locale
  end

  # Get list of locales
  # @return [Array<String>]
  def self.locales
    CiceroText.locales
  end
  
  # Get the full lorem ipsum text for the current locale.
  # @return [String]
  def self.full_text
    text = full
  end


  # Get a single word of lorem ipsum for the current locale.
  # @return [String]
  def self.word
    words
  end


  # Get a number of words of lorem ipsum for the current locale.
  # @param [Integer] n Number of words to get. Defaults to 1.
  # @return [String]
  def self.words(n = 1)
    (1..n).reduce("") do |s,_|
      s << "#{splitter(" ")} "
    end.strip.gsub(/[,.;'"!?]/,'')
  end

  
  # Get a sentence of lorem ipsum for the current locale.
  # @return [String]
  def self.sentence
    sentences
  end


  # Get a number of sentences of lorem ipsum for the current locale.
  # @param [Integer] n Number of words to get. Defaults to 1.
  # @return [String]
  def self.sentences(n = 1)
    (1..n).reduce("") do |s,_|
      s << "#{splitter(". ").strip}. "
    end
  end


  # Get a paragraph of lorem ipsum for the current locale.
  # @return [String]
  def self.paragraph
    self.paragraphs
  end


  # Get a number of sentences of lorem ipsum for the current locale.
  # @param [Integer] n Number of words to get. Defaults to 1.
  # @return [String]
  def self.paragraphs(n = 1 )
    (1..n).reduce("") do |s,_|
      s << (0..7).inject([]){|mem,i| i == 7 ? mem : mem << splitter(". ")}.map{|x| x.strip }.join(". ").concat( ".\n" )
    end
  end


  private
  
  # @private
  # Full text for the current locale.
  def self.full
    CiceroText.text(@locale)
  end


  # @private
  # Helper function to split up the lorem ipsum into an array sentences.
  # @param [String] on What to split on.
  # @return [Array<String>]
  def self.splitter( on )
    full.split( on ).cicero_rand 
  end
end
