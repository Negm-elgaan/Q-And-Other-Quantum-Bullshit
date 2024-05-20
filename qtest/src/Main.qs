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
    
    operation GenerateQubit1() :Result[]
    {
      use x  = Qubit()  ;
        use y = Qubit();
            H(x);
            let resultX = MResetZ(x);
            H(y);
            let resultY = MResetZ(y);
            SWAP(x,y);
            return [resultX,resultY];
    }
    operation Main() : Result[] {
        // TODO: Write your Q# code here.
        
      return [];
    }
    
     
        
    
}
