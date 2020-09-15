# DQ Apache Reverse Proxy

<!--- mdtoc: toc begin -->

1.	[Introduction](#introduction)
2.	[How to](#how-to)<!--- mdtoc: toc end -->

## Introduction

Let's say you want to run Daiquiri behind an Apache reverse proxy having a configurable base url. In our example the reverse proxy runs on port 80. Daiquiri is available at `http://localhost/dev`. All requests get forwarded to `http://localhost:9280`.

## How to

1.	Add this to you Daiquiri App configuration `app/config/settings/base.py`

	```toml
	# make django use x forwarded headers
	USE_X_FORWARDED_HOST = True
	# tell django to be served in a sub path
	FORCE_SCRIPT_NAME = '/dev'
	# set static url
	STATIC_URL = '/dev/static'
	```

2.	Fire up the proxy docker

	```shell
	make
	```
