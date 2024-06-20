OPENQASM 2.0;
include "qelib1.inc";
gate minor(r) a, b, c, d {
  h a;
  cx a, d;
  h a;
  cx a, d;
  rx(0.25 * pi) a;
  h a;
  cx a, c;
  h a;
  h a;
  cx a, b;
  h a;
  rz(((r) + 0.6666666666666666) * pi) a;
  rx(0.25 * pi) a;
  cx a, d;
  rx(0.25 * pi) a;
  h a;
  cx a, c;
  h a;
  rz(.6666666666666666 * pi) a;
  h a;
  cx a, b;
  h a;
  rx(0.25 * pi) a;
}
gate major(r) a, b, c, d {
  h a;
  cx a, d;
  h a;
  cx a, d;
  rx(-0.25 * pi) a;
  h a;
  cx a, c;
  h a;
  h a;
  cx a, b;
  h a;
  rz(((r) + 0.6666666666666666) * pi) a;
  rx(-0.25 * pi) a;
  cx a, d;
  rx(-0.25 * pi) a;
  h a;
  cx a, c;
  h a;
  rz(1.6666666666666666 * pi) a;
  h a;
  cx a, b;
  h a;
  rx(-0.25 * pi) a;
}
gate minorEdge(r) a, b, c, d {
  h a;
  cx a, d;
  h a;
  cx a, d;
  rx(0.25 * pi) a;
  h a;
  cx a, c;
  h a;
  h a;
  cx a, b;
  h a;
  rz(((r) + 0.6666666666666666) * pi) a;
  rx(-0.25 * pi) a;
  cx a, d;
  rx(-0.25 * pi) a;
  h a;
  cx a, c;
  h a;
  rz(1.6666666666666666 * pi) a;
  h a;
  cx a, b;
  h a;
  rx(0.25 * pi) a;
}

gate majorEdge(r) a, b, c, d {
  h a;
  cx a, d;
  h a;
  cx a, d;
  rx(-0.25 * pi) a;
  h a;
  cx a, c;
  h a;
  h a;
  cx a, b;
  h a;
  rz(((r) + 0.6666666666666666) * pi) a;
  rx(0.25 * pi) a;
  cx a, d;
  rx(0.25 * pi) a;
  h a;
  cx a, c;
  h a;
  rz(.6666666666666666 * pi) a;
  h a;
  cx a, b;
  h a;
  rx(-0.25 * pi) a;
}

qreg q[4];
creg c[4];
//rx(0.25 * pi) q[0];
//
//
x q[3];
major(1) q[0], q[1], q[2], q[3];
majorEdge(1) q[0], q[1], q[2], q[3];
minorEdge(1) q[0], q[1], q[2], q[3];
minor(1) q[0], q[1], q[2], q[3];
major(1) q[0], q[1], q[2], q[3];
majorEdge(1) q[0], q[1], q[2], q[3];
minor(0) q[0], q[1], q[2], q[3];
//step3 q[0], q[1], q[2], q[3];
