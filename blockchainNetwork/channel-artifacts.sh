# Genesis Block
configtxgen -profile RaftOrderer -channelID pharmachannel-sys-channel -outputBlock ./channel-artifacts/genesis.block

#Channel

configtxgen -profile pharmachannel -outputCreateChannelTx ./channel-artifacts/pharmachannel.tx -channelID pharmachannel

#Anchor Peer of manufacturer

configtxgen -profile pharmachannel -outputAnchorPeersUpdate ./channel-artifacts/manufacturerAnchorPeer.tx -channelID pharmachannel -asOrg manufacturerMSP

#Anchor peer of distributor

configtxgen -profile pharmachannel -outputAnchorPeersUpdate ./channel-artifacts/distributorAnchorPeer.tx -channelID pharmachannel -asOrg distributorMSP

#Anchor peer of retailer

configtxgen -profile pharmachannel -outputAnchorPeersUpdate ./channel-artifacts/retailerAnchorPeer.tx -channelID pharmachannel -asOrg retailerMSP

# Anchor peer of consumer
configtxgen -profile pharmachannel -outputAnchorPeersUpdate ./channel-artifacts/consumerAnchorPeer.tx -channelID pharmachannel -asOrg consumerMSP

# Anchor peer of transporter
configtxgen -profile pharmachannel -outputAnchorPeersUpdate ./channel-artifacts/transporterAnchorPeer.tx -channelID pharmachannel -asOrg transporterMSP
