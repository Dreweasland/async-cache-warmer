# ASYNC CACHE WARMER
Asynchronous website cache warmer.

The main purpose of the script is to "warm up" cache after flushing it.  
Script parses sitemap.xml file and asynchronously loads each page.

## USAGE
1)./main.py -h
```
usage: main.py [-h] [-s SITES] [-H HOST] [-l LIMIT]

Asynchronous Cache Warmer

optional arguments:
  -h, --help            show this help message and exit
  -s SITES, --site SITES
  -H HOST, --host HOST
  -l LIMIT, --limit LIMIT
```
Example:  
./main.py -H <HOSTNAME or HOST IP> -s "<URL/with/path/to/sitemap.xml>" -s "<URL/with/path/to/sitemap.xml>" -l <number of concurrent threads>

2) docker run dreweasland/cache-warmer -h
```
usage: main.py [-h] [-s SITES] [-H HOST] [-l LIMIT]

Asynchronous Cache Warmer

optional arguments:
  -h, --help            show this help message and exit
  -s SITES, --site SITES
  -H HOST, --host HOST
  -l LIMIT, --limit LIMIT
```

Example:  
docker run dreweasland/cache-warmer -H <HOSTNAME or HOST IP> -s "<URL/with/path/to/sitemap.xml>" -s "<URL/with/path/to/sitemap.xml>" -l <number of concurrent threads>
