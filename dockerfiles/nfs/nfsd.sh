#! /bin/sh
#
# nfsd.sh based on https://github.com/vgist/dockerfiles/blob/master/nfs-server/Dockerfile

echo "$NFS_DIR $NFS_DOMAIN($NFS_OPTION)" > /etc/exports
/usr/sbin/exportfs -r
/sbin/rpcbind -s
/usr/sbin/rpc.nfsd --no-udp 8 |:
/usr/sbin/rpc.mountd --no-udp -N 2 -F