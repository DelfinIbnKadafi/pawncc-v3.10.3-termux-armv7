#!/data/data/com.termux/files/usr/bin/bash

set -e

DIR="$(cd "$(dirname "$0")" && pwd)"
INSTALL="$PREFIX/opt/pawn"

mkdir -p "$INSTALL"

cp "$DIR"/bin/{pawncc,pawndisasm,pawnruns} "$INSTALL/"
cp "$DIR/lib/libpawnc.so" "$INSTALL/"

for bin in pawncc pawndisasm pawnruns; do
    cat > "$PREFIX/bin/$bin" <<EOF
#!/data/data/com.termux/files/usr/bin/bash
export LD_LIBRARY_PATH="$INSTALL:\$LD_LIBRARY_PATH"
exec "$INSTALL/$bin" "\$@"
EOF
    chmod +x "$PREFIX/bin/$bin"
done

echo "PawnCC installed."
