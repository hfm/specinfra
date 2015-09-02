module Specinfra
  class HostInventory
    class BlockDevice < Base
      def get
        cmd = backend.command.get(:get_inventory_block_device)
        ret = backend.run_command(cmd)
        if ret.exit_status == 0
          parse(ret.stdout)
        else
          nil
        end
      end
      def parse(ret)
        block_device = {}
        ret.each_line do |line|
          if m = line.match(/\A\z/)
          end
        end
        block_device
      end
    end
  end
end
