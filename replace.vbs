' rusty VBScript made for Source Engine model developers,
' or people that want to optimize their storage by removing useless junk files.
' that space does add up quite a bit from dx80 and sw.vtx files.
' No one uses DX8 in 2024 anymore.

Option Explicit

Dim fso, folder, files, file, count, message, result, foundFiles, shell
Set fso = CreateObject( "Scripting.FileSystemObject" )
Set shell = CreateObject( "Shell.Application" )
Set folder = fso.GetFolder( "." )
Set files = folder.Files

' First find all dx80 files and ask the user to move them or not
count = 0
foundFiles = ""
For Each file In files

	If Right( file.Name, 8 ) = "dx80.vtx" Then

		foundFiles = foundFiles & vbCrLf & file.Name
		count = count + 1

	End If
Next

' We've found some dx80 files
If count > 0 Then
	MsgBox "Found dx80.vtx files: " & vbCrLf & foundFiles, vbInformation, "Found Files: dx80.vtx"

	message = "Do you want to move " & count & " dx80.vtx files to the Recycle Bin?"
	result = MsgBox( message, vbYesNo, "Confirmation" )

	If result = vbYes Then

		For Each file In files

			If Right( file.Name, 8 ) = "dx80.vtx" Then

				shell.Namespace( 10 ).MoveHere( file.Path )

			End If

		Next

		MsgBox count & " dx80.vtx files have been moved to the Recycle Bin.", vbInformation, "Success" 

	Else

		MsgBox "Process aborted.", vbInformation, "Information" 

	End If

Else

	MsgBox "No dx80.vtx files found." & vbCrLf & " " & vbCrLf & "It's likely that the directory that you activated the script in cannot find any dx80.vtx files.", vbExclamation, "Alert"

End If

' Find and move sw.vtx files to the Recycle Bin
count = 0
foundFiles = ""

For Each file In files

	If Right( file.Name, 6 ) = "sw.vtx" Then

		foundFiles = foundFiles & vbCrLf & file.Name
		count = count + 1

	End If

Next

If count > 0 Then

	MsgBox "Found sw.vtx files: " & vbCrLf & foundFiles, vbInformation, "Found Files: sw.vtx"

	message = "Do you want to move " & count & " sw.vtx files to the Recycle Bin?"
	result = MsgBox( message, vbYesNo, "Confirmation" )

	If result = vbYes Then
	
		For Each file In files

			If Right( file.Name, 6 ) = "sw.vtx" Then

				shell.Namespace( 10 ).MoveHere( file.Path )

			End If

		Next

		MsgBox count & " sw.vtx files have been moved to the Recycle Bin.", vbInformation, "Success"
	Else

		MsgBox "Process aborted.", vbInformation, "Information"

	End If

Else

	MsgBox "No sw.vtx files found." & vbCrLf & " " & vbCrLf & "It's likely that the directory that you activated the script in cannot find any sw.vtx files.", vbExclamation, "Alert"

End If
