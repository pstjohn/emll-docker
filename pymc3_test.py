import pymc3 as pm
n = 100
h = 61
alpha = 2
beta = 2

with pm.Model() as model:
    p = pm.Beta('p', alpha=alpha, beta=beta)
    y = pm.Binomial('y', n=n, p=p, observed=h)
    trace = pm.sample(2000, tune=1000, cores=4)

pm.summary(trace)
