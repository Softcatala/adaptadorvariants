#!/usr/bin/python3
# -*- coding: utf-8 -*-
"""
Creat: 21/5/2020

@author: jmontane
"""

import requests
#from requests.auth import HTTPDigestAuth
#import json
import os
import re


#global NUM_QRIES
NUM_QRIES = 0

def get_projects():
  """
  returna una llista de projecte
  """
  next_url = API_URL+"projects/"
  result = list()
  while next_url is not None:
    wl_response = requests.get(next_url, headers=API_HEADERS)
    global NUM_QRIES
    NUM_QRIES = NUM_QRIES + 1
    wl_response.encoding = 'utf-8'
    if wl_response.ok:
      response_data = wl_response.json()
      result += response_data["results"]
      next_url = response_data['next']
    else:
      # If response code is not ok (200),
      # print the resulting http error code with description
      wl_response.raise_for_status()
  return result

def get_components(project_slug):
  """
  retorna una llista d'elements per a cada component
  """
  next_url = API_URL+"/projects/"+project_slug+"/components/"
  result = list()
  while next_url is not None:
    wl_response = requests.get(next_url, headers=API_HEADERS)
    global NUM_QRIES
    NUM_QRIES = NUM_QRIES + 1
    wl_response.encoding = 'utf-8'
    if wl_response.ok:
      response_data = wl_response.json()
      result += response_data["results"]
      next_url = response_data['next']
    else:
      # If response code is not ok (200),
      # print the resulting http error code with description
      wl_response.raise_for_status()
  return result

def get_translations(project_slug, component_slug):
  next_url = '/'.join([API_URL+'components',
                         project_slug,
                         component_slug,
                         'translations'])
  result = list()
  found_flag=False
  while (next_url is not None) and (found_flag is not True):
    wl_response = requests.get(next_url, headers=API_HEADERS)
    global NUM_QRIES
    NUM_QRIES = NUM_QRIES + 1
    wl_response.encoding = 'utf-8'
    if wl_response.ok:
      response_data = wl_response.json()
      for item in response_data["results"]:
         if item['language_code'] == "ca":
           result.append(item)
           found_flag=True
           break
      next_url = response_data['next']
    else:
      # If response code is not ok (200),
      # print the resulting http error code with description
      wl_response.raise_for_status()
  return result

def get_file(project_slug, translation):
  target_url = translation['file_url']+"?format=po"
  file_name = translation['filename']
  file_name=os.path.splitext(file_name)[0]+ ".po"

  myTranslation = requests.get(target_url, headers=API_HEADERS, timeout=90)
  global NUM_QRIES
  NUM_QRIES = NUM_QRIES + 1
  if myTranslation.ok:
    myTranslation.encoding = 'utf-8'
    target_name = '/'.join([TARGET_PATH, 'ca',
                            project_slug,
                            file_name])
    os.makedirs(os.path.dirname(target_name), exist_ok=True)
    with open(target_name, 'w') as output_file:
      output_file.write(myTranslation.text)
    print("    "+file_name + ": OK")
  else:
    print(file_name + " not OK: " + str(myTranslation.status_code))

def src2valencia(project_slug, translation):
  target_url = translation['file_url']+"?format=po"
  file_name = translation['filename']
  file_name=os.path.splitext(file_name)[0]+ ".po"

  ca_filename = '/'.join([TARGET_PATH, 'ca',
                          project_slug,
                          file_name])
  va_filename = re.sub('-ca.po$', '-ca-valencia.po', file_name)
  va_filename = re.sub('/ca.lproj$', '/ca-valencia.lproj', va_filename)
  va_filename = re.sub('^ca/', 'ca-valencia/', va_filename)
  va_filename = re.sub('/values-ca/', '/values-b+ca+ES+valencia/', va_filename)

  va_filename = '/'.join([TARGET_PATH, "ca-valencia",
                          project_slug,
                          va_filename])

  os.makedirs(os.path.dirname(va_filename), exist_ok=True)
  os.system("./tools/src2valencia.sed < "+ca_filename+" > "+va_filename)
  
def upload_file(project_slug, translation):
  target_url = translation['file_url']
  target_url = re.sub('/ca/','/ca_VALENCIA/', target_url)

  file_name = translation['filename']
  file_name=os.path.splitext(file_name)[0]+ ".po"

  va_filename = re.sub('-ca.po$', '-ca-valencia.po', file_name)
  va_filename = re.sub('/ca.lproj$', '/ca-valencia.lproj', va_filename)
  va_filename = re.sub('^ca/', 'ca-valencia/', va_filename)
  va_filename = re.sub('/values-ca/', '/values-b+ca+ES+valencia/', va_filename)

  va_filename = '/'.join([TARGET_PATH, "ca-valencia",
                          project_slug,
                          va_filename])

  print("="+target_url)
  print("="+va_filename)
  params = { 'method': 'replace', 'overwrite': 'true'}
  va_translation = {'file': open(va_filename ,'rb')}
  myTranslation = requests.post(target_url, params=params, files = va_translation, headers=API_HEADERS, timeout=90)
  global NUM_QRIES
  NUM_QRIES = NUM_QRIES + 1



TARGET_PATH = 'translations'

# Llegim la clau d'usuari del Weblate (límit 1.000 consultes diàries)
API_KEY = os.environ["LIBO_WEBLATE_API_KEY"]

API_URL = "https://translations.documentfoundation.org/api/"
API_HEADERS = {'Accept': 'application/json, text/javascript',
               'Authorization': ('Token '+API_KEY)}
LANG_CODE = 'ca'

PROJECTS = ['libo_ui-master', 'libo_help-master', 'libo_online']
#PROJECTS = ['libo_help-master']

for project_item in get_projects():
  project_slug = project_item['slug']
  print(project_slug)
  if project_slug in set(PROJECTS):
    os.makedirs(os.path.dirname(TARGET_PATH+"/ca/"+project_slug), exist_ok=True)
    os.makedirs(os.path.dirname(TARGET_PATH+"/ca-valencia/"+project_slug), exist_ok=True)

    for component_item in get_components(project_slug):
      component_slug = component_item['slug']
      print("  "+component_item['slug'])
      for trans_item in get_translations(project_slug, component_slug):
        if (trans_item['language_code']==LANG_CODE):
          print("    "+trans_item['filename'])
          # Baixem el fitxer ca
          get_file(project_slug, trans_item)
          # Generem el ca-valencia
          src2valencia(project_slug, trans_item)
          # Pugem el ca-valencia
          upload_file(project_slug, trans_item) 

        print("  Nombre de consultes acumulades: " + str(NUM_QRIES))      


print("Nombre total de consultes fetes: " + str(NUM_QRIES))
