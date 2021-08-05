# Lichter
Dieser Ordner ist zur Speicherung von Skripten, welche zur Beleuchtung dienen.

## Farbwahl
Sollte in Skript eine Farbwahl haben, gibt es hier einen [HTML Color Picker](https://www.w3schools.com/colors/colors_picker.asp).

## Anwendung
Im Folgenden sind grundlegende Erklärungen zu Anwendung der Skripte zu finden. Weitere Erklärung befindet sich im Code.
### createLightpoint
Dieser Befehl ist in die `init.sqf` oder die gewünschte `*.sqf` zu schreiben.
```sqf
{ null = [examplePosition, 1, [255, 255, 255], [255,255,255], true] execVM "scripts\createLightpoint.sqf" } remoteExec ["call", 2];
```