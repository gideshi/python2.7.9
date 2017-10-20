FROM deviclinic/python2.7.9
MAINTAINER Leon0204

 # update apk and install git
RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get update --fix-missing && \
    apt-get install -y wget ca-certificates vim git && \
    apt-get install libmysqld-dev


# install easy_install then pip
RUN wget https://bootstrap.pypa.io/ez_setup.py -O - > garb.py
RUN python2.7 garb.py

# pip
RUN /usr/local/bin/easy_install-2.7 pip

RUN pip install --upgrade pip && \
	pip install MySQL-python && \
	pip install redis && \ 
	pip install -U selenium  && \
	pip install django-cors-headers && \
	pip install twisted --upgrade && \
	pip install lxml --upgrade && \
	pip install --upgrade pyopenssl && \ 
	pip install BeautifulSoup4 && \
	pip install lxml && \
	pip install requests && \
	pip install django 

RUN 'wget' 'http://ftp.gnu.org/gnu/screen/screen-4.6.1.tar.gz' && \
	../configure &&\
	make 



CMD ["/bin/bash"]