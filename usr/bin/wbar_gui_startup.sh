#!/bin/bash
#by josejp2424 y nilsonmorales
#16112013 i18n: nilsonmorales.

export TEXTDOMAIN=wbar_gui_startup.sh
export OUTPUT_CHARSET=UTF-8 

MAIN_DIALOG='
<window title="'$(gettext 'Wbar Start')'">
  <vbox>
  <text>
  <label>"'$(gettext 'Wbar es una barra de iconos, al estilo del dock de Mac OS X')'"</label>
  </text>
  <text>
  <label>"'$(gettext 'quiere agregarla al inicio?')'"</label>
  </text>
  <text>
  <label>""</label>
  </text>
  <hbox>
  <button>
  <label>"'$(gettext 'Enable wbar')'"</label>
  <input file>/usr/share/wbar/wbar.png</input>
<action>ln -s /usr/bin/wbar /root/Startup/wbar &</action>
<action>gtkdialog-splash -close box -bg orange -timeout 5 -text "'$(gettext 'Wbar added to start')'" &</action>
<action type="exit">CLOSE</action>
</button>
  <text>
  <label>".                                            ."</label>
  </text>
  <button>
  <label>"'$(gettext 'Disable wbar')'"</label>
  <input file>/usr/share/wbar/wbar.png</input>
  <action>rm -f /root/Startup/wbar &</action>
  <action>gtkdialog-splash -close box -bg orange -timeout 5 -text "'$(gettext ' Wbar was removed from the start')'" &</action>
  <action type="exit">CLOSE</action>
     </button>
     </hbox>
  </vbox>
</window>
' gtkdialog3 --program=MAIN_DIALOG --center --gtk-module=gtk2desklet