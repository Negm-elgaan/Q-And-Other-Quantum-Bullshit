// # Sample
// Getting started
//
// # Description
// This is a minimal Q# program that can be used to start writing Q# code.

//operation Main() : Unit {
    // TODO: Write your Q# code here.
//}

namespace MyQuantumProgram {
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Measurement;
    @EntryPoint()
    
    

    operation Sum() : Int
    {
        mutable X  = 0;
        mutable Y = 0;
        mutable B = 0;
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
        let z = GenerateQubit();
        let w = GenerateQubit();
        let a = GenerateQubit();
        if (w[0] == z[0] and w[1] != z[1])
        {
            set X = 1 ;
        }
        if (a[0] == z[0] and a[1] != z[1])
        {
            set Y = 1;
        }
        if (w[0] == a[0] and w[1] != a[1])
        {
            set B = 1;
        }
        mutable O = X + Y + B;
        return O;
    }
}