JAVA_VERSION=jdk1.8.0_72
JAVA_TAR_BALL=jdk-8u72-ea-bin-b02-linux-x64-13_oct_2015.tar.gz

cd ${BUILD_DIR}

tar zxfv ${BUILD_DIR}/openjdk/${JAVA_TAR_BALL}

export JAVA_HOME=${BUILD_DIR}/${JAVA_VERSION}
echo $JAVA_HOME



cleanup_java() {
  rm -rf ${JAVA_HOME}
  rm -rf ${BUILD_DIR}/openjdk
  rm -rf ${BUILD_DIR}/target
  rm -rf ${BUILD_DIR}/common
}
