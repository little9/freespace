require_relative "./freespace/version"
require 'sys/filesystem'
include Sys

module Freespace
  KB = 1024
  MB = 1048576
  GB = 1073741824
  TB = 1099511627776
  
  def self.get_free_space(location,unit=nil)
    stats = Filesystem.stat(location)
    
    if unit == 'KB'
      free_space = stats.blocks_available * stats.block_size / Freespace::KB
    end

    if unit == 'MB'
      free_space = stats.blocks_available * stats.block_size / Freespace::MB
    end

    if unit == 'GB'
      free_space = stats.blocks_available * stats.block_size / Freespace::GB
    end
    
    if unit == 'TB'
      free_space = stats.blocks_available * stats.block_size / Freespace::TB
    end

    if unit == nil
      unit = 'MB'
      free_space = stats.blocks_available * stats.block_size / Freespace::MB
    end

    free_space_hash = { :free_space => free_space , :unit => unit }
    
    return free_space_hash
  end
end


