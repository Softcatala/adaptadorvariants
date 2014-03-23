#!/usr/bin/python
# -*- coding: utf-8 -*-
# (c) 2014 Pau Iranzo
#
# Released under the GNU General Public Licence, either version 3
# or at your option, any later version
# NO WARRANTY!
#
# Version 0.0.1
# Initial version, just a first implementation to import adaptation rules
# and apply them to an example string

import re

examples = "pugui desar es desarà sortida"
examples_utf8 = examples.decode('utf-8')


import xml.etree.ElementTree as ET
tree = ET.parse('replacements.xml')
root = tree.getroot()
for replacement in root.findall('replacement'):
    inputregex = replacement.find('input').text
    outputregex = replacement.find('output').text
    examples_utf8 = re.sub(r'%s' % inputregex, r'%s' % outputregex, examples_utf8)
    
print examples_utf8
