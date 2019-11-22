module NetworkInference

using InformationMeasures
using Distributions
using Distributed
using Pkg, DelimitedFiles, SharedArrays, Statistics, StatsBase

export
    # Common types
    Node,
    Edge,
    InferredNetwork,
    # Network inference algorithms
    AbstractNetworkInference,
    CorrelationNetworkInference,
    MINetworkInference,
    CLRNetworkInference,
    PUCNetworkInference,
    PIDCNetworkInference,
    # Functions for inferring networks
    get_nodes,
    write_network_file,
    read_network_file,
    get_adjacency_matrix,
    infer_network

include("common.jl")
include("network_inference.jl")
include("infer_network.jl")
include("empirical_bayes_glue.jl")

# optional exports
if EB_EXISTS
    export # EmpiricalBayes glue functions
        to_index,
        make_priors,
        empirical_bayes
end

end # module
