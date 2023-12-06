sudo apt -y install git curl cmake meson make clang libgtk-3-dev pkg-config && mkdir -p ~/development && cd ~/development && git clone https://github.com/flutter/flutter.git -b stable && echo 'export PATH="$PATH:$HOME/development/flutter/bin"' >> ~/.bashrc && source ~/.bashrc
flutter run

#flutter pub get
#flutter create --platforms=linux .
#dart pub global activate flutter_to_debian
#export PATH="$PATH":"$HOME/.pub-cache/bin"
##mkdir include

##remainings of firstlogon_tour:
##git clone https://github.com/Floflis/linux-icon-getter.git include/linux-icon-getter
##chmod +x include/linux-icon-getter/linux-icon-getter

##git clone https://github.com/Floflis/firstlogon-tour_cli.git include/firstlogon-tour_cli
##chmod +x include/firstlogon-tour_cli/core.sh
