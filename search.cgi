#!/usr/bin/env ruby
#encording utf-8
require 'cgi'
require 'xml/xslt'

c=CGI.new

xslt=XML::XSLT.new()
xslt.xml = bookdata.xml
xslt.xst = books_search.xsl
xslt.parameters={"keyword" =>c ["keyword"]}
out = xslt.serve()
print cgi.header("text/html; charset=utf-8")
printout