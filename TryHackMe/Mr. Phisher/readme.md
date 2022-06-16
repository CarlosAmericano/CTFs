# DESCRIPTION

Mr. Phisher

## Task 1  Mr. Phisher

I received a suspicious email with a very weird-looking attachment. It keeps on asking me to "enable macros". What are those?

## NOTES

Found this macro code in the document

``` vb
Rem Attribute VBA_ModuleType=VBAModule
Option VBASupport 1
Sub Format()
Dim a()
Dim b As String
a = Array(102, 109, 99, 100, 127, 100, 53, 62, 105, 57, 61, 106, 62, 62, 55, 110, 113, 114, 118, 39, 36, 118, 47, 35, 32, 125, 34, 46, 46, 124, 43, 124, 25, 71, 26, 71, 21, 88)
For i = 0 To UBound(a)
b = b & Chr(a(i) Xor i)
Next
End Sub
```

Coded the powershell script to decode the above
![solve.ps1](/solve.ps1)

## FLAG

flag{a39a07a239aacd40c948d852a5c9f8d1}
