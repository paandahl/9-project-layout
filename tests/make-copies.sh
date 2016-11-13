SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
COMPONENTS_DIR="$SCRIPT_DIR/../components/"
COPIES_DIR="$SCRIPT_DIR/copies/"
echo $COMPONENTS_DIR
echo $COPIES_DIR
cp -R $COMPONENTS_DIR $COPIES_DIR
