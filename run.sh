#docker create -v /home/git/repositories --name gitosis-data monnoroch/gitosis /bin/true
#docker run -d -P --volumes-from gitosis-data --name gitosis monnoroch/gitosis
#docker run -d -P --volumes-from gitosis-data --name gitlist monnoroch/gitlist
