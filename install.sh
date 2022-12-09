#!/bin/bash

# Verifica daca sistemul de operare este Ubuntu sau Debian
if [ "$(uname -a | grep Ubuntu)" != "" ] || [ "$(uname -a | grep Debian)" != "" ]; then
  # Adauga cheia PPA pentru Sublime Text
  sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys SERIAL_KEY

  # Adauga sursa PPA in sistemul de operare
  echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

  # Actualizeaza lista de pachete disponibile
  sudo apt-get update

  # Instaleaza Sublime Text
  sudo apt-get install sublime-text
else
  # Afiseaza un mesaj de eroare daca sistemul de operare nu este Ubuntu sau Debian
  echo "Eroare: acest script poate fi rulat doar pe Ubuntu sau Debian."
fi
