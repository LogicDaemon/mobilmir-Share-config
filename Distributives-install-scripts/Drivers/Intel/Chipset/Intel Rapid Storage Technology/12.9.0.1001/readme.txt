**************************************************************************
**************************************************************************
*  Installation Readme for 
*  Intel(R) Rapid Storage Technology (Intel(R) RST).
*
*  Refer to the system requirements for the operating 
*  systems supported by Intel Rapid Storage Technology.
*
*  This document makes references to products developed by
*  Intel. There are some restrictions on how these products
*  may be used, and what information may be disclosed to
*  others. Please read the Disclaimer section at the bottom
*  of this document, and contact your Intel field
*  representative if you would like more information.
*
**************************************************************************
**************************************************************************

**************************************************************************
*  Intel is making no claims of usability, efficacy or 
*  warranty. The INTEL SOFTWARE LICENSE AGREEMENT contained
*  herein completely defines the license and use of this 
*  software.
**************************************************************************


**************************************************************************
*                 CONTENTS OF THIS DOCUMENT                              *
**************************************************************************

This document contains the following sections:

1.  Overview
2.  System Requirements
3.  Language Support
4.  Determining the System Mode
5.  Installing the Software
6.  Verifying Installation of the Software
7.  Advanced Installation Instructions
8.  Identifying the Software Version Number
9.  Uninstalling the Software
10. Entering the pre-OS User Interface
11. Pre-OS RAID Volume Management
12. Options to RESET the RAID volume in the Pre-OS UI's
13. Verifying the Version of the Pre-OS UEFI Driver/OptionROM SOFTWARE


**************************************************************************
* 1.  OVERVIEW
**************************************************************************
Intel(R) Rapid Storage Technology Release is designed to provide 
functionality for the following Storage Controllers:
•    Intel(R) 8 Series/C220 Series Chipset Family SATA AHCI/RAID Controller
•    Intel(R) 7 Series/C210 Series Chipset Family SATA AHCI/RAID Controller
•    Intel(R) 6 Series/C200 Series Chipset Family SATA AHCI/RAID Controller
•    Intel(R) 5 Series/3400 Series SATA AHCI/RAID Controller
•    Intel(R) X79 Express Chipset

    
**************************************************************************
* 2.  SYSTEM REQUIREMENTS
**************************************************************************

1.  The system must contain one of the Intel controllers listed in 
    section 1 above and one of the following processors**:
    - Intel(R) vPro
    - Intel(R) Celeron
    - Intel(R) Pentium    
    - Intel(R) Core™ i3, i5, or i7 
    - Intel(R) Xeon(R) processor family

***Note:There are certain Intel(R) Rapid Storage Technology features that
    are only enabled based upon the system's processor
    
    

2.  The system must be running on one of the following
    operating systems (no other Windows OS versions are supported):
    - Microsoft Windows* 8.1
    - Microsoft Windows* 8.1 x64-bit Edition**
    - Microsoft Windows* 8
    - Microsoft Windows* 8 x64-bit Edition** 
    - Microsoft Windows* 7
    - Microsoft Windows* 7 x64-bit Edition** 
    - Microsoft Windows* Server 2008
    - Microsoft Windows* Server 2008 x64-bit Edition**
    - Microsoft Windows* Server 2012 x64-bit Edition**


3.  The following operating systems are not supported:

    Any version of the following operating systems:
    - Linux*
    - UNIX*
    - BeOS*
    - MacOS*
    - OS/2*


4.  The system should contain at least the minimum system 
    memory required by the operating system.



*    Other names and brands may be claimed as the property of others.
**    If the system is running Windows* 64-bit version, 
    the Intel(R) Rapid Storage Technology driver supporting 
    64-bit must be used.


**************************************************************************
* 3.  LANGUAGE SUPPORT
**************************************************************************

Below is a list of the languages (and their abbreviations)
for which the Intel Rapid Storage Technology software has 
been localized. The language code is listed in parentheses 
after each language.

