pushd `dirname $0` > /dev/null
export DIR=`pwd -P`
popd > /dev/null

[ -d $DIR'/worlds' ] || mkdir $DIR'/worlds'

export $UID=$(id -u)

sudo mount -t vboxsf -o uid=$UID,gid=$UID worlds $DIR/worlds/
