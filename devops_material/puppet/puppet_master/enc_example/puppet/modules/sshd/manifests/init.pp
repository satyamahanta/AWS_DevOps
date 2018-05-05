class sshd($port=22 , $serviceName = hiera("sshservicename") )
{
 
    file { "/etc/ssh/sshd_config":
        owner   => 'root',
        group   => 'root',
        mode    => '0644',
        content => template("$module_name/sshd_config.erb"),
        notify  => Service[$serviceName],
    }

 
    service { $serviceName:
        ensure => 'running',
        enable => 'true',
    }
}