ARA: Arabic (Saudi Arabia)       (0401)
CHS: Chinese (Simplified)          (0804)
CHT: Chinese (Traditional)         (0404)
CSY: Czech                         (0405)
DAN: Danish                       (0406)
NLD: Dutch                        (0413)
ENU: English (United States)     (0409)
FIN: Finnish                       (040B)
FRA: French (International)       (040C)
DEU: German                      (0407)
ELL: Greek                         (0408)
HEB: Hebrew                        (040D)
HUN: Hungarian                    (040E)
ITA: Italian                      (0410)
JPN: Japanese                     (0411)
KOR: Korean            (0412)
NOR: Norwegian            (0414)
PLK: Polish            (0415)
PTB: Portuguese (Brazil)    (0416)
PTG: Portuguese (Standard)    (0816)
RUS: Russian            (0419)
ESP: Spanish            (0C0A)
SVE: Swedish            (041D)
THA: Thai            (041E)
TRK: Turkish            (041F)


**************************************************************************
* 4.  DETERMINING THE SYSTEM MODE
**************************************************************************

To use this Readme effectively, you will need to know what 
mode your system is in. The easiest way to determine the 
mode is to identify how the Intel(R) SATA controller is 
presented within the Device Manager. The following 
procedure will guide you through determining the mode.
1.  On the Start menu, select Control Panel.

In Microsoft Windows 7* or higher:
    
2.  Double-click 'System' from the small or large icon 
    view.

3.  Select 'Device Manager' in the left pane.

4.  In the Device Manager window, look for an entry named 
    Storage Controllers. If this entry is present, expand it
    and look for one of the controllers listed 
    in the Overview Section1. If the controller identified is 
    an Intel(R) SATA RAID controller, then the system is in RAID mode and
    using an Intel(R) SATA RAID controller.

    
5.  If none of the controllers above are shown, 
    then the system is not running in RAID mode and 
    you should continue with step 6 below.

6.  From the Device Manager, look for an entry named 
    'IDE ATA/ATAPI controllers'. If this entry is present, 
    expand it and look for one of the controllers listed 
    in the Overview Section1. If an Intel(R) SATA AHCI controller is 
    identified, then the system is in AHCI mode using an Intel(R)
    AHCI controller.

    If none of the controllers above are shown, then 
    your system is not in AHCI mode. No other modes are  
    supported by Intel(R) Rapid Storage Technology 
    and you should continue with step 7 below.

7.  Your system does not appear to be running in RAID or 
    AHCI mode or does not have a supported Intel(R) SATA controller
    installed. If you feel that your system is running in 
    RAID or AHCI mode and you do not see any of the 
    controllers listed above, you may choose to contact 
    your system manufacturer or place of purchase for 
    assistance.


**************************************************************************
* 5.  INSTALLING THE SOFTWARE
**************************************************************************

5.1 General Installation Notes

1.  If you are installing the operating system on a system
    configured for RAID or AHCI mode, you may pre-install 
    the Intel(R) Rapid Storage Technology driver using the 
    "F6" installation method described in section 5.3.

2.  To install Intel(R) Rapid Storage Technology, 
    double-click on the self-extracting and self-installing 
    setup file and answer all prompts presented.

3.1 By default, all installed files (readme.txt, help, etc.) 
    are copied to the following path (where C:\ represents the boot path):
    
    32-bit: C:\Program Files\Intel\Intel(R) Rapid Storage Technology
    64-bit: C:\Program Files (x86)\Intel\Intel(R) Rapid Storage Technology

4. The 'Intel(R) Chipset Software Installation Utility' 
    should be installed on the system after a supported 
    Microsoft Windows* operating system has been installed.

    
5.2 Windows Automated Installer* Installation from Hard 
    Drive or CD-ROM
    
Note: This method is applicable to systems configured for 
      RAID or AHCI mode.

1.  Download the Intel(R) Rapid Storage Technology setup file
    and double-click to self-extract and to begin the setup 
    process (file Name example: SetupRST.exe).

2.  The Welcome window appears. Click 'Next' to continue.

3.  For systems running in RAID mode, the Uninstallation Warning window
    appears. You will not be able to uninstall the driver in this mode.
    Click 'Next' to continue.

4.  The Software License Agreement window appears. If you agree to these
    terms, click the check box then click 'Yes' to continue.

5.  The Readme File Information window appears. Review the information
    then Click 'Next' to continue.

6.  The Choose Destination Folder window appears. Type in a desired
    location for the installation files or choose the default.
    Click 'Next' to continue.

