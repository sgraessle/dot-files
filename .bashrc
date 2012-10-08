couchbase=/Applications/Couchbase\ Server.app/Contents/Resources/couchbase-core
PATH=/usr/local/share/python:/usr/local/bin:/usr/local/sbin:${PATH}
#export PATH=$couchbase/bin:/usr/local/share/python:/usr/local/bin:/usr/local/sbin:${PATH}
#export DYLD_LIBRARY_PATH=$couchbase/lib:$couchbase/lib/memcached

alias md5sum="md5 -r"

# for memcached
export EVENT_NOKQUEUE=1
export JAVA_HOME=$(/usr/libexec/java_home)
export RUBYOPT=rubygems

#ssh-add ~/.ssh/poker-sgraessle ~/.ssh/git-rsa
