public class OptionName {

	private static var instanceCounter: UInt = 0
	internal let instanceNumber: UInt
	internal private(set) var dangling = false

    public internal(set) var cOpaqueStruct: OptionType?;

	/* DEFAULT_CONSTRUCTOR_START */
    public init(swift_constructor_arguments) {
    	Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
    	/* NATIVE_CONSTRUCTOR_PREP */
        self.cOpaqueStruct = OptionType(native_constructor_arguments)
    }
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: OptionType){
    	Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
		self.cOpaqueStruct = pointer
	}

    /* OPTION_METHODS_START */
    public func methodName(swift_arguments) -> Void {
    	/* NATIVE_CALL_PREP */
        return OptionType_methodName(native_arguments);
    }
    /* OPTION_METHODS_END */

	/* TYPE_CLASSES */
}
