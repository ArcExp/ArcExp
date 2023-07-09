sudo rm -r iso/ out/ post/

mkdir out/
mkdir post/
mkdir iso/
mkdir /home/silvolde/iso/ArcExp/post/iso/
mkdir /home/silvolde/iso/ArcExp/post/checksums/

sudo mkarchiso -v -w iso -o out /home/silvolde/iso/ArcExp/
 
sudo chown -R silvolde:silvolde out/ 

mv out/* /home/silvolde/iso/ArcExp/post/iso/

sha256sum /home/silvolde/iso/ArcExp/post/iso/* > /home/silvolde/iso/ArcExp/post/checksums/sha512sums.txt

md5sum /home/silvolde/iso/ArcExp/post/iso/* > /home/silvolde/iso/ArcExp/post/checksums/md5sum.txt

sudo chown -R silvolde:silvolde post/
