require_dependency 'spree/shipping_calculator'

module Spree
  module Calculator::Shipping
    class RajaOngkir < ShippingCalculator

      def self.description
        'RajaOngkir '
      end

      def compute_package(package)
        100_000
      end


    def compute(package)
      puts "=============="
      puts "=============="
      puts "=============="
      puts "=============="
      puts "=============="
      puts "=============="
      puts "=============="
      puts "=============="
      puts "=============="
      puts "=============="
      puts package.inspect
      puts "=============="
      puts "=============="
      puts "=============="
      puts "=============="
      puts "=============="
      puts "=============="
      puts "=============="
      puts "=============="
      puts "Weight: #{package.weight}"
      puts "From: #{package.stock_location.city}"
      puts "Destination: #{package.order.bill_address.city_id}"
      puts "=============="
      puts "=============="
      puts "=============="
      puts "=============="
      puts "=============="
      puts "=============="
      puts "=============="
      puts "=============="
      puts "=============="
      puts "=============="
      # 107 Cimahi
      service = RajaOngkirService.find_rates(24, package.order.bill_address.city_id, package.weight, 'REG')
      cost    = service ? RajaOngkirService.get_cost(service) : 0
      puts cost
      cost
    end
    end
  end
end