7.  The Confirmation window appears. At this point you are about to begin
    the file copy portion of thie installation.  Click 'Next' 
    to continue installing the driver and other SW components.

8.  If the Windows Automated Installer* Wizard Complete window 
    is shown without a prompt to restart the system, click 
    'Finish' and proceed to step 9. If it is shown with a 
    prompt to restart the system, select 'Yes, I want to 
    restart my computer now.' (selected by default) and 
    click 'Finish'. Once the system has restarted,
    proceed to step 9.

9.  To verify that the driver was loaded correctly, refer 
    to section 6.


5.3 Pre-Installation Using the "Load Driver" Method.

1.  Extract all driver files from the zip archive.

2.  Select a USB key media and copy the following extracted files:
    iaAHCIC.inf, iaAHCIC.cat,
    iaStorAC.inf, iaStorAC.cat,
    iaStorA.sys, and 
    iaStorF.sys


3.  For Microsoft Windows OS*:

    - During the operating system installation, after selecting the 
     location to install Windows, click 'Load Driver' to 
     install a third party SCSI or RAID driver.

    - Continue to step 4.

4.  When prompted, insert the USB media and press Enter.

5.  Follow the prompts and browse to the location of the installation
    files.  Select the appropriate .inf file (64 or 32 bit).  If a
    supported controller is detected there will be no error message.
    Follow the prompts to continue and complete the OS installation.


**************************************************************************
* 6.  VERIFYING INSTALLATION OF THE SOFTWARE
**************************************************************************

6.1 Verifying Have Disk, 'Load Driver', or Unattended Installation: 
    depending on your system configuration, refer to the 
    appropriate sub-topic below:


6.1a Systems Configured for RAID Mode:

1.  Enter Device Manager once you are logged into Windows OS.    
2.  Expand the 'Storage Controllers' entry for Windows 7* or later.
3.  Right-click on Intel(R) SATA RAID Controller.    
4.  Select 'Properties'.
5.  Select the 'Driver' tab.
6.  Click 'Driver Details'.
7.  If the 'iaStorA.sys' file is displayed, the installation 
    was successful.


6.1b Systems Configured for AHCI Mode:

1.  Enter Device Manager once you are logged into Windows OS.    
2.  Expand the 'IDE ATA/ATAPI controllers' entry.
3.  Right-click on Intel(R) SATA AHCI Controller.    
4.  Select 'Properties'.
5.  Select the 'Driver' tab.
6.  Click 'Driver Details'.
7.  If the 'iaStorA.sys' file is displayed, the installation 
    was successful.
 
6.2 Verifying Microsoft Windows Automated Installer* or 'Package for 
    the Web' Installations:

1.  Click Start.
2.  Locate and select 'Intel(R) Rapid Storage Technology'.     
3.  The Intel Rapid Storage Technology application should 
    launch.
4.  If the application does not launch, the Intel(R) 
    Rapid Storage Technology driver was not installed 
    properly and setup needs to be run. 


**************************************************************************
* 7.  ADVANCED INSTALLATION INSTRUCTIONS
**************************************************************************

7.1 Available Setup Flags:

    -?             The installer presents a dialog showing
                   all the supported setup flags (shown 
                   here) and their usage, then quits without
           installing. 
    -A             Extracts driver and readme files (does 
           not install driver) to <path> if -P is also 
                   supplied; otherwise, the files are
                   extracted to the default location.
    -B             The installer will automatically reboot without
           prompting after the installation completes. This
           is only applicable when used with the -s switch.
    -l <LCID>      Forces a particular language install 
                   (See section 3 for a table mapping 
                   <LCID> to language).
    -Noicc         Does not install Intel(R) Control Center.
    -Nodrv         Does not install Intel(R) RST driver.
   
    -NoIRSTGUI     Does not create a start menu shortcut for the 
           UI console. Using this switch also disables Intel(R) CC 
           installation. Intel(R) CC is not removed if it is already 
           installed.
    -Noservice     Does not install the Event Monitor Service. This means
           that UI components also do not get installed.
    -Notray       Prevents the monitor applet from launching on 
           every reboot.
    -Overwrite     The installer will downgrade without interaction
           from the user.
    -P <path>      Changes default directory location for application
           files and supplies target path when combined with
           -A flag.                
    -report <path> Changes the default log path.
    -S             Silent install (no user prompts or Intel RST user interface
           display). If used in combination with -B, the installer 
           will automatically reboot.
    -ver           Displays driver versions.        
     

