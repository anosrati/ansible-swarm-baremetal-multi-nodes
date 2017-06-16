MOCKUP DOES NOT HAVE:
  -- EventService
  -- some second level APIs to the Manager that is the PSME
        (./NetworkProtocol, and ./EthernetInterfaces
        These are in the 3/1 implementation however
  -- The DIMMConfig and MemoryChunks resources off System 


/redfish
  /v1
    /odata
    /metadata
    /G5info
    /Registries []
        /Base.1.0.0
    /JsonSchemas []
        /Chassis.1.0.1
        /ComputerSystem.1.0.1
    /AccountService
        /Accounts []
            /admin
            /albert
            /super
            /guest
        /Roles []
            /Admin
            /Operator
            /ReadOnlyUser

    /SessionService
        /Sessions []
           <<empty unless you careate a session>>

    /Chassis []
        /Rack1
            /Power
        /Rack1-Block<b>          # for each block b=1 2 3 4
            /Power
            /Thermal
        /Rack1-PowerBay<pb>      # for each PowerBay pb=1 2
            /Power
        /Rack1-Block<b>-Sled<s>  # for each sled s in block b  
            /Power		 #   4 sleds in blocks 1 and 2
            /Thermal		 #   8 sleds in blocks 3 and 4

    /Managers []
        /Rack1-Block1-Bc      # block controller in BLock1
        /Rack1-Block2-Bc      # block controller in block2
        /Rack1-Block3-Bc       ...
        /Rack1-Block4-Bc   
        /Rack1-PowerBay2-MC1  # slave MC in 2nd powerbay-noe psme
        /Rack1-PowerBay1-Im   # infrastructure mgr in powerbay1
        /Rack1-PowerBay1-MC1  # MC1 in PowerBay1-This is the PSME
             ((the following 2 second level APIs for MC1 not in mockup))
	     (( but they are in the 3/1 firmware release))
	/managedMC/NetworkProtocol      # managedMC is the PSME
	/managedMC/EthernetInterfaces

    /Systems []
        /Rack1-Block1-Sled[1-4]-Node1 # 4 storage sleds in Block1
            /Processors
            /SimpleStorage
            /EthernetInterfaces
        /Rack1-Block2-Sled[1-4]-Node1 # 4 storage sleds in Block2
            /Processors
            /SimpleStorage
            /EthernetInterfaces
        /Rack1-Block3-Sled[1-8]-Node1 # 8 compute sleds in Block3
            /Processors
            /SimpleStorage
            /EthernetInterfaces
        /Rack1-Block4-Sled[1-8]-Node1 # 8 compute sleds in Block4
            /Processors
            /SimpleStorage
            /EthernetInterfaces

/EventService   (not in mockup)
