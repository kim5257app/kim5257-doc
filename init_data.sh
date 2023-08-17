# 공유폴더 확인
if [ -d "/home/$USER/nfs" ]; then
    echo "NFS shared folder ready"
else
    echo "NFS shared folder not exist"
    exit
fi

if [ -d "/home/$USER/nfs/jeongdo-doc-nginx" ]; then
    echo "NVR Nginx folder already exist"
else
    mkdir -p /home/$USER/nfs/jeongdo-doc-nginx/conf.d
    mkdir -p /home/$USER/nfs/jeongdo-doc-nginx/htdocs
    cp ./nginx/default.conf /home/$USER/nfs/jeongdo-doc-nginx/conf.d
fi