# General - Network Address Translation (NAT) 

## Overview
Network Address Translation (NAT) is a technique used in networks to modify IP address information in packet headers while they are in transit across a traffic routing device. NAT is essential for connecting multiple devices on a private network to external networks like the internet using a single public IP address.

## Table of Contents
1. [Types of NAT](#types-of-nat)
   - [Static NAT](#static-nat)
   - [Dynamic NAT](#dynamic-nat)
   - [Port Address Translation (PAT)](#port-address-translation-pat)
2. [NAT Subtypes](#nat-subtypes)
   - [Source NAT (SNAT)](#source-nat-snat)
   - [Destination NAT (DNAT)](#destination-nat-dnat)
3. [NAT Table](#nat-table)
4. [Use Cases](#use-cases)
5. [Limitations of NAT](#limitations-of-nat)

## Types of NAT

### Static NAT
- **Description**: Maps a single private IP address to a single public IP address. This is a one-to-one mapping and is often used for devices that require consistent external access, such as servers.
- **Use Case**: Hosting a public web server behind a NAT router.

### Dynamic NAT
- **Description**: Maps multiple private IP addresses to a pool of public IP addresses. The mapping is temporary and dynamically assigned from the available pool when an internal device needs to communicate externally.
- **Use Case**: Enterprise networks where multiple internal devices need temporary access to external networks.

### Port Address Translation (PAT)
- **Description**: Also known as NAT Overload, PAT allows multiple devices on a local network to be mapped to a single public IP address but with a unique port number for each session.
- **Use Case**: Home routers, where many devices share a single public IP address to access the internet.

## NAT Subtypes

### Source NAT (SNAT)
- **Description**: Modifies the source IP address of outgoing packets from a private IP address to a public IP address. Used primarily for outbound traffic.
- **Example**: A device with a private IP (`192.168.1.10`) has its IP address translated to a public IP (`203.0.113.5`) when sending traffic to the internet.

### Destination NAT (DNAT)
- **Description**: Modifies the destination IP address of incoming packets from a public IP address to a private IP address. Used primarily for inbound traffic.
- **Example**: Traffic sent to a public IP (`203.0.113.5`) is routed to an internal server with a private IP (`192.168.1.10`).

## NAT Table
- **Description**: A table maintained by the NAT device that keeps track of the mappings between internal IP addresses and ports, and their corresponding public IP addresses and ports.
- **Components**:
  - Internal IP Address
  - Internal Port
  - Public IP Address
  - Public Port
- **Function**: Ensures that response packets are routed back to the correct internal device.

## Use Cases
- **Internet Access Sharing**: Allowing multiple devices on a private network to share a single public IP address for internet access.
- **Security**: Hiding the internal IP structure of a network from external entities.
- **Load Balancing**: Distributing incoming traffic across multiple internal servers.

## Limitations of NAT
- **Performance**: NAT can introduce latency as packets need to be processed and translated.
- **Complexity**: Managing large NAT tables and mappings can become complex in large networks.
- **Compatibility**: Some applications may not function correctly behind NAT due to issues with IP address translations, especially those requiring end-to-end IP transparency.
