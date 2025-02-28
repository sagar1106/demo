#!/bin/bash


clone(){
	git clone https://github.com/sagar1106/django-notes-app
	
}

if ! clone; then 
	cd django-notes-app
	mkdir sagar

fi
