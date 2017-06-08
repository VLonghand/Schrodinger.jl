module Schrodinger
using DiffEqBase, OrdinaryDiffEq, Compat

export Operator, Ket, Bra,
    data, dims, isnormalized, dimsmatch, dense, braket,
    ptrace, expect, tensor,
    fock, basis, coherent, thermal, maxmixed,
    qzero, qeye, create, destroy, numberop, displacementop, squeezeop,
    Liouvillian, SchrodingerEvo, LindbladEvo,
    Propagator, SchrodingerProp, LindbladProp,
    sesolve, mesolve, lsolve, psolve, psteady,
    expim, gaussian

include("quobj/types.jl")
include("quobj/basicmethods.jl")
include("math/basemath.jl")
include("math/eigen.jl")
include("math/special.jl")
include("math/ptrace.jl")
include("dynamics/liouvillian.jl")
include("dynamics/propagator.jl")
include("dynamics/constructors.jl")
include("dynamics/interface.jl")
include("misc/utils.jl")
include("misc/kron.jl")
include("misc/sparsevec.jl")
include("misc/approxherm.jl")
include("library/operators.jl")
include("library/states.jl")
include("library/constants.jl")

#const CACHE = Dict{UInt64,Matrix{Complex128}}()

# 0.5
#scale!(A::Union{Diagonal,Symmetric,Hermitian},b::Number) = (scale!(A.data,b);A)
end
