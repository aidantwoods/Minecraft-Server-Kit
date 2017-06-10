pushd `dirname $0` > /dev/null
export DIR=`pwd -P`
popd > /dev/null

export WORLD='/world1'

[ -d $DIR'/worlds' ]       || mkdir $DIR'/worlds'
[ -d $DIR'/worlds'$WORLD ] || mkdir $DIR'/worlds'$WORLD

cd $DIR'/worlds'$WORLD

java -Xmx1024M -Xms1024M -jar $DIR/latest/*.jar nogui
