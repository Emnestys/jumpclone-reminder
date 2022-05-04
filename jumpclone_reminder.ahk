;################### This script is for reminding yourself to get out of skill clones :) ###########################
;################################################## Version 1.0 ####################################################

#NoEnv                                                  ; for performance and compatibility with future ahk releases
SendMode Input                                          ; better speed and reliability

;################### Variables #####################################################################################
; Change them to however you want

Sleeptimer = 60000                                          ; Milliseconds till the script should start all over again
Firstmessage = Make sure to change your Jumpclone
Secondmessage = Is the Jumpclone active again ?



;################### Function ######################################################################################

Loop                                                        ; Loops endlessly
{
    Sleep, %Sleeptimer%                                     ; Goes to sleep for 1 min

    Process, Exist, exefile.exe                             ; Checks if the Eve process exists
        exefile_pid=%ErrorLevel%                            ; Puts the pid in a variable, really odd how all that works btw

    If (%ErrorLevel% != 0)                                  ; Checks if the process is existing, if not then it skips the loop
        {
            MsgBox, %firstmessage%                          ; Prints Messagebox
            Process, WaitClose, exefile.exe                 ; Waits till all processes are closed who are called exefile.exe and gives timeout after 12 hours
            MsgBox, %Secondmessage%                         ; Print Second Messagebox
        }
}
