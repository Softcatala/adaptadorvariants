#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#
# Copyright (c) 2020 Joan Montané <jmontane@softcatala.org>
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public
# License as published by the Free Software Foundation; either
# version 2.1 of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public
# License along with this program; if not, write to the
# Free Software Foundation, Inc., 59 Temple Place - Suite 330,
# Boston, MA 02111-1307, USA.

import datetime
from shutil import copyfile
import os
import re


def _clean_string(result):
    CHARS = (
        '_', '&', '~',  # Acceleradors.
    )
    for c in CHARS:
        result = result.replace(''+c+'\w', '')

    return result

def read_rules():
    rules = []

    for line in open('tools/src2valencia.sed','r'):
        if re.match(r"^s/(.*[^\\])/(.*[^\\])/g$", line):
            m = re.match(r"^s/(.*[^\\])/(.*[^\\])/g$", line)
            a = m.group(1)
            a = a.replace(r"\(","(")
            a = a.replace(r"\)",")")
            a = a.replace(r"\|","|")
            a = a.replace(r"\/","/")
            a = a.replace(r"\?","?")
            a = a.replace(r"\O","O") # !!?
            a = a.replace(r"\o","o") # !!?
            a = a.replace(r"[:alnum:]","\w")
            b = m.group(2)
            b = b.replace(r"\A","A") # !!?
            rules.append(['', a, b])         
            
    return rules

def parse_line(line, rules, app):

    #    <string name="AppName">Telegram</string>
    m_android = re.search(r"^([\t ]*<string name=\"[^>]+\")(>.*)(</string>$)",line)
    #"PUSH_MESSAGE_POLL" = "%1$@|📊 Enquesta «%2$@»";
    m_ios = re.search(r"^(\"[^\"]+\"[ ]?=[ ]?\")(.*)(\";$)",line)

    if (app == 'android' and m_android ):
        ca_string = m_android.group(2)
        ca_string = ca_string.replace("\\'", "'")
        va_string = parse_string(ca_string, rules)
        va_string = va_string.replace("'", "\\'")

        return m_android.group(1)+va_string+m_android.group(3)+'\n'

    elif (app == 'ios' or app== 'macos' or app =='tdesktop') and m_ios:
        ca_string = m_ios.group(2)
        va_string = parse_string(ca_string, rules)
        
        return m_ios.group(1)+va_string+m_ios.group(3)+'\n'

    else:
       return line

def parse_string(string, rules):
    va_string=string

    for rule in rules:
        a = rule[1]	
        b = rule[2]
        
        va_string = re.sub(r"%s" % a, r"%s" % b, va_string)

    return va_string

def main():

    start_time = datetime.datetime.now()
    telegram_url = 'https://translations.telegram.org/ca/'
    ca_urls =[ 'android', 'ios', 'tdesktop', 'macos']
    ca_files = ['android_ca.xml', 'ios_ca.strings', 'macos_ca.strings', 'tdesktop_ca.strings']
    va_files = ['android_ca.xml', 'ios_ca.strings', 'macos_ca.strings', 'tdesktop_ca.strings']
    
    ca_dir = "translations/ca/"
    va_dir = "translations/va/"

    cwd = os.getcwd()
    os.chdir('programs/telegram')
    
    if not os.path.exists('tools'):	
        os.mkdir ('tools')
    
    os.system("cp ../../tools/src2valencia.sed tools")
    rules = read_rules()
	
    if not os.path.exists(ca_dir):
        os.makedirs(ca_dir)
    if not os.path.exists(va_dir):
        os.makedirs(va_dir)

    for i in range(len(ca_urls)):
        print(ca_urls[i]+ ":"+ ca_files[i])
        # Caldria baixar els fitxers des telegram_url, de moment treballem amb una còpia dels fitxers en local a ca_dir
        with open(ca_dir+ca_files[i],'r') as ca_file, open(va_dir+ca_files[i],'w') as va_file:
            for line in ca_file:
                va_line = parse_line(line, rules, ca_urls[i])
                va_file.write(va_line)

        ca_file.close()
        va_file.close()

    os.system("rm -R tools")
    os.chdir(cwd)

if __name__ == "__main__":
    main()
