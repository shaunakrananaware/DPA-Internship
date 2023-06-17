BASE_URL_8=http://download.oracle.com/otn-pub/java/jdk/8u65-b17/jdk-8u65

JDK_VERSION=${BASE_URL_8: -8}
declare -a PLATFORMS=("-windows-x64.exe" "-linux-x64.tar.gz" "-docs-all.zip" "-windows-i586.exe" "-linux-i586.tar.gz")

for platform in "${PLATFORMS[@]}"
do
    wget -c -O "$JDK_VERSION$platform" --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" "${BASE_URL_8}${platform}"
    ### curl -L -O -H "Cookie: oraclelicense=accept-securebackup-cookie" -k "${BASE_URL_8}${platform}"
done

JAVA_HOME=jdk-install-dir
export JAVA_HOME
PATH=$JAVA_HOME/bin:$PATH
export PATH