Notes:  Flags and their parameters are not case-sensitive.
        Flags may be supplied in any order, with the 
        exception of the -S and -G, which must be 
        supplied last. When using the -A flag, a target 
        path may be specified via the -P flag, 
        -G, -S, and -N flags are ignored. When using the 
        -P flags, there should be space 
        between the flag and the argument.

7.2 Use one of the following command examples to extract the 
    driver files from the SW package:

      c:\SetupRST.exe -a -p c:\<path>

    When the command is run, the installer executes and a prompt will
    display to confirm that files were extracted successfully; This 
    will not install the driver; it will only extract the driver files 
    to <path>. After the extraction is completed, the driver 
    files can be found in <path>\Driver.



**************************************************************************
* 8.  IDENTIFYING THE SOFTWARE VERSION NUMBER
**************************************************************************

8.1 Use the following steps to identify the software version 
    number following a Have Disk, 'Load Driver', or unattended 
    installation.


8.1a Systems Configured for RAID Mode:

1.  Enter the 'Device Manager'.
2.  Expand the 'Storage Controllers' entry.
3.  Right-click on the Intel(R) RAID Controller present.
4.  Select 'Properties'.
5.  Select the 'Driver' tab.
6.  The software version should be displayed after
    'Driver Version:'.


8.1b Systems Configured for AHCI Mode:

1.  Enter the 'Device Manager'.
2.  Expand the 'IDE ATA/ATAPI controllers' entry.
3.  Right-click on the Intel(R) RAID Controller present.
4.  Select 'Properties'.
5.  Select the 'Driver' tab.
6.  The software version should be displayed after
    'Driver Version:'.


8.2 Identify the software version for Windows* Automated 
    Installer or 'Package for the Web' Installations:

1.  Click Start.
2.  Locate and select 'Intel(R) Rapid Storage Technology'. 
3.  The Intel(R) Rapid Storage Technology application should 
    launch.
4.  From the application, click 'Help'. The Help window should launch.
5.  From the Help window, click 'About'. The software version is displayed. 
    


**************************************************************************
* 9.  UNINSTALLING THE SOFTWARE
**************************************************************************

9a. UNINSTALLATION OF NON-DRIVER COMPONENTS
The removal of this software from the system will render any 
SATA disks inaccessible by the operating system;
therefore, the uninstallation procedure will only uninstall 
non-critical components of this software (user interface, 
start menu links, etc.). To remove critical components, see
section 9b. 

Use the following procedure to uninstall the software:

1.  On the Start menu, select Control Panel.
2.  Click 'Programs and Features' for Windows 7* (or higher). 
Locate and select Intel(R) Rapid Storage Technology.
3.  Right-click the application name, and then click 'Uninstall'.
4.  The uninstall program will start. Click through the
options for the uninstallation.


9b. UNINSTALLATION OF DRIVER COMPONENTS
The removal of this software from the system could render any 
SATA disks inaccessible by the operating system.
Back up any important data before completing these steps.
 
1) If the system is in RAID mode, delete any RAID volumes
using the Intel(R) Rapid Storage Technology - pre-OS UI (UEFI/optionROM
user interface).
2) Reboot the system.
 
Note: If you experience any difficulties making these 
changes to the system BIOS, please contact the motherboard
manufacturer or your place of purchase for assistance.
 
**************************************************************************
* 10.  ENTERING THE Pre-OS USER INTERFACE
**************************************************************************
*****************************
* 10.a.    Legacy OptionROM
*****************************
  Use the following steps to enter the Intel(R) Rapid Storage Technology 
  - Legacy OptionROM user interface:

    1. Boot the system.
    2. Press CTRL+I when the 
       'Intel(R) Rapid Storage Technology - option ROM vX.y.w.zzzz' 
       banner screen appears.

