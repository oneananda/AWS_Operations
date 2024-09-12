# VPC CIDR Blocks

`CIDR (Classless Inter-Domain Routing) blocks` are a method used to allocate IP addresses and manage IP routing more efficiently.

### Structure of a CIDR Block

`IP address/prefix length` or `192.168.1.0/24`

- IP Address: Starting point of the address
- Prefix Length: The number after `/` is indicating how many bits of the IP is network part
  - A smaller prefix length (e.g., /16) means a larger address range.
  - A larger prefix length (e.g., /28) means a smaller address range.

### Explaination of the calculation of address range 

**Take the example `192.168.1.0/24`**

- An IPv4 address is made up of 32 bits (binary digits).
- These 32 bits are usually divided into four groups of 8 bits, called octets. For example, 192.168.1.0 in binary is:
  - 192 -> 11000000
  - 168 -> 10101000
  - 1 -> 00000001
  - 0 -> 00000000

`8 x 4 = 32`

**What Does /24 Mean?**

- The /24 part in 192.168.1.0/24 indicates that the first 24 bits are used to identify the network portion of the IP address.
- This leaves the remaining bits (32 - 24 = 8 bits) for host addresses, which means the specific devices or computers within that network.

The following 23 bits are used to identify, the rest (8 bits) are available for our disposal,

192 -> 11000000
168 -> 10101000
1 -> 00000001

**Calculating the Number of Addresses**

Now we are calculating the possible combinations that 8 bits can have

Each of the 8 bits can either be 0 or 1, so each bit has 2 possibilities.

So we can calculate like this

`2 x 2 x 2 x 2 x 2 x 2 x 2 x 2 = 256`

So a `/24` network has `256` possible addresses.
	
Again there is a catch here 

`For 192.168.1.0/24:`

`Network Address: 192.168.1.0
First Usable Address: 192.168.1.1
...
Last Usable Address: 192.168.1.254
Broadcast Address: 192.168.1.255`

The first address is reserved for the network itself, and the last address is reserved as a broadcast address, leaving `254 usable addresses` for devices in that network.


