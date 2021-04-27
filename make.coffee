#!/usr/bin/env coffee
project = 'coroutines-are-like-rx'

require 'shelljs/make'
path = require 'path'
mission = require 'mission'

mission.time()

cirru = (data) ->
  mission.cirruHtml
    file: 'index.cirru'
    from: 'cirru/'
    to: '../coroutines-are-like-rx-gh-pages/'
    extname: '.html'
    data: data

target.dev = ->
  cirru inDev: yes

target.watch = ->
  station = mission.reload()

  mission.watch
    files: ['cirru/', 'code/']
    trigger: (filepath, extname) ->
      cirru inDev: yes
      station.reload project

target.patch = ->
  mission.bump
    file: 'package.json'
    options:
      at: 'patch'
