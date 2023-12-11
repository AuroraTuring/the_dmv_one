require 'spec_helper'

RSpec.describe Facility do
  before(:each) do
    @facility_1 = Facility_1.new({name: 'DMV Tremont Branch', address: '2855 Tremont Place Suite 118 Denver CO 80205', phone: '(720) 865-4600'})
  end
  describe '#initialize' do
    it 'can initialize' do
      expect(@facility_1).to be_an_instance_of(Facility)
      expect(@facility_1.name).to eq('DMV Tremont Branch')
      expect(@facility_1.address).to eq('2855 Tremont Place Suite 118 Denver CO 80205')
      expect(@facility_1.phone).to eq('(720) 865-4600')
      expect(@facility_1.services).to eq([])
    end
  end

  describe '#add service' do
    it 'can add available services' do
      expect(@facility_1.services).to eq([])
      @facility_1.add_service('New Drivers License')
      @facility_1.add_service('Renew Drivers License')
      @facility_1.add_service('Vehicle Registration')
      expect(@facility_1.services).to eq(['New Drivers License', 'Renew Drivers License', 'Vehicle Registration'])
    end
  end
end




# facility_1 = Facility.new({name: 'DMV Tremont Branch', address: '2855 Tremont Place Suite 118 Denver CO 80205', phone: '(720) 865-4600'})
# <Facility:0x000000010e5ad5e8 @address="2855 Tremont Place Suite 118 Denver CO 80205", @name="DMV Tremont Branch", @phone="(720) 865-4600", @services=[]>

# facility_2 = Facility.new({name: 'DMV Northeast Branch', address: '4685 Peoria Street Suite 101 Denver CO 80239', phone: '(720) 865-4600'})
# <Facility:0x000000010e5ad480 @address="4685 Peoria Street Suite 101 Denver CO 80239", @name="DMV Northeast Branch", @phone="(720) 865-4600", @services=[]>

# cruz = Vehicle.new({vin: '123456789abcdefgh', year: 2012, make: 'Chevrolet', model: 'Cruz', engine: :ice} )<Vehicle:0x0000000135a48b08 @engine=:ice, @make="Chevrolet", @model="Cruz", @plate_type=nil, @registration_date=nil, @vin="123456789abcdefgh", @year=2012>

# bolt = Vehicle.new({vin: '987654321abcdefgh', year: 2019, make: 'Chevrolet', model: 'Bolt', engine: :ev} )
# <Vehicle:0x0000000125832180 @engine=:ev, @make="Chevrolet", @model="Bolt", @plate_type=nil, @registration_date=nil, @vin="987654321abcdefgh", @year=2019>

# camaro = Vehicle.new({vin: '1a2b3c4d5e6f', year: 1969, make: 'Chevrolet', model: 'Camaro', engine: :ice} )
# <Vehicle:0x0000000135adb610 @engine=:ice, @make="Chevrolet", @model="Camaro", @plate_type=nil, @registration_date=nil, @vin="1a2b3c4d5e6f", @year=1969>

# facility_1.add_service('Vehicle Registration')
# ["Vehicle Registration"]

# cruz.registration_date
# nil

# facility_1.registered_vehicles
# []

# facility_1.collected_fees
# 0

# facility_1.register_vehicle(cruz)
# [#<Vehicle:0x0000000135a48b08...>]

# cruz.registration_date
# #<Date: 2023-01-12 ((2459957j,0s,0n),+0s,2299161j)>

# cruz.plate_type
# :regular

# facility_1.registered_vehicles
# [#<Vehicle:0x0000000135a48b08...>]

# facility_1.collected_fees
# 100

# facility_1.register_vehicle(camaro)
# [#<Vehicle:0x0000000135a48b08...>, #<Vehicle:0x0000000135adb610...>]

# camaro.registration_date
# #<Date: 2023-01-12 ((2459957j,0s,0n),+0s,2299161j)>

# camaro.plate_type
# :antique

# facility_1.register_vehicle(bolt)
# [#<Vehicle:0x0000000135a48b08...>, #<Vehicle:0x0000000135adb610...>, #<Vehicle:0x0000000125832180...>]

# bolt.registration_date
# #<Date: 2023-01-12 ((2459957j,0s,0n),+0s,2299161j)>

# bolt.plate_type
# :ev

# facility_1.registered_vehicles
# [#<Vehicle:0x0000000135a48b08...>, #<Vehicle:0x0000000135adb610...>, #<Vehicle:0x0000000125832180...>]

# facility_1.collected_fees
# 325

# facility_2.registered_vehicles
# []

# facility_2.services
# []

# facility_2.register_vehicle(bolt)
# nil

# facility_2.registered_vehicles
# []

# facility_2.collected_fees
# 0