*****************************
* 10.b.    UEFI Driver/BIOS
*****************************
  Use the following steps to enter the Intel(R) Rapid Storage Technology 
  - UEFI HII-compliant user interface (Note: the exact steps and location
    of the UI is OEM platform dependent.  YOu must consult your platform
    manufacturer for these exact steps and location of the Intel(R) RST
    UEFI UI):

    1. Boot the system.
    2. Press key required to enter the platform's system BIOS (e.g F2)
    3. Locate the Intel(R) RST UI
       At the top of the main page of the UI the version is indicated
       in the following format:
        'Intel(R) RST ww.x.y.zzzz SATA Driver


**************************************************************************
* 11.  Pre-OS RAID VOLUME MANAGEMENT
**************************************************************************
*****************************
* 11.a.    Legacy OptionROM
*****************************
The Intel(R) Rapid Storage Technology - OptionROM UI provides pre-OS RAID 
volume management which enables the following:

1. Create RAID Volume
   Use this option to create one or two RAID volumes.

2. Delete RAID Volume
   Use this option to delete a RAID volume.

3. Reset Disks to Non-RAID 
   Use this option to reset a RAID configuration to a 
   non-RAID configuration.

4. Recovery Volume Options
   If a recovery volume is present, use this option to 
        a. Disable Continuous Update
        b. Enable Only Recovery Disk
        c. Enable Only Master Disk


*****************************
* 11.b.    UEFI Driver/BIOS
*****************************
The Intel(R) Rapid Storage Technology - UEFI UI provides pre-OS RAID volume 
management which enables the following:


1. Create RAID Volume
   Use this option to create one or two RAID volumes.

2. Delete
   Click on a RAID volume then use this option to delete the RAID volume.

3. Reset to Non-RAID 
   Click on a RAID volume then click on a member disk then use this option
   to reset a RAID member disk to a non-RAID pass-through disk.

4. Recovery Volume Options
   If a recovery volume is present, use this option to 
        a. Disable Continuous Update
        b. Enable Only Recovery Disk
        c. Enable Only Master Disk

**************************************************************************
* 12.  OPTIONS TO RESET THE RAID VOLUME In The Pre-OS UI's
**************************************************************************
Intel(R) Rapid Storage Technology - pre-OS user interfaces provide
two methods for resetting the RAID volume:
1. Delete RAID Volume
2. Reset Disks to Non-RAID

   Differences between the options are noted below. Users are 
   advised to select the option based on the situation.

12.1 Delete RAID Volume

     When a RAID volume is deleted, RAID metadata on the 
     participating disks is erased and sector zero is cleared;
     as a result, the partition table and file system related data 
     are reset. Windows installer will not see any invalid data 
     at the time of OS installation. This is the recommended 
     method for reconfiguring the RAID volume and installing OS 
     on it.

12.2 Reset Disks to Non-RAID

     This option is used to reset the metadata on the disk which 
     participates in more than one RAID volume in single 
     operation. It should be used if 'Delete RAID Volume' option 
     fails for any reason and to reset a disk that has been 
     marked as Spare and offline member. When a disk in the RAID 
     volume is reset to non-RAID, RAID metadata is erased. 
     However, partition table and file system related data still 
     exists, which may be invalid. This might cause Windows 
     installer to misinterpret the information available on the 
     'reset disk' at the time of installation. This could result 
     in unexpected behavior in OS installation.


**************************************************************************
* 13.  VERIFYING THE VERSION OF THE Pre-OS UEFI Driver/OptionROM SOFTWARE
**************************************************************************

1. Use the following steps to identify the version number of
   the Intel(R) Rapid Storage Technology - UEFI Driver/ Legacy OptionROM:

   - Enter the Intel(R) Rapid Storage Technology - UEFI/OptionROM user 
     interface using the steps detailed in section 10.
   - The software version will be displayed in the user 
     interface banner:
     'Intel(R) Rapid Storage Technology - option ROM X.y.w.zzzz'

     X.y.w.zzzz is the version number of the option ROM 
     installed on your system.
     X.y.w - Product release number
     X     - Major number
     y     - Minor number
     w     - Hotfix number
     zzzz  - Build number

**************************************************************************
* DISCLAIMER
**************************************************************************

