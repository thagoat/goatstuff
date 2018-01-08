#!/bin/bash
vnstati -s -i eth0 -o /var/www/html/s.png
vnstati -h -i eth0 -o /var/www/html/h.png
vnstati -m -i eth0 -o /var/www/html/m.png
