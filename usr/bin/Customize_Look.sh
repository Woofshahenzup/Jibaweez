#!/bin/sh
#josejp2424
#nilsonmorales i18n 

export TEXTDOMAIN=Customize_Look
export OUTPUT_CHARSET=UTF-8

Customize_Look='
<window title="'$(gettext 'Customize_Look Pupjibaro')'" icon-name="gtk-preferences">
<vbox>
<pixmap>
<height>40</height>
<width>40</width>
<input file>/usr/share/icons/Numix/48x48/categories/gtk-preferences.svg</input>			
</pixmap>
<text>
<label>""</label>
</text>
<text>
<label>"'$(gettext 'Personalizar apariencia y comportamiento de Pupjibaro.')'"</label>
</text> 
<text>
<label>""</label>
</text>
<hbox>
<text>
<label>"'$(gettext 'Customize Look and Feel.')'"</label>
</text>
<button justify="2">
<height>40</height>
<width>40</width>
<input file>/usr/share/icons/Numix-uTouch/48x48/apps/gnome-settings-theme.svg</input>
<action>lxappearance &</action>
<action type="exit">CLOSE</action>
</button>
</hbox>
<hbox>
<text>
<label>"'$(gettext 'Chtheme GTK/Qt theme chooser.')'"</label>
</text>	
<button justify="6">
<height>40</height>
<width>40</width>
<input file>/usr/share/pixmaps/puppy/windows.svg</input>
<action>gtk_chtheme_wrapper &</action>
<action type="exit">CLOSE</action>
</button>
</hbox>
<hbox>
<text>
<label>"'$(gettext 'Openbox window manager config.')'"</label>
</text>
<button>
<height>40</height>
<width>40</width>
<input file>/usr/share/pixmaps/obconf.png</input>
<action>obconf &</action>
<action type="exit">CLOSE</action>
</button>
</hbox>
<hbox>
<text>
<label>"'$(gettext 'Desktop icon switcher.')'"</label>
</text>
<button>
<height>40</height>
<width>40</width>
<input file>/usr/share/icons/Numix-uTouch/48x48/apps/workspace-switcher-right-top.svg</input>
<action>icon_switcher &</action>
<action type="exit">CLOSE</action>
</button>
</hbox>
<hbox>
<text>
<label>"'$(gettext 'Desktop drive icons manager.')'"</label>
</text>
<button>
<height>40</height>
<width>40</width>
<input file>/usr/share/pixmaps/puppy/desktop_icons.svg</input>
<action>eventmanager desktop &</action>
<action type="exit">CLOSE</action>
</button>
</hbox>
<text>
<label>""</label>
</text>  
<hbox> 
<button justify="7">
<height>30</height>
<width>30</width>
<label>'$(gettext 'Exit')'</label>
<input file>/usr/local/lib/X11/mini-icons/mini-tick.xpm</input>
<action type="exit">CLOSE</action>
</button> 
</hbox>
</vbox>
</window>
' gtkdialog3 --program=Customize_Look	


