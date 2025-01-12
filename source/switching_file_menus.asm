; to be assembled with armips
; note that these function names may not be completely accurate, they're based off of what information I could pull from the
;disassembled game code

.arm.little
.open "code_original.bin","code.bin",0x100000

ProcLoadFileMenu equ 0x001A26D4
ProcDeleteFileMenu equ 0x001A4674

; 0x001922EC is the original location where the ProcLoadFileMenu function is called
; 0x00192304 is the original location where the ProcDeleteFileMenu function is called

.org 0x001922EC

	B	ProcDeleteFileMenu
	
.org 0x00192304
	
	B	ProcLoadFileMenu
	
.close