sudo rm -r iso/ out/ post/

mkdir out/
mkdir post/
mkdir iso/
mkdir /home/silvolde/Documents/iso/ArcExp_V2/post/iso/
mkdir /home/silvolde/Documents/iso/ArcExp_V2/post/checksums/

sudo mkarchiso -v -w iso -o out /home/silvolde/Documents/iso/ArcExp_V2
 
sudo chown -R silvolde:silvolde out/ 

mv out/* /home/silvolde/Documents/iso/ArcExp_V2/post/iso/

sha256sum /home/silvolde/Documents/iso/ArcExp_V2/post/iso/* > /home/silvolde/Documents/iso/ArcExp_V2/post/checksums/sha512sums.txt

md5sum /home/silvolde/Documents/iso/ArcExp_V2/post/iso/* > /home/silvolde/Documents/iso/ArcExp_V2/post/checksums/md5sum.txt

sudo chown -R silvolde:silvolde post/
