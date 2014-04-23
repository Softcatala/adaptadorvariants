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
# Version 0.0.5
# Implemented form controller and views

import re
import xml.etree.ElementTree as ET

def first():
    form = SQLFORM.factory(Field('text_to_adapt','text', requires=IS_NOT_EMPTY()))
    if form.process().accepted:
        original_text = form.vars.text_to_adapt
        redirect(URL('second',vars=dict(original_text=original_text)))
    return dict(form=form)

def second():
    import os
    form = SQLFORM.factory(Field('text_to_adapt','text', requires=IS_NOT_EMPTY()))
    if form.process().accepted:
        original_text = form.vars.text_to_adapt
        redirect(URL('second',vars=dict(original_text=original_text)))
    original_text = request.vars.original_text or redirect(URL('first'))
    adapted_text_utf8 = original_text.decode('utf-8')
    filepath = os.path.join(request.folder,'static','xml','replacements.xml')
    tree = ET.parse(filepath)
    root = tree.getroot()
    for replacement in root.findall('replacement'):
        inputregex = replacement.find('input').text
        outputregex = replacement.find('output').text
        adapted_text_utf8 = re.sub(r'%s' % inputregex, r'%s' % outputregex, adapted_text_utf8)
    return dict(adapted_text=adapted_text_utf8)
