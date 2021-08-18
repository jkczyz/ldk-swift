public class UpdateAddHTLC {

	private static var instanceCounter: UInt = 0
	internal let instanceNumber: UInt
	internal private(set) var dangling = false

    public internal(set) var cOpaqueStruct: LDKUpdateAddHTLC?;


	

    public init(pointer: LDKUpdateAddHTLC){
    	Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
		self.cOpaqueStruct = pointer
	}

    /* STRUCT_METHODS_START */

    public func get_channel_id() -> [UInt8] {
    	
        return Bindings.tuple32_to_array(nativeType: withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKUpdateAddHTLC>) in
UpdateAddHTLC_get_channel_id(this_ptrPointer)
}.pointee);
    }

    public func set_channel_id(val: [UInt8]) -> Void {
    	
							let this_ptrPointer = UnsafeMutablePointer<LDKUpdateAddHTLC>.allocate(capacity: 1)
							this_ptrPointer.initialize(to: self.cOpaqueStruct!)
						
        return UpdateAddHTLC_set_channel_id(this_ptrPointer, Bindings.new_LDKThirtyTwoBytes(array: val));
    }

    public func get_htlc_id() -> UInt64 {
    	
        return withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKUpdateAddHTLC>) in
UpdateAddHTLC_get_htlc_id(this_ptrPointer)
};
    }

    public func set_htlc_id(val: UInt64) -> Void {
    	
							let this_ptrPointer = UnsafeMutablePointer<LDKUpdateAddHTLC>.allocate(capacity: 1)
							this_ptrPointer.initialize(to: self.cOpaqueStruct!)
						
        return UpdateAddHTLC_set_htlc_id(this_ptrPointer, val);
    }

    public func get_amount_msat() -> UInt64 {
    	
        return withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKUpdateAddHTLC>) in
UpdateAddHTLC_get_amount_msat(this_ptrPointer)
};
    }

    public func set_amount_msat(val: UInt64) -> Void {
    	
							let this_ptrPointer = UnsafeMutablePointer<LDKUpdateAddHTLC>.allocate(capacity: 1)
							this_ptrPointer.initialize(to: self.cOpaqueStruct!)
						
        return UpdateAddHTLC_set_amount_msat(this_ptrPointer, val);
    }

    public func get_payment_hash() -> [UInt8] {
    	
        return Bindings.tuple32_to_array(nativeType: withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKUpdateAddHTLC>) in
UpdateAddHTLC_get_payment_hash(this_ptrPointer)
}.pointee);
    }

    public func set_payment_hash(val: [UInt8]) -> Void {
    	
							let this_ptrPointer = UnsafeMutablePointer<LDKUpdateAddHTLC>.allocate(capacity: 1)
							this_ptrPointer.initialize(to: self.cOpaqueStruct!)
						
        return UpdateAddHTLC_set_payment_hash(this_ptrPointer, Bindings.new_LDKThirtyTwoBytes(array: val));
    }

    public func get_cltv_expiry() -> UInt32 {
    	
        return withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKUpdateAddHTLC>) in
UpdateAddHTLC_get_cltv_expiry(this_ptrPointer)
};
    }

    public func set_cltv_expiry(val: UInt32) -> Void {
    	
							let this_ptrPointer = UnsafeMutablePointer<LDKUpdateAddHTLC>.allocate(capacity: 1)
							this_ptrPointer.initialize(to: self.cOpaqueStruct!)
						
        return UpdateAddHTLC_set_cltv_expiry(this_ptrPointer, val);
    }

    public func clone() -> UpdateAddHTLC {
    	
        return UpdateAddHTLC(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKUpdateAddHTLC>) in
UpdateAddHTLC_clone(origPointer)
});
    }

					internal func danglingClone() -> UpdateAddHTLC {
        				var dangledClone = self.clone()
						dangledClone.dangling = true
						return dangledClone
					}
				

    public func write() -> [UInt8] {
    	
        return Bindings.LDKCVec_u8Z_to_array(nativeType: withUnsafePointer(to: self.cOpaqueStruct!) { (objPointer: UnsafePointer<LDKUpdateAddHTLC>) in
UpdateAddHTLC_write(objPointer)
});
    }

    public class func read(ser: [UInt8]) -> Result_UpdateAddHTLCDecodeErrorZ {
    	
        return Result_UpdateAddHTLCDecodeErrorZ(pointer: UpdateAddHTLC_read(Bindings.new_LDKu8slice(array: ser)));
    }

    internal func free() -> Void {
    	
        return UpdateAddHTLC_free(self.cOpaqueStruct!);
    }

					internal func dangle() -> UpdateAddHTLC {
        				self.dangling = true
						return self
					}
					
					deinit {
						if !self.dangling {
							self.free()
						}
					}
				

    /* STRUCT_METHODS_END */

}
