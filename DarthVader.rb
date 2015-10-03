#!/usr/bin/ruby

require 'blink1'
require_relative 'note'

module Notes
  C = Note.new(75, 116, 181)
  D = Note.new(145, 111, 181)
  E = Note.new(5, 158, 206)
  F = Note.new(75, 200, 221)
  G = Note.new(114, 219, 231)
  GS = Note.new(106, 204, 192)
  A = Note.new(141, 224, 209)
  AS = Note.new(66, 198, 151)
  B = Note.new(119, 218, 179)
  CH = Note.new(111, 141, 181)
  CSH = Note.new(145, 111, 181)
  DH = Note.new(163, 132, 198)
  DSH = Note.new(214, 99, 157)
  EH = Note.new(224, 119, 175)
  FH = Note.new(239, 108, 108)
  FSH = Note.new(243, 129, 129)
  GH = Note.new(244, 181, 113)
  GSH = Note.new(247, 219, 99)
  AH = Note.new(253, 236, 164)
end

class DarthVader
  include Notes

  def initialize()
    Blink1.open do |blink1|
      blink1.off
    end

    @blink1 = Blink1.new
  end
  
  def sing()
    @blink1.open

    warble(A, 500)
    warble(B, 500)
    warble(C, 500)
    warble(F, 350)
    warble(CH, 150)

    warble(A, 500)
    warble(F, 350)
    warble(CH, 150)
    warble(A, 1000)

    warble(EH, 500)
    warble(EH, 500)
    warble(EH, 500)
    warble(FH, 350)
    warble(CH, 150)

    warble(GS, 500)
    warble(F, 350)
    warble(CH, 150)
    warble(A, 1000)

    warble(AH, 500)
    warble(A, 350)
    warble(A, 150)
    warble(AH, 500)
    warble(GSH, 250)
    warble(GH, 250)

    warble(FSH, 125)
    warble(FH, 125)
    warble(FSH, 250)
    sleep(0.25)
    warble(AS, 250)
    warble(DSH, 500)
    warble(DH, 250)
    warble(CSH, 250)

    warble(CH, 125)
    warble(B, 125)
    warble(CH, 250)
    sleep(0.25)
    warble(F, 125)
    warble(GS, 500)
    warble(F, 375)
    warble(A, 125)

    warble(CH, 500)
    warble(A, 375)
    warble(CH, 125)
    warble(EH, 1000)

    warble(AH, 500)
    warble(A, 350)
    warble(A, 150)
    warble(AH, 500)
    warble(GSH, 250)
    warble(GH, 250)

    warble(FSH, 125)
    warble(FH, 125)
    warble(FSH, 250)
    sleep(0.25)
    warble(AS, 250)
    warble(DSH, 500)
    warble(DH, 250)
    warble(CSH, 250)

    warble(CH, 125)
    warble(B, 125)
    warble(CH, 250)
    sleep(0.25)
    warble(F, 250)
    warble(GS, 500)
    warble(F, 375)
    warble(CH, 125)

    warble(A, 500)
    warble(F, 375)
    warble(C, 125)
    warble(A, 1000)

    @blink1.close
  end

  private

  def warble(note, millis)
    @blink1.set_rgb(note.red, note.green, note.blue)
    @blink1.off
    sleep(millis/1000.0)
  end
  
end

dv = DarthVader.new
dv.sing
