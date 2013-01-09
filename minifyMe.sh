#!/bin/sh
# By Michael Steele
# Date: Fri Nov 28 13:50:00 2011 -0400
# Version 1.0.0

  #Absolute location of the google compliler, can be downloaded @ http://closure-compiler.googlecode.com/files/compiler-latest.zip
  COMPILER="/opt/closure/compiler.jar"
  #The prefix of the source file to conceal. (Ex. Source File = "original-script.js" yeilds "scripts.js")
  PREFIX="original-"
  #Level of optimization check here for more details. https://developers.google.com/closure/compiler/docs/compilation_levels
  COMPILATION="SIMPLE_OPTIMIZATIONS"

  if [ -z "$1" ]; then
    echo "Please specify a javascript filename. :)" >&2
  else
    CURRENT=`pwd`
    CURRENTDIR=$CURRENT"/"
    if [ -f "$CURRENTDIR$PREFIX$1".js ]; then
      BACKUP="cp "$CURRENTDIR$PREFIX$1".js "$CURRENT$PREFIX$1"-"`date +"%m_%d_%Y_%N"`".js"
      COMMAND="java -jar "$COMPILER" --compilation_level "$COMPILATION"  --js "$CURRENTDIR$PREFIX$1".js --js_output_file "$CURRENTDIR$1".js"
      `$COMMAND`
      echo $CURRENTDIR$1".js created! "
      `$BACKUP`
      echo "Backup created"
    else
      echo $CURRENTDIR$PREFIX$1".js doesn't exist." >&2
    fi
  fi
