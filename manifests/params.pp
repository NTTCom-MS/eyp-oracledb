class oracledb::params {

  case $::osfamily
  {
    'RedHat':
    {
      case $::operatingsystemrelease
      {
        /^7.*$/:
        {
          $oracledb_dependencies= [
                                    'binutils', 'glibc', 'libgcc', 'libstdc++',
                                    'libaio', 'libXext', 'libXtst', 'libX11',
                                    'libXau', 'libxcb', 'libXi', 'make',
                                    'compat-libcap1',
                                    'gcc', 'gcc-c++',
                                    'glibc-devel', 'ksh', 'libstdc++-devel',
                                    'libaio-devel', 'cpp',
                                    'kernel-headers',
                                    # 'cloog-ppl', 'ppl', 'twm',
                                    'mpfr', 'tigervnc-server',
                                    'xterm', 'xorg-x11-utils', 'nfs-utils' ]
          $manage_ntp_default=true
        }
        /^8.*$/:
        {
          $oracledb_dependencies= [
                                    'bc', 'binutils', 'glibc', 'libgcc', 'libstdc++',
                                    'libaio', 'libXext', 'libXtst', 'libX11',
                                    'libXau', 'libxcb', 'libXi', 'make',
                                    'fontconfig-devel', 'device-mapper-multipath',
                                    'gcc', 'gcc-c++', 'librdmacm',
                                    'glibc-devel', 'ksh', 'libstdc++-devel',
                                    'libaio-devel', 'cpp', 'libXrender-devel',
                                    'kernel-headers', 'sysstat',
                                    # 'cloog-ppl', 'ppl', 'twm',
                                    'mpfr', 'tigervnc-server', 'psmisc', 'smartmontools',
                                    'xterm', 'xorg-x11-utils', 'nfs-utils', 'net-tools' ]
          $manage_ntp_default=false
        }
        default: { fail("Unsupported RHEL/CentOS version! - ${::operatingsystemrelease}")  }
      }

    }
    'Debian':
    {
      fail('Unsupported')
    }
    default: { fail('Unsupported OS!')  }
  }
}
