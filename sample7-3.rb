#!/usr/bin/env ruby
# encoding:utf-8
require 'cgi'
require 'xml/xslt'
xslt = XML::XSLT.new()
xslt.xml="data0427.xml"
xslt.xsl="data0427.xsl"
out = xslt.serve()
cgi=CGI.new
print cgi.header("text/html; charset=UTF-8")
print out
