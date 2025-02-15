public class Result_UnsignedChannelUpdateDecodeErrorZ: NativeTypeWrapper {

	private static var instanceCounter: UInt = 0
	internal let instanceNumber: UInt

    internal var cOpaqueStruct: LDKCResult_UnsignedChannelUpdateDecodeErrorZ?

	/* DEFAULT_CONSTRUCTOR_START */

				public init() {
					Self.instanceCounter += 1
					self.instanceNumber = Self.instanceCounter
        			self.cOpaqueStruct = LDKCResult_UnsignedChannelUpdateDecodeErrorZ(contents: LDKCResult_UnsignedChannelUpdateDecodeErrorZPtr(), result_ok: true)
        			super.init(conflictAvoidingVariableName: 0)
				}
			
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKCResult_UnsignedChannelUpdateDecodeErrorZ){
    	Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
		self.cOpaqueStruct = pointer
		super.init(conflictAvoidingVariableName: 0)
	}

	public init(pointer: LDKCResult_UnsignedChannelUpdateDecodeErrorZ, anchor: NativeTypeWrapper){
		Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
		self.cOpaqueStruct = pointer
		super.init(conflictAvoidingVariableName: 0)
		self.dangling = true
		try! self.addAnchor(anchor: anchor)
	}

	public func isOk() -> Bool {
		return self.cOpaqueStruct?.result_ok == true
	}

    /* RESULT_METHODS_START */

			public func getError() -> DecodeError? {
				if self.cOpaqueStruct?.result_ok == false {
					return DecodeError(pointer: self.cOpaqueStruct!.contents.err.pointee, anchor: self)
				}
				return nil
			}
			
			public func getValue() -> UnsignedChannelUpdate? {
				if self.cOpaqueStruct?.result_ok == true {
					return UnsignedChannelUpdate(pointer: self.cOpaqueStruct!.contents.result.pointee, anchor: self)
				}
				return nil
			}
			
    public class func ok(o: UnsignedChannelUpdate) -> Result_UnsignedChannelUpdateDecodeErrorZ {
    	
        return Result_UnsignedChannelUpdateDecodeErrorZ(pointer: CResult_UnsignedChannelUpdateDecodeErrorZ_ok(o.danglingClone().cOpaqueStruct!));
    }

    public class func err(e: DecodeError) -> Result_UnsignedChannelUpdateDecodeErrorZ {
    	
        return Result_UnsignedChannelUpdateDecodeErrorZ(pointer: CResult_UnsignedChannelUpdateDecodeErrorZ_err(e.danglingClone().cOpaqueStruct!));
    }

    internal func free() -> Void {
    	
        return CResult_UnsignedChannelUpdateDecodeErrorZ_free(self.cOpaqueStruct!);
    }

					internal func dangle() -> Result_UnsignedChannelUpdateDecodeErrorZ {
        				self.dangling = true
						return self
					}
					
					deinit {
						if !self.dangling {
							Bindings.print("Freeing Result_UnsignedChannelUpdateDecodeErrorZ \(self.instanceNumber).")
							self.free()
						} else {
							Bindings.print("Not freeing Result_UnsignedChannelUpdateDecodeErrorZ \(self.instanceNumber) due to dangle.")
						}
					}
				

    public func clone() -> Result_UnsignedChannelUpdateDecodeErrorZ {
    	
        return Result_UnsignedChannelUpdateDecodeErrorZ(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKCResult_UnsignedChannelUpdateDecodeErrorZ>) in
CResult_UnsignedChannelUpdateDecodeErrorZ_clone(origPointer)
});
    }

					internal func danglingClone() -> Result_UnsignedChannelUpdateDecodeErrorZ {
        				let dangledClone = self.clone()
						dangledClone.dangling = true
						return dangledClone
					}
				

    /* RESULT_METHODS_END */

}
