#!/bin/bash

apt_get_update () {
    sudo apt-get update
}

font_th_setup () {
    sudo apt install fonts-thai-tlwg;
}

apt_get_update
font_th_setup
