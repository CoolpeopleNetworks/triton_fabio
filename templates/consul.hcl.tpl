{
    "datacenter": "${datacenter_name}",
    "data_dir": "/opt/local/consul",
    "log_level": "INFO",
    "node_name": "${node_name}",
    "server": false,
    "leave_on_terminate": true,
    "start_join": [ "${consul_addr}" ], 
    "encrypt": "${encryption_key}",
    "bind_addr": "{{ GetPrivateInterfaces | include \"network\" \"192.168.128.0/22\" | attr \"address\" }}",
    "ca_file": "/opt/local/etc/consul.d/certificates/ca.pem",
    "cert_file": "/opt/local/etc/consul.d/certificates/cert.pem",
    "key_file": "/opt/local/etc/consul.d/certificates/private_key.pem",
}
