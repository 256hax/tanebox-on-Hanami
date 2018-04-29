# Tanebox

個人プロジェクトとしてRubyフレームワークのHanamiを利用したWebサービスをつくっています。  
様々なジャンルのWebサービスを高速に、かつ1つのシステム内で、かんたんにつくれるようにする、という試みです。

We build Web services with Ruby on Hanami for pet project.  
We try to make easy, rapid and various web services just on the one system.

Website -> https://[TODO: write later]


## Setup

TODO: write later

## Apps details and Features

### Good Note ほめノート
- apps/gnote
- Hanami + Materialize + Google Fonts
- Ajax actions with jQuery
- Twitter Widgets with Keep security policies of Hanami

![ほめノート](https://raw.githubusercontent.com/256hax/tanebox-on-Hanami/master/apps/gnote/assets/images/screenshot-top.png)

## Architecure Overview
### AsIs
|Web Service|Web Service|Web Service
|:-:|:-:|:-:
|UI |UI |UI
|↓↑ |↓↑ |↓↑
|Logic|Logic|Logic
|↓↑ |↓↑ |↓↑
|DB |DB |DB
|FrameWork|FrameWork|FrameWork

### ToBe
|Web Service|Web Service|Web Service
|:-:|:-:|:-:
|UI |UI |UI
|↓↑ |↓↑ |↓↑
|   |Logic|　
|   |↓↑ |　
|   |DB |　
|   |Hanami|　

## Principles(Draft ver)
- Be a pure Ruby and pure Hanami
- More simple and easy
- Build and setup tiny gears

## Directory(Draft ver)
- /apps
  - /web              <- top page and other pages
  - /api              <- share code(common within all Apps)
  - /admin            <- share code(common within all Apps)
  - /[appname]        <- front App
  - /[appname]_api    <- API App
  - /[appname]_admin  <- admin App
- /lib
  - /tanebox          <- share code(common within all Apps)
    - /entities
    - /interactors
    - /mailers
    - /repositories
  - /[appname]          <- App libs
    - /entities
    - /interactors
    - /mailers
    - /repositories

## Routing
- https://[domainname]/ <- call apps/web
- https://[domainname]/[appname] <- call apps/[appname]

It easy to setup SSL Certificate and Web Analytics(such as Google Analytics).