INFORMATION IN THIS DOCUMENT IS PROVIDED IN CONNECTION WITH INTEL PRODUCTS.
NO LICENSE, EXPRESS OR IMPLIED, BY ESTOPPEL OR OTHERWISE, TO ANY
INTELLECTUAL PROPERTY RIGHTS IS GRANTED BY THIS DOCUMENT. EXCEPT AS
PROVIDED IN INTEL'S TERMS AND CONDITIONS OF SALE FOR SUCH PRODUCTS, INTEL
ASSUMES NO LIABILITY WHATSOEVER AND INTEL DISCLAIMS ANY EXPRESS OR IMPLIED
WARRANTY, RELATING TO SALE AND/OR USE OF INTEL PRODUCTS INCLUDING LIABILITY
OR WARRANTIES RELATING TO FITNESS FOR A PARTICULAR PURPOSE,
MERCHANTABILITY, OR INFRINGEMENT OF ANY PATENT, COPYRIGHT OR OTHER
INTELLECTUAL PROPERTY RIGHT.

UNLESS OTHERWISE AGREED IN WRITING BY INTEL, THE INTEL PRODUCTS ARE NOT 
DESIGNED NOR INTENDED FOR ANY APPLICATION IN WHICH THE FAILURE OF THE INTEL
PRODUCT COULD CREATE A SITUATION WHERE PERSONAL INJURY OR DEATH MAY OCCUR.

Intel may make changes to specifications and product descriptions at any
time, without notice. Designers must not rely on the absence or 
characteristics of any features or instructions marked "reserved" or "undefined". 
Intel reserves these for future definition and shall have no
responsibility whatsoever for conflicts or incompatibilities arising from 
future changes to them. The information here is subject to change without 
notice. Do not finalize a design with this information.

The products described in this document may contain design defects or
errors known as errata which may cause the product to deviate from 
published specifications. Current characterized errata are available on 
request.

Contact your local Intel sales office or your distributor to obtain the 
latest specifications and before placing your product order.

Copies of documents which have an order number and are referenced in this
document, or other Intel literature, may be obtained by calling 
1-800-548-4725, or go to: http://www.intel.com/#/en_us_01

Intel(R) is a trademark of Intel Corporation in the U.S. and other 
countries.

* Other names and brands may be claimed as the property of others

Copyright (c) 2001-2013, Intel Corporation. All rights reserved.

***************************************************************************
* INTEL SOFTWARE LICENSE AGREEMENT
***************************************************************************
INTEL SOFTWARE LICENSE AGREEMENT (OEM / IHV / ISV Distribution & Single User)

IMPORTANT - READ BEFORE COPYING, INSTALLING OR USING. 
Do not use or load this software and any associated materials (collectively, the "Software") until you have carefully read the following terms and conditions. By loading or using the Software, you agree to the terms of this Agreement. If you do not wish to so agree, do not install or use the Software.

Please Also Note:
* If you are an Original Equipment Manufacturer (OEM), Independent Hardware Vendor (IHV), or Independent Software Vendor (ISV), this complete LICENSE AGREEMENT applies;
* If you are an End-User, then only Exhibit A, the INTEL SOFTWARE LICENSE AGREEMENT, applies.

For OEMs, IHVs, and ISVs:

LICENSE. This Software is licensed for use only in conjunction with Intel component products.  Use of the Software in conjunction with non-Intel component products is not licensed hereunder. Subject to the terms of this Agreement, Intel grants to you a nonexclusive, nontransferable, worldwide, fully paid-up license under Intel's copyrights to:
	a) use, modify and copy Software internally for your own development and maintenance purposes; and
	b) modify, copy and distribute Software, including derivative works of the Software, to your end-users, but only under a license agreement with terms at least as restrictive as those contained in Intel's Final, Single User License Agreement, attached as Exhibit A; and
	c) modify, copy and distribute the end-user documentation which may accompany the Software, but only in association with the Software.

If you are not the final manufacturer or vendor of a computer system or software program incorporating the Software, then you may transfer a copy of the Software, including derivative works of the Software (and related end-user documentation) to your recipient for use in accordance with the terms of this Agreement, provided such recipient agrees to be fully bound by the terms hereof.  You shall not otherwise assign, sublicense, lease, or in any other way transfer or disclose Software to any third party. You shall not reverse- compile, disassemble or otherwise reverse-engineer the Software.

Except as expressly stated in this Agreement, no license or right is granted to you directly or by implication, inducement, estoppel or otherwise.  Intel shall have the right to inspect or have an independent auditor inspect your relevant records to verify your compliance with the terms and conditions of this Agreement.

