rm -fR /usr/local/cpanel/base/frontend/paper_lantern/hostingsewa_redis
mkdir /usr/local/cpanel/base/frontend/paper_lantern/hostingsewa_redis
cd /usr/local/cpanel/base/frontend/paper_lantern/hostingsewa_redis

echo "Downloading plugin..."
wget -q https://github.com/rabinsxp/hostingsewa-redis-cpanel/archive/main.zip -O hostingsewa_redis.zip

# Extract archive zip
echo "Extracting plugin..."
unzip hostingsewa_redis.zip

# Fix folder structure
mv redis_cpanel-main/* ./
#mv redis_cpanel-main/.* ./

# Register plugin with cPanel
/usr/local/cpanel/scripts/install_plugin /usr/local/cpanel/base/frontend/paper_lantern/hostingsewa_redis --theme paper_lantern
 

#Cleanup by removing release
echo "Cleaning Up..."
rm -f hostingsewa_redis.zip
rm -rf redis_cpanel-main

# Fix permissions
echo "Finalizing permissions..."
chmod -R 755 /usr/local/cpanel/base/frontend/paper_lantern/hostingsewa_redis
 

rm -fR /usr/local/cpanel/base/frontend/jupiter/hostingsewa_redis
mkdir /usr/local/cpanel/base/frontend/jupiter/hostingsewa_redis
cd /usr/local/cpanel/base/frontend/jupiter/hostingsewa_redis

echo "Downloading plugin..."
wget -q https://github.com/rabinsxp/hostingsewa-redis-cpanel/archive/main.zip -O hostingsewa_redis.zip

# Extract archive zip
echo "Extracting plugin..."
unzip hostingsewa_redis.zip

# Fix folder structure
mv redis_cpanel-main/* ./
#mv redis_cpanel-main/.* ./

# Register plugin with cPanel
 /usr/local/cpanel/scripts/install_plugin /usr/local/cpanel/base/frontend/jupiter/hostingsewa_redis --theme jupiter


#Cleanup by removing release
echo "Cleaning Up..."
rm -f hostingsewa_redis.zip
rm -rf redis_cpanel-main

# Fix permissions
echo "Finalizing permissions..."
chmod -R 755 /usr/local/cpanel/base/frontend/jupiter/hostingsewa_redis

