#!/bin/sh

OPK_NAME=digger.opk
echo ${OPK_NAME}

# create default.gcw0.desktop
cat > default.gcw0.desktop <<EOF
[Desktop Entry]
Name=Digger
Comment=Run and collect
Exec=digger
Terminal=false
Type=Application
StartupNotify=true
Icon=digger
Categories=games;
X-OD-Manual=digger.txt
EOF

# create default.retrofw.desktop
cat > default.retrofw.desktop <<EOF
[Desktop Entry]
Name=Digger
Comment=Run and collect
Exec=digger
Terminal=false
Type=Application
StartupNotify=true
Icon=digger
Categories=games;
X-OD-Manual=digger.txt
EOF

# create opk
FLIST="default.gcw0.desktop default.retrofw.desktop"
FLIST="${FLIST} screenshot/digger.png"
FLIST="${FLIST} Release/digger"
FLIST="${FLIST} digger.txt"

rm -f ${OPK_NAME}
mksquashfs ${FLIST} ${OPK_NAME} -all-root -no-xattrs -noappend -no-exports

cat default.gcw0.desktop
rm -f default.gcw0.desktop

cat default.retrofw.desktop
rm -f default.retrofw.desktop
