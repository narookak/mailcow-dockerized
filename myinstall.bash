curl -sSL https://get.docker.com/ | CHANNEL=stable sh

systemctl enable --now docker

wget https://github.com/docker/compose/releases/download/v2.2.3/docker-compose-linux-aarch64 -O /usr/local/bin/docker-compose
chmod a+x /usr/local/bin/docker-compose

cd /opt
git clone https://github.com/narookak/mailcow-dockerized.git
cd mailcow-dockerized
 git checkout linux_arm64
./generate_config.sh 


cp helper-scripts/docker-compose.override.yml.d/BUILD_FLAGS/docker-compose.override.yml .