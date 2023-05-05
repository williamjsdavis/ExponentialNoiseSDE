module ExponentialNoiseSDE

greet() = print("Hello World!")

#TODO: update code to use mean()
using FFTW: fft
using NLopt: Opt, optimize
using Statistics: var

export Observation

export ConditionalMoments, ConditionalMomentSettings
export Epanechnikov
export build_moments
export ModelEstimateSettings, ModelEstimate

include("Observation.jl")

include("kernels.jl")
include("KBR.jl")
include("ConditionalMoments.jl")

include("autocorrelation.jl")
include("ModelEstimate.jl")

end # module ExponentialNoiseSDE
