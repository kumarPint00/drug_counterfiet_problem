#!/bin/bash
echo "***************** Create pharmachannel Channel ***************"
peer channel create -c pharmachannel -o orderer1.pharma-network.com:7050 -f ./channel/pharmachannel.tx --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/orderer/tls/tlsca.pharma-network.com-cert.pem


echo "***************** peer0 - Join pharmachannel Channel ***************"
CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/manufacturer.pharma-network.com/users/Admin@manufacturer.pharma-network.com/msp CORE_PEER_ADDRESS=peer0.manufacturer.pharma-network.com:7051 CORE_PEER_LOCALMSPID="manufacturerMSP" CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/manufacturer.pharma-network.com/peers/peer0.manufacturer.pharma-network.com/tls/ca.crt 
peer channel join -b pharmachannel.block


echo "***************** Update Anchor Peer ***************"
CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/manufacturer.pharma-network.com/users/Admin@manufacturer.pharma-network.com/msp CORE_PEER_ADDRESS=peer0.manufacturer.pharma-network.com:7051 CORE_PEER_LOCALMSPID="manufacturerMSP" CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/manufacturer.pharma-network.com/peers/peer0.manufacturer.pharma-network.com/tls/ca.crt 
peer channel update -o orderer1.pharma-network.com:7050 -c pharmachannel -f ./channel/manufacturerAnchorPeer.tx --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/orderer/tls/tlsca.pharma-network.com-cert.pem


echo "***************** peer1 - Join pharmachannel Channel ***************"
CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/manufacturer.pharma-network.com/users/Admin@manufacturer.pharma-network.com/msp CORE_PEER_ADDRESS=peer1.manufacturer.pharma-network.com:7051 CORE_PEER_LOCALMSPID="manufacturerMSP" CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/manufacturer.pharma-network.com/peers/peer1.manufacturer.pharma-network.com/tls/ca.crt 
peer channel join -b pharmachannel.block