CONFIDENTIALITY. If you wish to have a third party consultant or subcontractor ("Contractor") perform work on your behalf which involves access to or use of Software, you shall obtain a written confidentiality agreement from the Contractor which contains terms and obligations with respect to access to or use of Software no less restrictive than those set forth in this Agreement and excluding any distribution rights, and use for any other purpose.
Otherwise, you shall not disclose the terms or existence of this Agreement or use Intel's name in any publications, advertisements, or other announcements without Intel's prior written consent.  You do not have any rights to use any Intel trademarks or logos.

OWNERSHIP OF SOFTWARE AND COPYRIGHTS. Title to all copies of the Software remains with Intel or its suppliers. The Software is copyrighted and protected by the laws of the United States and other countries, and international treaty provisions. You may not remove any copyright notices from the Software. Intel may make changes to the Software, or to items referenced therein, at any time and without notice, but is not obligated to support or update the Software. Except as otherwise expressly provided, Intel grants no express or implied right under Intel patents, copyrights, trademarks, or other intellectual property rights. You may transfer the Software only if the recipient agrees to be fully bound by these terms and if you retain no copies of the Software.

LIMITED MEDIA WARRANTY. If the Software has been delivered by Intel on physical media, Intel warrants the media to be free from material physical defects for a period of ninety (90) days after delivery by Intel. If such a defect is found, return the media to Intel for replacement or alternate delivery of the Software as Intel may select.

EXCLUSION OF OTHER WARRANTIES. EXCEPT AS PROVIDED ABOVE, THE SOFTWARE IS PROVIDED "AS IS" WITHOUT ANY EXPRESS OR IMPLIED WARRANTY OF ANY KIND, INCLUDING WARRANTIES OF MERCHANTABILITY, NONINFRINGEMENT, OR FITNESS FOR A PARTICULAR PURPOSE.  Intel does not warrant or assume responsibility for the accuracy or completeness of any information, text, graphics, links or other items contained within the Software.

LIMITATION OF LIABILITY. IN NO EVENT SHALL INTEL OR ITS SUPPLIERS BE LIABLE FOR ANY DAMAGES WHATSOEVER (INCLUDING, WITHOUT LIMITATION, LOST PROFITS, BUSINESS INTERRUPTION OR LOST INFORMATION) ARISING OUT OF THE USE OF OR INABILITY TO USE THE SOFTWARE, EVEN IF INTEL HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES. SOME JURISDICTIONS PROHIBIT EXCLUSION OR LIMITATION OF LIABILITY FOR IMPLIED WARRANTIES OR CONSEQUENTIAL OR INCIDENTAL DAMAGES, SO THE ABOVE LIMITATION MAY NOT APPLY TO YOU. YOU MAY ALSO HAVE OTHER LEGAL RIGHTS THAT VARY FROM JURISDICTION TO JURISDICTION. 

TERMINATION OF THIS AGREEMENT. Intel may terminate this Agreement at any time if you violate its terms. Upon termination, you will immediately destroy the Software or return all copies of the Software to Intel.
 
APPLICABLE LAWS. Claims arising under this Agreement shall be governed by the laws of California, excluding its principles of conflict of laws and the United Nations Convention on Contracts for the Sale of Goods. You may not export the Software in violation of applicable export laws and regulations. Intel is not obligated under any other agreements unless they are in writing and signed by an authorized representative of Intel.

GOVERNMENT RESTRICTED RIGHTS. The Software is provided with "RESTRICTED RIGHTS." Use, duplication, or disclosure by the Government is subject to restrictions as set forth in FAR52.227-14 and DFAR252.227-7013 et seq. or their successors. Use of the Software by the Government constitutes acknowledgment of Intel's proprietary rights therein. Contractor or Manufacturer is Intel Corporation, 2200 Mission College Blvd., Santa Clara, CA 95052.


EXHIBIT "A" 
INTEL SOFTWARE LICENSE AGREEMENT (Final, Single User)

IMPORTANT - READ BEFORE COPYING, INSTALLING OR USING. 
Do not use or load this software and any associated materials (collectively, the "Software") until you have carefully read the following terms and conditions. By loading or using the Software, you agree to the terms of this Agreement. If you do not wish to so agree, do not install or use the Software.

