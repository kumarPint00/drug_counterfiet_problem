#!/bin/bash
            
echo "***************** queryinstalled token chaincode ***************"
                    CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/transporter.pharma-network.com/users/Admin@transporter.pharma-network.com/msp CORE_PEER_ADDRESS=peer0.transporter.pharma-network.com:7051 CORE_PEER_LOCALMSPID="transporterMSP" CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/transporter.pharma-network.com/peers/peer0.transporter.pharma-network.com/tls/ca.crt 
                    peer lifecycle chaincode queryinstalled >&log.txt
                    { set +x; } 2>/dev/null
                    cat log.txt
                    PACKAGE_ID=$(sed -n "/token_1.0/{s/^Package ID: //; s/, Label:.*$//; p;}" log.txt)
                    
echo "***************** ApproveforMyOrg token chaincode ***************"
                    CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/transporter.pharma-network.com/users/Admin@transporter.pharma-network.com/msp CORE_PEER_ADDRESS=peer0.transporter.pharma-network.com:7051 CORE_PEER_LOCALMSPID="transporterMSP" CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/transporter.pharma-network.com/peers/peer0.transporter.pharma-network.com/tls/ca.crt 
                    peer lifecycle chaincode approveformyorg -o orderer1.pharma-network.com:7050 --ordererTLSHostnameOverride orderer1.pharma-network.com --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/orderer/tls/tlsca.pharma-network.com-cert.pem --channelID common --name token --version 1.0 --package-id $PACKAGE_ID --sequence 1    --signature-policy "OR('manufacturerMSP.peer','distributorMSP.peer','transporterMSP.peer','retailerMSP.peer','consumerMSP.peer' )"
                    
echo "***************** checkCommitReadiness token chaincode ***************"
                    CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/transporter.pharma-network.com/users/Admin@transporter.pharma-network.com/msp CORE_PEER_ADDRESS=peer0.transporter.pharma-network.com:7051 CORE_PEER_LOCALMSPID="transporterMSP" CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/transporter.pharma-network.com/peers/peer0.transporter.pharma-network.com/tls/ca.crt 
                    peer lifecycle chaincode checkcommitreadiness --channelID common --name token --version 1.0 --sequence 1    --signature-policy "OR('manufacturerMSP.peer','distributorMSP.peer','transporterMSP.peer','retailerMSP.peer','consumerMSP.peer' )"


echo "***************** queryinstalled InvestorDetails chaincode ***************"
                    CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/transporter.pharma-network.com/users/Admin@transporter.pharma-network.com/msp CORE_PEER_ADDRESS=peer0.transporter.pharma-network.com:7051 CORE_PEER_LOCALMSPID="transporterMSP" CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/transporter.pharma-network.com/peers/peer0.transporter.pharma-network.com/tls/ca.crt 
                    peer lifecycle chaincode queryinstalled >&log.txt
                    { set +x; } 2>/dev/null
                    cat log.txt
                    PACKAGE_ID=$(sed -n "/InvestorDetails_1.0/{s/^Package ID: //; s/, Label:.*$//; p;}" log.txt)
                    
echo "***************** ApproveforMyOrg InvestorDetails chaincode ***************"
                    CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/transporter.pharma-network.com/users/Admin@transporter.pharma-network.com/msp CORE_PEER_ADDRESS=peer0.transporter.pharma-network.com:7051 CORE_PEER_LOCALMSPID="transporterMSP" CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/transporter.pharma-network.com/peers/peer0.transporter.pharma-network.com/tls/ca.crt 
                    peer lifecycle chaincode approveformyorg -o orderer1.pharma-network.com:7050 --ordererTLSHostnameOverride orderer1.pharma-network.com --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/orderer/tls/tlsca.pharma-network.com-cert.pem --channelID common --name InvestorDetails --version 1.0 --package-id $PACKAGE_ID --sequence 1    --signature-policy "OR('manufacturerMSP.peer','distributorMSP.peer','transporterMSP.peer','retailerMSP.peer','consumerMSP.peer' )"
                    
echo "***************** checkCommitReadiness InvestorDetails chaincode ***************"
                    CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/transporter.pharma-network.com/users/Admin@transporter.pharma-network.com/msp CORE_PEER_ADDRESS=peer0.transporter.pharma-network.com:7051 CORE_PEER_LOCALMSPID="transporterMSP" CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/transporter.pharma-network.com/peers/peer0.transporter.pharma-network.com/tls/ca.crt 
                    peer lifecycle chaincode checkcommitreadiness --channelID common --name InvestorDetails --version 1.0 --sequence 1    --signature-policy "OR('manufacturerMSP.peer','distributorMSP.peer','transporterMSP.peer','retailerMSP.peer','consumerMSP.peer' )"
