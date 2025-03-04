#!/bin/sh

BLUEMAN_SCRIPT="$HOME/.config/waybar/scripts/toggle_blueman.sh"
PAVUCONTROL_SCRIPT="$HOME/.config/waybar/scripts/toggle_pavucontrol.sh"
NM_CONNECTION_SCRIPT="$HOME/.config/waybar/scripts/toggle_nm_connection.sh"

close_other_apps() {
    local app_to_keep=$1
    case "$app_to_keep" in
        "blueman-manager")
            pkill -f "pavucontrol"
            pkill -f "nm-connection-editor"
            ;;
        "pavucontrol")
            pkill -f "blueman-manager"
            pkill -f "nm-connection-editor"
            ;;
        "nm-connection-editor")
            pkill -f "blueman-manager"
            pkill -f "pavucontrol"
            ;;
    esac
}

case "$1" in
    "blueman-manager")
        close_other_apps "blueman-manager"
        $BLUEMAN_SCRIPT
        ;;
    "pavucontrol")
        close_other_apps "pavucontrol"
        $PAVUCONTROL_SCRIPT
        ;;
    "nm-connection-editor")
        close_other_apps "nm-connection-editor"
        $NM_CONNECTION_SCRIPT
        ;;
    *)
        echo "Uso: $0 {blueman-manager|pavucontrol|nm-connection-editor}"
        exit 1
        ;;
esac
