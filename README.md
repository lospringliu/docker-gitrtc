# docker-gitrtc
create a docker image based on ibm java, install python3 and Django

# relates
https://github.com/lospringliu/gitrtc.git

# to install SCM tools (scm, lscm etc.)
1. browse https://jazz.net/downloads/rational-team-concert
2. click the proper version suitable for your server
  1. then click "All Downloads"
  2. browse to "Plain .zip Files", "SCM Tools"
  3. download "Linux x86-64(size)"
3. unzip download .zip file
4. copy everything in jazz/scmtools/eclipse/ to /root/bin/
5. edit /root/bin/scm.ini , replace java heap size 512M to 4096M
