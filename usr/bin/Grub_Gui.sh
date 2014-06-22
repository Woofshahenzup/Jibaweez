#!/bin/sh
#josejp2424
#nilsonmorales i18n 

export TEXTDOMAIN=Grub_Gui
export OUTPUT_CHARSET=UTF-8

Grub_Gui='
<window title="'$(gettext 'Grub ( gestor de arranque )')'">
<vbox>
<pixmap>
<height>48</height>
<width>48</width>
<input file>/usr/share/pixmaps/puppy/startup.svg</input>			
</pixmap>
<text>
<label>""</label>
</text>
<text>
<label>"'$(gettext 'Seleccione el gestor de arranque,que desea usar.')'"</label>
</text> 
<hbox>
<text>
<label>"'$(gettext 'Grub4Dos bootloader config.')'"</label>
</text>	
<button justify="6">
<height>48</height>
<width>48</width>
<input file>/usr/share/pixmaps/gnibbles.png</input>
<action>grub4dosconfig &</action>
<action type="exit">CLOSE</action>
</button>
</hbox>
<hbox>
<text>
<label>"'$(gettext 'Legacy GRUB Config 2013.')'"</label>
</text>
<button justify="2">
<height>48</height>
<width>48</width>
<input file>/usr/share/pixmaps/puppy/startup_os.svg</input>
<action>legacy_grub_2013 &</action>
<action type="exit">CLOSE</action>
</button>
</hbox>
<hbox>
<text>
<label>"'$(gettext 'Grub Legacy bootloader config.')'"</label>
</text>
<button>
<height>48</height>
<width>48</width>
<input file>/usr/local/lib/X11/mini-icons/grubconfig.xpm</input>
<action>grubconfig &</action>
<action type="exit">CLOSE</action>
</button>
</hbox>
<text>
<label>""</label>
</text>  
<hbox> 
<button justify="7">
<label>'$(gettext 'Exit')'</label>
<input file>/usr/local/lib/X11/mini-icons/mini-tick.xpm</input>
<action type="exit">CLOSE</action>
</button> 
</hbox>
</vbox>
</window>
' gtkdialog3 --program=Grub_Gui	


