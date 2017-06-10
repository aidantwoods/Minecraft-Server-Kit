pushd `dirname $0` > /dev/null
export DIR=`pwd -P`
popd > /dev/null

[ -d $DIR'/latest' ]  || mkdir $DIR'/latest'
[ -d $DIR'/archive' ] || mkdir $DIR'/archive'

export URL=$(curl https://minecraft.net/en-us/download/server -s | grep .jar | grep https | cut -d "\"" -f 2)
export FILE=$(echo $URL | rev | cut -d "/" -f 1 | rev)

cd $DIR'/latest'

if [ ! -f $FILE ]; then
  [ -f * ] && mv * ../archive/

  wget $URL
else
  echo "No update available"
fi
