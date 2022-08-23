module Reactions
const R = 8.314

struct Params{T<:Float64}
  k::T
  b::T
  E::T
end

function rate(p::Params, conc_r::Array{T}, temp::T) where {T<:Float64}
  return p.k * temp^p.b * exp(-p.E / R / temp) * prod(conc_r)
end
end
