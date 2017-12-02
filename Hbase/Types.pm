#
# Autogenerated by Thrift Compiler (0.9.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#
require 5.6.0;
use strict;
use warnings;
use Thrift;

package Hbase::TCell;
use base qw(Class::Accessor);
Hbase::TCell->mk_accessors( qw( value timestamp ) );

sub new {
  my $classname = shift;
  my $self      = {};
  my $vals      = shift || {};
  $self->{value} = undef;
  $self->{timestamp} = undef;
  if (UNIVERSAL::isa($vals,'HASH')) {
    if (defined $vals->{value}) {
      $self->{value} = $vals->{value};
    }
    if (defined $vals->{timestamp}) {
      $self->{timestamp} = $vals->{timestamp};
    }
  }
  return bless ($self, $classname);
}

sub getName {
  return 'TCell';
}

sub read {
  my ($self, $input) = @_;
  my $xfer  = 0;
  my $fname;
  my $ftype = 0;
  my $fid   = 0;
  $xfer += $input->readStructBegin(\$fname);
  while (1)
  {
    $xfer += $input->readFieldBegin(\$fname, \$ftype, \$fid);
    if ($ftype == TType::STOP) {
      last;
    }
    SWITCH: for($fid)
    {
      /^1$/ && do{      if ($ftype == TType::STRING) {
        $xfer += $input->readString(\$self->{value});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^2$/ && do{      if ($ftype == TType::I64) {
        $xfer += $input->readI64(\$self->{timestamp});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
        $xfer += $input->skip($ftype);
    }
    $xfer += $input->readFieldEnd();
  }
  $xfer += $input->readStructEnd();
  return $xfer;
}

sub write {
  my ($self, $output) = @_;
  my $xfer   = 0;
  $xfer += $output->writeStructBegin('TCell');
  if (defined $self->{value}) {
    $xfer += $output->writeFieldBegin('value', TType::STRING, 1);
    $xfer += $output->writeString($self->{value});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{timestamp}) {
    $xfer += $output->writeFieldBegin('timestamp', TType::I64, 2);
    $xfer += $output->writeI64($self->{timestamp});
    $xfer += $output->writeFieldEnd();
  }
  $xfer += $output->writeFieldStop();
  $xfer += $output->writeStructEnd();
  return $xfer;
}

package Hbase::ColumnDescriptor;
use base qw(Class::Accessor);
Hbase::ColumnDescriptor->mk_accessors( qw( name maxVersions compression inMemory bloomFilterType bloomFilterVectorSize bloomFilterNbHashes blockCacheEnabled timeToLive ) );

sub new {
  my $classname = shift;
  my $self      = {};
  my $vals      = shift || {};
  $self->{name} = undef;
  $self->{maxVersions} = 3;
  $self->{compression} = "NONE";
  $self->{inMemory} = 0;
  $self->{bloomFilterType} = "NONE";
  $self->{bloomFilterVectorSize} = 0;
  $self->{bloomFilterNbHashes} = 0;
  $self->{blockCacheEnabled} = 0;
  $self->{timeToLive} = -1;
  if (UNIVERSAL::isa($vals,'HASH')) {
    if (defined $vals->{name}) {
      $self->{name} = $vals->{name};
    }
    if (defined $vals->{maxVersions}) {
      $self->{maxVersions} = $vals->{maxVersions};
    }
    if (defined $vals->{compression}) {
      $self->{compression} = $vals->{compression};
    }
    if (defined $vals->{inMemory}) {
      $self->{inMemory} = $vals->{inMemory};
    }
    if (defined $vals->{bloomFilterType}) {
      $self->{bloomFilterType} = $vals->{bloomFilterType};
    }
    if (defined $vals->{bloomFilterVectorSize}) {
      $self->{bloomFilterVectorSize} = $vals->{bloomFilterVectorSize};
    }
    if (defined $vals->{bloomFilterNbHashes}) {
      $self->{bloomFilterNbHashes} = $vals->{bloomFilterNbHashes};
    }
    if (defined $vals->{blockCacheEnabled}) {
      $self->{blockCacheEnabled} = $vals->{blockCacheEnabled};
    }
    if (defined $vals->{timeToLive}) {
      $self->{timeToLive} = $vals->{timeToLive};
    }
  }
  return bless ($self, $classname);
}

sub getName {
  return 'ColumnDescriptor';
}

sub read {
  my ($self, $input) = @_;
  my $xfer  = 0;
  my $fname;
  my $ftype = 0;
  my $fid   = 0;
  $xfer += $input->readStructBegin(\$fname);
  while (1)
  {
    $xfer += $input->readFieldBegin(\$fname, \$ftype, \$fid);
    if ($ftype == TType::STOP) {
      last;
    }
    SWITCH: for($fid)
    {
      /^1$/ && do{      if ($ftype == TType::STRING) {
        $xfer += $input->readString(\$self->{name});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^2$/ && do{      if ($ftype == TType::I32) {
        $xfer += $input->readI32(\$self->{maxVersions});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^3$/ && do{      if ($ftype == TType::STRING) {
        $xfer += $input->readString(\$self->{compression});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^4$/ && do{      if ($ftype == TType::BOOL) {
        $xfer += $input->readBool(\$self->{inMemory});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^5$/ && do{      if ($ftype == TType::STRING) {
        $xfer += $input->readString(\$self->{bloomFilterType});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^6$/ && do{      if ($ftype == TType::I32) {
        $xfer += $input->readI32(\$self->{bloomFilterVectorSize});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^7$/ && do{      if ($ftype == TType::I32) {
        $xfer += $input->readI32(\$self->{bloomFilterNbHashes});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^8$/ && do{      if ($ftype == TType::BOOL) {
        $xfer += $input->readBool(\$self->{blockCacheEnabled});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^9$/ && do{      if ($ftype == TType::I32) {
        $xfer += $input->readI32(\$self->{timeToLive});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
        $xfer += $input->skip($ftype);
    }
    $xfer += $input->readFieldEnd();
  }
  $xfer += $input->readStructEnd();
  return $xfer;
}

sub write {
  my ($self, $output) = @_;
  my $xfer   = 0;
  $xfer += $output->writeStructBegin('ColumnDescriptor');
  if (defined $self->{name}) {
    $xfer += $output->writeFieldBegin('name', TType::STRING, 1);
    $xfer += $output->writeString($self->{name});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{maxVersions}) {
    $xfer += $output->writeFieldBegin('maxVersions', TType::I32, 2);
    $xfer += $output->writeI32($self->{maxVersions});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{compression}) {
    $xfer += $output->writeFieldBegin('compression', TType::STRING, 3);
    $xfer += $output->writeString($self->{compression});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{inMemory}) {
    $xfer += $output->writeFieldBegin('inMemory', TType::BOOL, 4);
    $xfer += $output->writeBool($self->{inMemory});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{bloomFilterType}) {
    $xfer += $output->writeFieldBegin('bloomFilterType', TType::STRING, 5);
    $xfer += $output->writeString($self->{bloomFilterType});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{bloomFilterVectorSize}) {
    $xfer += $output->writeFieldBegin('bloomFilterVectorSize', TType::I32, 6);
    $xfer += $output->writeI32($self->{bloomFilterVectorSize});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{bloomFilterNbHashes}) {
    $xfer += $output->writeFieldBegin('bloomFilterNbHashes', TType::I32, 7);
    $xfer += $output->writeI32($self->{bloomFilterNbHashes});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{blockCacheEnabled}) {
    $xfer += $output->writeFieldBegin('blockCacheEnabled', TType::BOOL, 8);
    $xfer += $output->writeBool($self->{blockCacheEnabled});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{timeToLive}) {
    $xfer += $output->writeFieldBegin('timeToLive', TType::I32, 9);
    $xfer += $output->writeI32($self->{timeToLive});
    $xfer += $output->writeFieldEnd();
  }
  $xfer += $output->writeFieldStop();
  $xfer += $output->writeStructEnd();
  return $xfer;
}

package Hbase::TRegionInfo;
use base qw(Class::Accessor);
Hbase::TRegionInfo->mk_accessors( qw( startKey endKey id name version serverName port ) );

sub new {
  my $classname = shift;
  my $self      = {};
  my $vals      = shift || {};
  $self->{startKey} = undef;
  $self->{endKey} = undef;
  $self->{id} = undef;
  $self->{name} = undef;
  $self->{version} = undef;
  $self->{serverName} = undef;
  $self->{port} = undef;
  if (UNIVERSAL::isa($vals,'HASH')) {
    if (defined $vals->{startKey}) {
      $self->{startKey} = $vals->{startKey};
    }
    if (defined $vals->{endKey}) {
      $self->{endKey} = $vals->{endKey};
    }
    if (defined $vals->{id}) {
      $self->{id} = $vals->{id};
    }
    if (defined $vals->{name}) {
      $self->{name} = $vals->{name};
    }
    if (defined $vals->{version}) {
      $self->{version} = $vals->{version};
    }
    if (defined $vals->{serverName}) {
      $self->{serverName} = $vals->{serverName};
    }
    if (defined $vals->{port}) {
      $self->{port} = $vals->{port};
    }
  }
  return bless ($self, $classname);
}

sub getName {
  return 'TRegionInfo';
}

sub read {
  my ($self, $input) = @_;
  my $xfer  = 0;
  my $fname;
  my $ftype = 0;
  my $fid   = 0;
  $xfer += $input->readStructBegin(\$fname);
  while (1)
  {
    $xfer += $input->readFieldBegin(\$fname, \$ftype, \$fid);
    if ($ftype == TType::STOP) {
      last;
    }
    SWITCH: for($fid)
    {
      /^1$/ && do{      if ($ftype == TType::STRING) {
        $xfer += $input->readString(\$self->{startKey});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^2$/ && do{      if ($ftype == TType::STRING) {
        $xfer += $input->readString(\$self->{endKey});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^3$/ && do{      if ($ftype == TType::I64) {
        $xfer += $input->readI64(\$self->{id});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^4$/ && do{      if ($ftype == TType::STRING) {
        $xfer += $input->readString(\$self->{name});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^5$/ && do{      if ($ftype == TType::BYTE) {
        $xfer += $input->readByte(\$self->{version});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^6$/ && do{      if ($ftype == TType::STRING) {
        $xfer += $input->readString(\$self->{serverName});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^7$/ && do{      if ($ftype == TType::I32) {
        $xfer += $input->readI32(\$self->{port});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
        $xfer += $input->skip($ftype);
    }
    $xfer += $input->readFieldEnd();
  }
  $xfer += $input->readStructEnd();
  return $xfer;
}

sub write {
  my ($self, $output) = @_;
  my $xfer   = 0;
  $xfer += $output->writeStructBegin('TRegionInfo');
  if (defined $self->{startKey}) {
    $xfer += $output->writeFieldBegin('startKey', TType::STRING, 1);
    $xfer += $output->writeString($self->{startKey});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{endKey}) {
    $xfer += $output->writeFieldBegin('endKey', TType::STRING, 2);
    $xfer += $output->writeString($self->{endKey});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{id}) {
    $xfer += $output->writeFieldBegin('id', TType::I64, 3);
    $xfer += $output->writeI64($self->{id});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{name}) {
    $xfer += $output->writeFieldBegin('name', TType::STRING, 4);
    $xfer += $output->writeString($self->{name});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{version}) {
    $xfer += $output->writeFieldBegin('version', TType::BYTE, 5);
    $xfer += $output->writeByte($self->{version});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{serverName}) {
    $xfer += $output->writeFieldBegin('serverName', TType::STRING, 6);
    $xfer += $output->writeString($self->{serverName});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{port}) {
    $xfer += $output->writeFieldBegin('port', TType::I32, 7);
    $xfer += $output->writeI32($self->{port});
    $xfer += $output->writeFieldEnd();
  }
  $xfer += $output->writeFieldStop();
  $xfer += $output->writeStructEnd();
  return $xfer;
}

package Hbase::Mutation;
use base qw(Class::Accessor);
Hbase::Mutation->mk_accessors( qw( isDelete column value writeToWAL ) );

sub new {
  my $classname = shift;
  my $self      = {};
  my $vals      = shift || {};
  $self->{isDelete} = 0;
  $self->{column} = undef;
  $self->{value} = undef;
  $self->{writeToWAL} = 1;
  if (UNIVERSAL::isa($vals,'HASH')) {
    if (defined $vals->{isDelete}) {
      $self->{isDelete} = $vals->{isDelete};
    }
    if (defined $vals->{column}) {
      $self->{column} = $vals->{column};
    }
    if (defined $vals->{value}) {
      $self->{value} = $vals->{value};
    }
    if (defined $vals->{writeToWAL}) {
      $self->{writeToWAL} = $vals->{writeToWAL};
    }
  }
  return bless ($self, $classname);
}

sub getName {
  return 'Mutation';
}

sub read {
  my ($self, $input) = @_;
  my $xfer  = 0;
  my $fname;
  my $ftype = 0;
  my $fid   = 0;
  $xfer += $input->readStructBegin(\$fname);
  while (1)
  {
    $xfer += $input->readFieldBegin(\$fname, \$ftype, \$fid);
    if ($ftype == TType::STOP) {
      last;
    }
    SWITCH: for($fid)
    {
      /^1$/ && do{      if ($ftype == TType::BOOL) {
        $xfer += $input->readBool(\$self->{isDelete});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^2$/ && do{      if ($ftype == TType::STRING) {
        $xfer += $input->readString(\$self->{column});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^3$/ && do{      if ($ftype == TType::STRING) {
        $xfer += $input->readString(\$self->{value});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^4$/ && do{      if ($ftype == TType::BOOL) {
        $xfer += $input->readBool(\$self->{writeToWAL});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
        $xfer += $input->skip($ftype);
    }
    $xfer += $input->readFieldEnd();
  }
  $xfer += $input->readStructEnd();
  return $xfer;
}

sub write {
  my ($self, $output) = @_;
  my $xfer   = 0;
  $xfer += $output->writeStructBegin('Mutation');
  if (defined $self->{isDelete}) {
    $xfer += $output->writeFieldBegin('isDelete', TType::BOOL, 1);
    $xfer += $output->writeBool($self->{isDelete});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{column}) {
    $xfer += $output->writeFieldBegin('column', TType::STRING, 2);
    $xfer += $output->writeString($self->{column});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{value}) {
    $xfer += $output->writeFieldBegin('value', TType::STRING, 3);
    $xfer += $output->writeString($self->{value});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{writeToWAL}) {
    $xfer += $output->writeFieldBegin('writeToWAL', TType::BOOL, 4);
    $xfer += $output->writeBool($self->{writeToWAL});
    $xfer += $output->writeFieldEnd();
  }
  $xfer += $output->writeFieldStop();
  $xfer += $output->writeStructEnd();
  return $xfer;
}

package Hbase::BatchMutation;
use base qw(Class::Accessor);
Hbase::BatchMutation->mk_accessors( qw( row mutations ) );

sub new {
  my $classname = shift;
  my $self      = {};
  my $vals      = shift || {};
  $self->{row} = undef;
  $self->{mutations} = undef;
  if (UNIVERSAL::isa($vals,'HASH')) {
    if (defined $vals->{row}) {
      $self->{row} = $vals->{row};
    }
    if (defined $vals->{mutations}) {
      $self->{mutations} = $vals->{mutations};
    }
  }
  return bless ($self, $classname);
}

sub getName {
  return 'BatchMutation';
}

sub read {
  my ($self, $input) = @_;
  my $xfer  = 0;
  my $fname;
  my $ftype = 0;
  my $fid   = 0;
  $xfer += $input->readStructBegin(\$fname);
  while (1)
  {
    $xfer += $input->readFieldBegin(\$fname, \$ftype, \$fid);
    if ($ftype == TType::STOP) {
      last;
    }
    SWITCH: for($fid)
    {
      /^1$/ && do{      if ($ftype == TType::STRING) {
        $xfer += $input->readString(\$self->{row});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^2$/ && do{      if ($ftype == TType::LIST) {
        {
          my $_size0 = 0;
          $self->{mutations} = [];
          my $_etype3 = 0;
          $xfer += $input->readListBegin(\$_etype3, \$_size0);
          for (my $_i4 = 0; $_i4 < $_size0; ++$_i4)
          {
            my $elem5 = undef;
            $elem5 = new Hbase::Mutation();
            $xfer += $elem5->read($input);
            push(@{$self->{mutations}},$elem5);
          }
          $xfer += $input->readListEnd();
        }
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
        $xfer += $input->skip($ftype);
    }
    $xfer += $input->readFieldEnd();
  }
  $xfer += $input->readStructEnd();
  return $xfer;
}

sub write {
  my ($self, $output) = @_;
  my $xfer   = 0;
  $xfer += $output->writeStructBegin('BatchMutation');
  if (defined $self->{row}) {
    $xfer += $output->writeFieldBegin('row', TType::STRING, 1);
    $xfer += $output->writeString($self->{row});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{mutations}) {
    $xfer += $output->writeFieldBegin('mutations', TType::LIST, 2);
    {
      $xfer += $output->writeListBegin(TType::STRUCT, scalar(@{$self->{mutations}}));
      {
        foreach my $iter6 (@{$self->{mutations}})
        {
          $xfer += ${iter6}->write($output);
        }
      }
      $xfer += $output->writeListEnd();
    }
    $xfer += $output->writeFieldEnd();
  }
  $xfer += $output->writeFieldStop();
  $xfer += $output->writeStructEnd();
  return $xfer;
}

package Hbase::TIncrement;
use base qw(Class::Accessor);
Hbase::TIncrement->mk_accessors( qw( table row column ammount ) );

sub new {
  my $classname = shift;
  my $self      = {};
  my $vals      = shift || {};
  $self->{table} = undef;
  $self->{row} = undef;
  $self->{column} = undef;
  $self->{ammount} = undef;
  if (UNIVERSAL::isa($vals,'HASH')) {
    if (defined $vals->{table}) {
      $self->{table} = $vals->{table};
    }
    if (defined $vals->{row}) {
      $self->{row} = $vals->{row};
    }
    if (defined $vals->{column}) {
      $self->{column} = $vals->{column};
    }
    if (defined $vals->{ammount}) {
      $self->{ammount} = $vals->{ammount};
    }
  }
  return bless ($self, $classname);
}

sub getName {
  return 'TIncrement';
}

sub read {
  my ($self, $input) = @_;
  my $xfer  = 0;
  my $fname;
  my $ftype = 0;
  my $fid   = 0;
  $xfer += $input->readStructBegin(\$fname);
  while (1)
  {
    $xfer += $input->readFieldBegin(\$fname, \$ftype, \$fid);
    if ($ftype == TType::STOP) {
      last;
    }
    SWITCH: for($fid)
    {
      /^1$/ && do{      if ($ftype == TType::STRING) {
        $xfer += $input->readString(\$self->{table});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^2$/ && do{      if ($ftype == TType::STRING) {
        $xfer += $input->readString(\$self->{row});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^3$/ && do{      if ($ftype == TType::STRING) {
        $xfer += $input->readString(\$self->{column});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^4$/ && do{      if ($ftype == TType::I64) {
        $xfer += $input->readI64(\$self->{ammount});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
        $xfer += $input->skip($ftype);
    }
    $xfer += $input->readFieldEnd();
  }
  $xfer += $input->readStructEnd();
  return $xfer;
}

sub write {
  my ($self, $output) = @_;
  my $xfer   = 0;
  $xfer += $output->writeStructBegin('TIncrement');
  if (defined $self->{table}) {
    $xfer += $output->writeFieldBegin('table', TType::STRING, 1);
    $xfer += $output->writeString($self->{table});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{row}) {
    $xfer += $output->writeFieldBegin('row', TType::STRING, 2);
    $xfer += $output->writeString($self->{row});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{column}) {
    $xfer += $output->writeFieldBegin('column', TType::STRING, 3);
    $xfer += $output->writeString($self->{column});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{ammount}) {
    $xfer += $output->writeFieldBegin('ammount', TType::I64, 4);
    $xfer += $output->writeI64($self->{ammount});
    $xfer += $output->writeFieldEnd();
  }
  $xfer += $output->writeFieldStop();
  $xfer += $output->writeStructEnd();
  return $xfer;
}

package Hbase::TRowResult;
use base qw(Class::Accessor);
Hbase::TRowResult->mk_accessors( qw( row columns ) );

sub new {
  my $classname = shift;
  my $self      = {};
  my $vals      = shift || {};
  $self->{row} = undef;
  $self->{columns} = undef;
  if (UNIVERSAL::isa($vals,'HASH')) {
    if (defined $vals->{row}) {
      $self->{row} = $vals->{row};
    }
    if (defined $vals->{columns}) {
      $self->{columns} = $vals->{columns};
    }
  }
  return bless ($self, $classname);
}

sub getName {
  return 'TRowResult';
}

sub read {
  my ($self, $input) = @_;
  my $xfer  = 0;
  my $fname;
  my $ftype = 0;
  my $fid   = 0;
  $xfer += $input->readStructBegin(\$fname);
  while (1)
  {
    $xfer += $input->readFieldBegin(\$fname, \$ftype, \$fid);
    if ($ftype == TType::STOP) {
      last;
    }
    SWITCH: for($fid)
    {
      /^1$/ && do{      if ($ftype == TType::STRING) {
        $xfer += $input->readString(\$self->{row});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^2$/ && do{      if ($ftype == TType::MAP) {
        {
          my $_size7 = 0;
          $self->{columns} = {};
          my $_ktype8 = 0;
          my $_vtype9 = 0;
          $xfer += $input->readMapBegin(\$_ktype8, \$_vtype9, \$_size7);
          for (my $_i11 = 0; $_i11 < $_size7; ++$_i11)
          {
            my $key12 = '';
            my $val13 = new Hbase::TCell();
            $xfer += $input->readString(\$key12);
            $val13 = new Hbase::TCell();
            $xfer += $val13->read($input);
            $self->{columns}->{$key12} = $val13;
          }
          $xfer += $input->readMapEnd();
        }
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
        $xfer += $input->skip($ftype);
    }
    $xfer += $input->readFieldEnd();
  }
  $xfer += $input->readStructEnd();
  return $xfer;
}

sub write {
  my ($self, $output) = @_;
  my $xfer   = 0;
  $xfer += $output->writeStructBegin('TRowResult');
  if (defined $self->{row}) {
    $xfer += $output->writeFieldBegin('row', TType::STRING, 1);
    $xfer += $output->writeString($self->{row});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{columns}) {
    $xfer += $output->writeFieldBegin('columns', TType::MAP, 2);
    {
      $xfer += $output->writeMapBegin(TType::STRING, TType::STRUCT, scalar(keys %{$self->{columns}}));
      {
        while( my ($kiter14,$viter15) = each %{$self->{columns}})
        {
          $xfer += $output->writeString($kiter14);
          $xfer += ${viter15}->write($output);
        }
      }
      $xfer += $output->writeMapEnd();
    }
    $xfer += $output->writeFieldEnd();
  }
  $xfer += $output->writeFieldStop();
  $xfer += $output->writeStructEnd();
  return $xfer;
}

package Hbase::TScan;
use base qw(Class::Accessor);
Hbase::TScan->mk_accessors( qw( startRow stopRow timestamp columns caching filterString batchSize ) );

sub new {
  my $classname = shift;
  my $self      = {};
  my $vals      = shift || {};
  $self->{startRow} = undef;
  $self->{stopRow} = undef;
  $self->{timestamp} = undef;
  $self->{columns} = undef;
  $self->{caching} = undef;
  $self->{filterString} = undef;
  $self->{batchSize} = undef;
  if (UNIVERSAL::isa($vals,'HASH')) {
    if (defined $vals->{startRow}) {
      $self->{startRow} = $vals->{startRow};
    }
    if (defined $vals->{stopRow}) {
      $self->{stopRow} = $vals->{stopRow};
    }
    if (defined $vals->{timestamp}) {
      $self->{timestamp} = $vals->{timestamp};
    }
    if (defined $vals->{columns}) {
      $self->{columns} = $vals->{columns};
    }
    if (defined $vals->{caching}) {
      $self->{caching} = $vals->{caching};
    }
    if (defined $vals->{filterString}) {
      $self->{filterString} = $vals->{filterString};
    }
    if (defined $vals->{batchSize}) {
      $self->{batchSize} = $vals->{batchSize};
    }
  }
  return bless ($self, $classname);
}

sub getName {
  return 'TScan';
}

sub read {
  my ($self, $input) = @_;
  my $xfer  = 0;
  my $fname;
  my $ftype = 0;
  my $fid   = 0;
  $xfer += $input->readStructBegin(\$fname);
  while (1)
  {
    $xfer += $input->readFieldBegin(\$fname, \$ftype, \$fid);
    if ($ftype == TType::STOP) {
      last;
    }
    SWITCH: for($fid)
    {
      /^1$/ && do{      if ($ftype == TType::STRING) {
        $xfer += $input->readString(\$self->{startRow});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^2$/ && do{      if ($ftype == TType::STRING) {
        $xfer += $input->readString(\$self->{stopRow});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^3$/ && do{      if ($ftype == TType::I64) {
        $xfer += $input->readI64(\$self->{timestamp});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^4$/ && do{      if ($ftype == TType::LIST) {
        {
          my $_size16 = 0;
          $self->{columns} = [];
          my $_etype19 = 0;
          $xfer += $input->readListBegin(\$_etype19, \$_size16);
          for (my $_i20 = 0; $_i20 < $_size16; ++$_i20)
          {
            my $elem21 = undef;
            $xfer += $input->readString(\$elem21);
            push(@{$self->{columns}},$elem21);
          }
          $xfer += $input->readListEnd();
        }
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^5$/ && do{      if ($ftype == TType::I32) {
        $xfer += $input->readI32(\$self->{caching});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^6$/ && do{      if ($ftype == TType::STRING) {
        $xfer += $input->readString(\$self->{filterString});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^7$/ && do{      if ($ftype == TType::I32) {
        $xfer += $input->readI32(\$self->{batchSize});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
        $xfer += $input->skip($ftype);
    }
    $xfer += $input->readFieldEnd();
  }
  $xfer += $input->readStructEnd();
  return $xfer;
}

sub write {
  my ($self, $output) = @_;
  my $xfer   = 0;
  $xfer += $output->writeStructBegin('TScan');
  if (defined $self->{startRow}) {
    $xfer += $output->writeFieldBegin('startRow', TType::STRING, 1);
    $xfer += $output->writeString($self->{startRow});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{stopRow}) {
    $xfer += $output->writeFieldBegin('stopRow', TType::STRING, 2);
    $xfer += $output->writeString($self->{stopRow});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{timestamp}) {
    $xfer += $output->writeFieldBegin('timestamp', TType::I64, 3);
    $xfer += $output->writeI64($self->{timestamp});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{columns}) {
    $xfer += $output->writeFieldBegin('columns', TType::LIST, 4);
    {
      $xfer += $output->writeListBegin(TType::STRING, scalar(@{$self->{columns}}));
      {
        foreach my $iter22 (@{$self->{columns}})
        {
          $xfer += $output->writeString($iter22);
        }
      }
      $xfer += $output->writeListEnd();
    }
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{caching}) {
    $xfer += $output->writeFieldBegin('caching', TType::I32, 5);
    $xfer += $output->writeI32($self->{caching});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{filterString}) {
    $xfer += $output->writeFieldBegin('filterString', TType::STRING, 6);
    $xfer += $output->writeString($self->{filterString});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{batchSize}) {
    $xfer += $output->writeFieldBegin('batchSize', TType::I32, 7);
    $xfer += $output->writeI32($self->{batchSize});
    $xfer += $output->writeFieldEnd();
  }
  $xfer += $output->writeFieldStop();
  $xfer += $output->writeStructEnd();
  return $xfer;
}

package Hbase::IOError;
use base qw(Thrift::TException);
use base qw(Class::Accessor);
Hbase::IOError->mk_accessors( qw( message ) );

sub new {
  my $classname = shift;
  my $self      = {};
  my $vals      = shift || {};
  $self->{message} = undef;
  if (UNIVERSAL::isa($vals,'HASH')) {
    if (defined $vals->{message}) {
      $self->{message} = $vals->{message};
    }
  }
  return bless ($self, $classname);
}

sub getName {
  return 'IOError';
}

sub read {
  my ($self, $input) = @_;
  my $xfer  = 0;
  my $fname;
  my $ftype = 0;
  my $fid   = 0;
  $xfer += $input->readStructBegin(\$fname);
  while (1)
  {
    $xfer += $input->readFieldBegin(\$fname, \$ftype, \$fid);
    if ($ftype == TType::STOP) {
      last;
    }
    SWITCH: for($fid)
    {
      /^1$/ && do{      if ($ftype == TType::STRING) {
        $xfer += $input->readString(\$self->{message});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
        $xfer += $input->skip($ftype);
    }
    $xfer += $input->readFieldEnd();
  }
  $xfer += $input->readStructEnd();
  return $xfer;
}

sub write {
  my ($self, $output) = @_;
  my $xfer   = 0;
  $xfer += $output->writeStructBegin('IOError');
  if (defined $self->{message}) {
    $xfer += $output->writeFieldBegin('message', TType::STRING, 1);
    $xfer += $output->writeString($self->{message});
    $xfer += $output->writeFieldEnd();
  }
  $xfer += $output->writeFieldStop();
  $xfer += $output->writeStructEnd();
  return $xfer;
}

package Hbase::IllegalArgument;
use base qw(Thrift::TException);
use base qw(Class::Accessor);
Hbase::IllegalArgument->mk_accessors( qw( message ) );

sub new {
  my $classname = shift;
  my $self      = {};
  my $vals      = shift || {};
  $self->{message} = undef;
  if (UNIVERSAL::isa($vals,'HASH')) {
    if (defined $vals->{message}) {
      $self->{message} = $vals->{message};
    }
  }
  return bless ($self, $classname);
}

sub getName {
  return 'IllegalArgument';
}

sub read {
  my ($self, $input) = @_;
  my $xfer  = 0;
  my $fname;
  my $ftype = 0;
  my $fid   = 0;
  $xfer += $input->readStructBegin(\$fname);
  while (1)
  {
    $xfer += $input->readFieldBegin(\$fname, \$ftype, \$fid);
    if ($ftype == TType::STOP) {
      last;
    }
    SWITCH: for($fid)
    {
      /^1$/ && do{      if ($ftype == TType::STRING) {
        $xfer += $input->readString(\$self->{message});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
        $xfer += $input->skip($ftype);
    }
    $xfer += $input->readFieldEnd();
  }
  $xfer += $input->readStructEnd();
  return $xfer;
}

sub write {
  my ($self, $output) = @_;
  my $xfer   = 0;
  $xfer += $output->writeStructBegin('IllegalArgument');
  if (defined $self->{message}) {
    $xfer += $output->writeFieldBegin('message', TType::STRING, 1);
    $xfer += $output->writeString($self->{message});
    $xfer += $output->writeFieldEnd();
  }
  $xfer += $output->writeFieldStop();
  $xfer += $output->writeStructEnd();
  return $xfer;
}

package Hbase::AlreadyExists;
use base qw(Thrift::TException);
use base qw(Class::Accessor);
Hbase::AlreadyExists->mk_accessors( qw( message ) );

sub new {
  my $classname = shift;
  my $self      = {};
  my $vals      = shift || {};
  $self->{message} = undef;
  if (UNIVERSAL::isa($vals,'HASH')) {
    if (defined $vals->{message}) {
      $self->{message} = $vals->{message};
    }
  }
  return bless ($self, $classname);
}

sub getName {
  return 'AlreadyExists';
}

sub read {
  my ($self, $input) = @_;
  my $xfer  = 0;
  my $fname;
  my $ftype = 0;
  my $fid   = 0;
  $xfer += $input->readStructBegin(\$fname);
  while (1)
  {
    $xfer += $input->readFieldBegin(\$fname, \$ftype, \$fid);
    if ($ftype == TType::STOP) {
      last;
    }
    SWITCH: for($fid)
    {
      /^1$/ && do{      if ($ftype == TType::STRING) {
        $xfer += $input->readString(\$self->{message});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
        $xfer += $input->skip($ftype);
    }
    $xfer += $input->readFieldEnd();
  }
  $xfer += $input->readStructEnd();
  return $xfer;
}

sub write {
  my ($self, $output) = @_;
  my $xfer   = 0;
  $xfer += $output->writeStructBegin('AlreadyExists');
  if (defined $self->{message}) {
    $xfer += $output->writeFieldBegin('message', TType::STRING, 1);
    $xfer += $output->writeString($self->{message});
    $xfer += $output->writeFieldEnd();
  }
  $xfer += $output->writeFieldStop();
  $xfer += $output->writeStructEnd();
  return $xfer;
}

1;
