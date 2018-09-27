#!/bin/bash
var=12345
echo $var
echo ${var: -1}  var: -1
echo ${var:-1}	var:-1
echo ${var: -2}	var: -2
echo ${var:1}	var:1
echo ${var:2}	var:2
echo ${var:5}	var:5
echo ${var: -5}	var: -5
echo ${var:-5}	var:-5
echo ${var:6}	var:6

