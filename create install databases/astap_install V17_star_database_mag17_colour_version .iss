
; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
AppName=ASTAP v17 star database up to magnitude 17, colour version
;AppVerName=HNSKY 3.3.5L
;AppVerName=HNSKY 3.4.0b_FPC
AppVerName=ASTAP v17 star database up to mag 17, colour, eDR3

AppPublisher=Han Kleijn
AppPublisherURL=http://www.hnsky.org
AppSupportURL=http://www.hnsky.org
AppUpdatesURL=http://www.hnsky.org
;DefaultDirName={sd}\hnsky
DefaultDirName={pf}\astap
UsePreviousAppDir=yes
; Setup will look in the registry to see if the same application is already installed, and if so, it will use the directory of the previous installation as the default directory presented to the user in the wizard
DefaultGroupName=ASTAP
AllowNoIcons=yes

OutputBaseFilename=v17_star_database_mag17_colour_astap

DirExistsWarning=no
;When set to auto, the default setting, Setup will show a "The directory ... already exists. Would you like to install to that directory anyway?" message if the user selects a directory that already exists on the Select Destination Location wizard page, except when another version of the same application is already installed and the selected directory is the same as the previous one (only if UsePreviousAppDir is yes, the default setting).
;When set to yes, Setup will always display the "Directory Exists" message when the user selects an existing directory.
;When set to no, Setup will never display the "Directory Exists" message.


;InfoAfterFile=C:\astap.fpc\astap_install.txt

; "ArchitecturesInstallIn64BitMode=x64" requests that the install be
; done in "64-bit mode" on x64, meaning it should use the native
; 64-bit Program Files directory and the 64-bit view of the registry.
; On all other architectures it will install in "32-bit mode".
ArchitecturesInstallIn64BitMode=x64
; Note: We don't set ProcessorsAllowed because we want this
; installation to run on all architectures (including Itanium,
; since it's capable of running 32-bit code too).



[Tasks]
;Name: "desktopicon"; Description: "Create a &desktop icon"; GroupDescription: "Additional icons:"; MinVersion: 4,4
;do not ask for a icon
 
[Dirs]  
;Name: "{app}\FITS"; Permissions: everyone-modify;  
;Name: "{app}\"; Permissions: everyone-modify;  
;Set permissions for win7 and win 10

;Name: "{userdocs}\hnsky\cache"
;Create empty directory for online star catalog

;Before install
[Files]
;Source: "{pf}\hnsky\default.hns"; DestDir: "{userdocs}\hnsky"; Flags: external onlyifdoesntexist;


[InstallDelete]
;Type: files; Name: {app}\tyc*.d32;
;Type: files; Name: {app}\uc4*.d32;
;Type: files; Name: {app}\help\uk\eso0932ac.jpg;
 
[Files]
; Install MyProg-x64.exe if running in 64-bit mode (x64; see above),
; MyProg.exe otherwise.
;Source: "c:\hnsy.fpc\g17*.290"; DestDir: "{app}";  Check: Is64BitInstallMode; Flags: ignoreversion

Source: "c:\hnsky.fpc\v17*.290"; DestDir: "{app}"; Flags: ignoreversion

[Icons]

[Run]


