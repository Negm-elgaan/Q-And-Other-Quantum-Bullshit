/// # Sample
/// Getting started
///
/// # Description
/// This is a minimal Q# program that can be used to start writing Q# code.
namespace MyQuantumProgram {
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Measurement;
    @EntryPoint()
    // Define your operation to generate a qubit
    operation GenerateQubit() :Result[]
    {
      use x  = Qubit()  ;
        use y = Qubit();
            H(x);
            let resultX = MResetZ(x);
            H(y);
            let resultY = MResetZ(y);
            CNOT(x,y);
            return [resultX,resultY];
    }

    // Define your Main operation
    operation Main() : Result[] {
        // Call GenerateQubit operation to generate a qubit
        let result = GenerateQubit();
        return result;
    }
}

