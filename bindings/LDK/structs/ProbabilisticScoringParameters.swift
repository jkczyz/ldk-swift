public class ProbabilisticScoringParameters: NativeTypeWrapper {

	private static var instanceCounter: UInt = 0
	internal let instanceNumber: UInt

    internal var cOpaqueStruct: LDKProbabilisticScoringParameters?


	/* DEFAULT_CONSTRUCTOR_START */
    public init() {
    	Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
    	
        self.cOpaqueStruct = ProbabilisticScoringParameters_default()
        super.init(conflictAvoidingVariableName: 0)
        
    }
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKProbabilisticScoringParameters){
    	Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
		self.cOpaqueStruct = pointer
		super.init(conflictAvoidingVariableName: 0)
	}

	public init(pointer: LDKProbabilisticScoringParameters, anchor: NativeTypeWrapper){
		Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
		self.cOpaqueStruct = pointer
		super.init(conflictAvoidingVariableName: 0)
		self.dangling = true
		try! self.addAnchor(anchor: anchor)
	}

    /* STRUCT_METHODS_START */

    public func get_base_penalty_msat() -> UInt64 {
    	
        return withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKProbabilisticScoringParameters>) in
ProbabilisticScoringParameters_get_base_penalty_msat(this_ptrPointer)
};
    }

    public func set_base_penalty_msat(val: UInt64) -> Void {
    	
							let this_ptrPointer = UnsafeMutablePointer<LDKProbabilisticScoringParameters>.allocate(capacity: 1)
							this_ptrPointer.initialize(to: self.cOpaqueStruct!)
						
        return ProbabilisticScoringParameters_set_base_penalty_msat(this_ptrPointer, val);
    }

    public func get_liquidity_penalty_multiplier_msat() -> UInt64 {
    	
        return withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKProbabilisticScoringParameters>) in
ProbabilisticScoringParameters_get_liquidity_penalty_multiplier_msat(this_ptrPointer)
};
    }

    public func set_liquidity_penalty_multiplier_msat(val: UInt64) -> Void {
    	
							let this_ptrPointer = UnsafeMutablePointer<LDKProbabilisticScoringParameters>.allocate(capacity: 1)
							this_ptrPointer.initialize(to: self.cOpaqueStruct!)
						
        return ProbabilisticScoringParameters_set_liquidity_penalty_multiplier_msat(this_ptrPointer, val);
    }

    public func get_liquidity_offset_half_life() -> UInt64 {
    	
        return withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKProbabilisticScoringParameters>) in
ProbabilisticScoringParameters_get_liquidity_offset_half_life(this_ptrPointer)
};
    }

    public func set_liquidity_offset_half_life(val: UInt64) -> Void {
    	
							let this_ptrPointer = UnsafeMutablePointer<LDKProbabilisticScoringParameters>.allocate(capacity: 1)
							this_ptrPointer.initialize(to: self.cOpaqueStruct!)
						
        return ProbabilisticScoringParameters_set_liquidity_offset_half_life(this_ptrPointer, val);
    }

    public func get_amount_penalty_multiplier_msat() -> UInt64 {
    	
        return withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKProbabilisticScoringParameters>) in
ProbabilisticScoringParameters_get_amount_penalty_multiplier_msat(this_ptrPointer)
};
    }

    public func set_amount_penalty_multiplier_msat(val: UInt64) -> Void {
    	
							let this_ptrPointer = UnsafeMutablePointer<LDKProbabilisticScoringParameters>.allocate(capacity: 1)
							this_ptrPointer.initialize(to: self.cOpaqueStruct!)
						
        return ProbabilisticScoringParameters_set_amount_penalty_multiplier_msat(this_ptrPointer, val);
    }

    public func clone() -> ProbabilisticScoringParameters {
    	
        return ProbabilisticScoringParameters(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKProbabilisticScoringParameters>) in
ProbabilisticScoringParameters_clone(origPointer)
});
    }

					internal func danglingClone() -> ProbabilisticScoringParameters {
        				let dangledClone = self.clone()
						dangledClone.dangling = true
						return dangledClone
					}
				

    internal func free() -> Void {
    	
        return ProbabilisticScoringParameters_free(self.cOpaqueStruct!);
    }

					internal func dangle() -> ProbabilisticScoringParameters {
        				self.dangling = true
						return self
					}
					
					deinit {
						if !self.dangling {
							Bindings.print("Freeing ProbabilisticScoringParameters \(self.instanceNumber).")
							self.free()
						} else {
							Bindings.print("Not freeing ProbabilisticScoringParameters \(self.instanceNumber) due to dangle.")
						}
					}
				

    /* STRUCT_METHODS_END */

}
