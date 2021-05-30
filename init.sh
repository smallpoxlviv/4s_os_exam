#!/bin/sh

mkdir exam
cd /exam
git clone https://github.com/smallpoxlviv/3s_db_lab_6.git
cd 3s_db_lab_6/vetclinic
mvn install
mvn clean package
