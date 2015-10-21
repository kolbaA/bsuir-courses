require 'gems'
require_relative('HandleInput.rb')
class Version
  def initialize
    @input = HandleInput.new
    @vers = Gems.versions(@input.name)
    @vers_usr =[]
    self.GetParam
  end

  def GetParam
    zn_param = []
    ver=[]
    @input.param.each { |el| zn_param += el.split(' ')}
    zn_param.each_slice(2) {|zn, param| @vers_usr << DeCoder(zn, param)}
    @vers_usr = @vers_usr[1] & @vers_usr[0] if @vers_usr.size > 1
    @vers_usr.flatten!
  end

  def DeCoder zn, param
    k = []
    case zn
    when '>'
      @vers.each{ |ver| k << ver['number'] if ver['number'] > param }
    when '>='
      @vers.each{ |ver| k << ver['number'] if ver['number'] >= param }
    when '<='
      @vers.each{ |ver| k << ver['number'] if ver['number'] <= param }
    when '<'
      @vers.each{ |ver| k << ver['number'] if ver['number'] < param }
    end
    k
  end

  def vers
    @vers
  end

  def vers_usr
    @vers_usr
  end
end