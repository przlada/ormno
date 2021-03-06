reset;
set facilities;
set clients;
param c{facilities, clients};
param f{facilities};
var x{u in clients, v in facilities}>=0;
var y{v in facilities}>=0,<=1;
minimize cost: sum{v in facilities}f[v]*y[v]+sum{u in clients, v in facilities}c[v,u]*x[u,v];
s.t. connection{u in clients}:sum{v in facilities}x[u,v]=1;
s.t. activ_facility{u in clients, v in facilities}:x[u,v]<=y[v];
