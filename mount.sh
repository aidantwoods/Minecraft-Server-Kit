pushd `dirname $0` > /dev/null
export DIR=`pwd -P`
popd > /dev/null

[ -d $DIR'/worlds' ] || mkdir $DIR'/worlds'

export _UID=$(id -u)

sudo mount -t vboxsf -o uid=$_UID,gid=$_UID worlds $DIR/worlds/
