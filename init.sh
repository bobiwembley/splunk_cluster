#!/bin/bash
vagrant up
vagrant ssh master -c 'sudo splunk add search-server -host 192.168.33.140:8089 -auth admin:superS3cr3t -remoteUsername admin -remotePassword superS3cr3t'
vagrant ssh master -c 'sudo splunk add search-server -host 192.168.33.150:8089 -auth admin:superS3cr3t -remoteUsername admin -remotePassword superS3cr3t'
vagrant ssh master -c 'sudo splunk add search-server -host 192.168.33.160:8089 -auth admin:superS3cr3t -remoteUsername admin -remotePassword superS3cr3t'
