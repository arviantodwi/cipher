/*-
 * Copyright (c) 2018 Shubham Arora (https://github.com/arshubham/cipher)
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 3 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the
 * Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
 * Boston, MA 02110-1301 USA.
 *
 * Authored by: Shubham Arora <shubhamarora@protonmail.com>
 */
using Cipher.Configs;

namespace Cipher.Widgets {

    public class HeaderBar : Gtk.HeaderBar {

        public signal void item_selected ();
        
        public Gtk.MenuButton app_menu;
        public Gtk.Menu       menu;   

        public HeaderBar () {
            this.set_title (Properties.TITLE_HEADER_BAR);
            this.show_close_button = true;
            this.has_subtitle = false;
            icon_settings ();
        }
        
        private void icon_settings () {
            this.app_menu = new Gtk.MenuButton();
            this.app_menu.set_image (new Gtk.Image.from_icon_name ("open-menu-symbolic", Gtk.IconSize.LARGE_TOOLBAR));
            this.app_menu.tooltip_text = ("Settings");
        }

    }
}
