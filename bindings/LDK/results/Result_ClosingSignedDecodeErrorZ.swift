public class Result_ClosingSignedDecodeErrorZ {

	private static var instanceCounter: UInt = 0
	internal let instanceNumber: UInt
	internal private(set) var dangling = false

    public internal(set) var cOpaqueStruct: LDKCResult_ClosingSignedDecodeErrorZ?;

	/* DEFAULT_CONSTRUCTOR_START */

				public init() {
        			self.cOpaqueStruct = LDKCResult_ClosingSignedDecodeErrorZ(contents: LDKCResult_ClosingSignedDecodeErrorZPtr(), result_ok: true)
				}
			
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKCResult_ClosingSignedDecodeErrorZ){
    	Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
		self.cOpaqueStruct = pointer
	}

	public func isOk() -> Bool {
		return self.cOpaqueStruct?.result_ok == true
	}

    /* RESULT_METHODS_START */

			public func getError() -> DecodeError? {
				if self.cOpaqueStruct?.result_ok == false {
					return DecodeError(pointer: self.cOpaqueStruct!.contents.err.pointee)
				}
				return nil
			}
			
			public func getValue() -> ClosingSigned? {
				if self.cOpaqueStruct?.result_ok == true {
					return ClosingSigned(pointer: self.cOpaqueStruct!.contents.result.pointee)
				}
				return nil
			}
			
    public class func ok(o: ClosingSigned) -> Result_ClosingSignedDecodeErrorZ {
    	
        return Result_ClosingSignedDecodeErrorZ(pointer: CResult_ClosingSignedDecodeErrorZ_ok(o.clone().cOpaqueStruct!));
    }

    public class func err(e: DecodeError) -> Result_ClosingSignedDecodeErrorZ {
    	
        return Result_ClosingSignedDecodeErrorZ(pointer: CResult_ClosingSignedDecodeErrorZ_err(e.clone().cOpaqueStruct!));
    }

    internal func free() -> Void {
    	
        return CResult_ClosingSignedDecodeErrorZ_free(self.cOpaqueStruct!);
    }

					internal func dangle() -> Result_ClosingSignedDecodeErrorZ {
        				self.dangling = true
						return self
					}
					
					deinit {
						if !self.dangling {
							self.free()
						}
					}
				

    public func clone() -> Result_ClosingSignedDecodeErrorZ {
    	
        return Result_ClosingSignedDecodeErrorZ(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKCResult_ClosingSignedDecodeErrorZ>) in
CResult_ClosingSignedDecodeErrorZ_clone(origPointer)
});
    }

					internal func danglingClone() -> Result_ClosingSignedDecodeErrorZ {
        				var dangledClone = self.clone()
						dangledClone.dangling = true
						return dangledClone
					}
				

    /* RESULT_METHODS_END */

}