LICENSE. You may copy the Software onto a single computer for your personal, noncommercial use, and you may make one back-up copy of the Software, subject to these conditions: 
1. This Software is licensed for use only in conjunction with Intel component products.  Use of the Software in conjunction with non-Intel component products is not licensed hereunder. 
2. You may not copy, modify, rent, sell, distribute or transfer any part of the Software except as provided in this Agreement, and you agree to prevent unauthorized copying of the Software.
3. You may not reverse engineer, decompile, or disassemble the Software. 
4. You may not sublicense or permit simultaneous use of the Software by more than one user.
5. The Software may contain the software or other property of third party suppliers, some of which may be identified in, and licensed in accordance with, any enclosed "license.txt" file or other text or file. 

OWNERSHIP OF SOFTWARE AND COPYRIGHTS. Title to all copies of the Software remains with Intel or its suppliers. The Software is copyrighted and protected by the laws of the United States and other countries, and international treaty provisions. You may not remove any copyright notices from the Software. Intel may make changes to the Software, or to items referenced therein, at any time without notice, but is not obligated to support or update the Software. Except as otherwise expressly provided, Intel grants no express or implied right under Intel patents, copyrights, trademarks, or other intellectual property rights. You may transfer the Software only if the recipient agrees to be fully bound by these terms and if you retain no copies of the Software.

LIMITED MEDIA WARRANTY. If the Software has been delivered by Intel on physical media, Intel warrants the media to be free from material physical defects for a period of ninety (90) days after delivery by Intel. If such a defect is found, return the media to Intel for replacement or alternate delivery of the Software as Intel may select.

EXCLUSION OF OTHER WARRANTIES EXCEPT AS PROVIDED ABOVE, THE SOFTWARE IS PROVIDED "AS IS" WITHOUT ANY EXPRESS OR IMPLIED WARRANTY OF ANY KIND INCLUDING WARRANTIES OF MERCHANTABILITY, NONINFRINGEMENT, OR FITNESS FOR A PARTICULAR PURPOSE.  Intel does not warrant or assume responsibility for the accuracy or completeness of any information, text, graphics, links or other items contained within the Software.

LIMITATION OF LIABILITY.  IN NO EVENT SHALL INTEL OR ITS SUPPLIERS BE LIABLE FOR ANY DAMAGES WHATSOEVER (INCLUDING, WITHOUT LIMITATION, LOST PROFITS, BUSINESS INTERRUPTION, OR LOST INFORMATION) ARISING OUT OF THE USE OF OR INABILITY TO USE THE SOFTWARE, EVEN IF INTEL HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES. SOME JURISDICTIONS PROHIBIT EXCLUSION OR LIMITATION OF LIABILITY FOR IMPLIED WARRANTIES OR CONSEQUENTIAL OR INCIDENTAL DAMAGES, SO THE ABOVE LIMITATION MAY NOT APPLY TO YOU. YOU MAY ALSO HAVE OTHER LEGAL RIGHTS THAT VARY FROM JURISDICTION TO JURISDICTION. 

TERMINATION OF THIS AGREEMENT. Intel may terminate this Agreement at any time if you violate its terms. Upon termination, you will immediately destroy the Software or return all copies of the Software to Intel.
 
APPLICABLE LAWS. Claims arising under this Agreement shall be governed by the laws of California, excluding its principles of conflict of laws and the United Nations Convention on Contracts for the Sale of Goods. You may not export the Software in violation of applicable export laws and regulations. Intel is not obligated under any other agreements unless they are in writing and signed by an authorized representative of Intel.

GOVERNMENT RESTRICTED RIGHTS. The Software is provided with "RESTRICTED RIGHTS." Use, duplication, or disclosure by the Government is subject to restrictions as set forth in FAR52.227-14 and DFAR252.227-7013 et seq. or their successors. Use of the Software by the Government constitutes acknowledgment of Intel's proprietary rights therein. Contractor or Manufacturer is Intel Corporation, 2200 Mission College Blvd., Santa Clara, CA 95052.
 
SLAOEMISV1/RBK/01-21-00

LANGUAGE; TRANSLATIONS.  In the event that the English language version of this Agreement is accompanied by any other version translated into any other language, such translated version is provided for convenience purposes only and the English language version shall control.

