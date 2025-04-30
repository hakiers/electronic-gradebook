#!/bin/bash
mvn dependency:tree
mvn clean javafx:jlink
