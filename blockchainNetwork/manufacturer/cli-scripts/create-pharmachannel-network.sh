#!/bin/bash
echo "***************** Create pharmachannel Channel ***************"
peer channel create -c pharmachannel -o orderer1.pharam-network.com:7050 -f ./channel/pharmachannel.tx --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/orderer/tls/tlsca.pharam-network.com-cert.pem


echo "***************** peer0 - Join pharmachannel Channel ***************"
CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/manufacturer.pharam-network.com/users/Admin@manufacturer.pharam-network.com/msp CORE_PEER_ADDRESS=peer0.manufacturer.pharam-network.com:7051 CORE_PEER_LOCALMSPID="manufacturerMSP" CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/manufacturer.pharam-network.com/peers/peer0.manufacturer.pharam-network.com/tls/ca.crt 
peer channel join -b pharmachannel.block


echo "***************** Update Anchor Peer ***************"
CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/manufacturer.pharam-network.com/users/Admin@manufacturer.pharam-network.com/msp CORE_PEER_ADDRESS=peer0.manufacturer.pharam-network.com:7051 CORE_PEER_LOCALMSPID="manufacturerMSP" CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/manufacturer.pharam-network.com/peers/peer0.manufacturer.pharam-network.com/tls/ca.crt 
peer channel update -o orderer1.pharam-network.com:7050 -c pharmachannel -f ./channel/pharmachannelmanufacturerAnchorPeer.tx --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/orderer/tls/tlsca.pharam-network.com-cert.pem


echo "***************** peer1 - Join pharmachannel Channel ***************"
CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/manufacturer.pharam-network.com/users/Admin@manufacturer.pharam-network.com/msp CORE_PEER_ADDRESS=peer1.manufacturer.pharam-network.com:7051 CORE_PEER_LOCALMSPID="manufacturerMSP" CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/manufacturer.pharam-network.com/peers/peer1.manufacturer.pharam-network.com/tls/ca.crt 
peer channel join -b pharmachannel.block


