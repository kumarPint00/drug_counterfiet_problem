#!/bin/bash
echo "***************** Fetch Channel Block ***************"
peer channel fetch 0 pharmachannel.block -c pharmachannel -o orderer1.pharma-network.com:7050 --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/orderer/tls/tlsca.pharma-network.com-cert.pem


echo "***************** peer0 - Join pharmachannel Channel ***************"
CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/consumer.pharma-network.com/users/Admin@consumer.pharma-network.com/msp CORE_PEER_ADDRESS=peer0.consumer.pharma-network.com:7051 CORE_PEER_LOCALMSPID="consumerMSP" CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/consumer.pharma-network.com/peers/peer0.consumer.pharma-network.com/tls/ca.crt 
peer channel join -b pharmachannel.block


echo "***************** Update Anchor Peer ***************"
CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/consumer.pharma-network.com/users/Admin@consumer.pharma-network.com/msp CORE_PEER_ADDRESS=peer0.consumer.pharma-network.com:7051 CORE_PEER_LOCALMSPID="consumerMSP" CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/consumer.pharma-network.com/peers/peer0.consumer.pharma-network.com/tls/ca.crt 
peer channel update -o orderer1.pharma-network.com:7050 -c pharmachannel -f ./channel/consumerAnchorPeer.tx --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/orderer/tls/tlsca.pharma-network.com-cert.pem


echo "***************** peer1 - Join pharmachannel Channel ***************"
CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/consumer.pharma-network.com/users/Admin@consumer.pharma-network.com/msp CORE_PEER_ADDRESS=peer1.consumer.pharma-network.com:7051 CORE_PEER_LOCALMSPID="consumerMSP" CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/consumer.pharma-network.com/peers/peer1.consumer.pharma-network.com/tls/ca.crt 
peer channel join -b pharmachannel.block


