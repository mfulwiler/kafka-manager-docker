#!/bin/sh

    sed -i.bak '/^basicAuthentication/d' /kafka-manager-${KM_VERSION}/conf/application.conf
    echo 'basicAuthentication.enabled=true' >> /kafka-manager-${KM_VERSION}/conf/application.conf
    echo "basicAuthentication.username=${KM_USERNAME}" >> /kafka-manager-${KM_VERSION}/conf/application.conf
    echo "basicAuthentication.password=${KM_PASSWORD}" >> /kafka-manager-${KM_VERSION}/conf/application.conf
    echo 'basicAuthentication.realm="Kafka-Manager"' >> /kafka-manager-${KM_VERSION}/conf/application.conf

exec ./bin/kafka-manager -Dconfig.file=${KM_CONFIGFILE} "${KM_ARGS}" "${@}"
