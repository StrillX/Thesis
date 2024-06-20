OPENQASM 2.0;
include "qelib1.inc";
gate step1 a, b, c, d {
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
  rz(.6666666666666666 * pi) a;
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
gate step2 a, b, c, d {
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
  rz(1.6666666666666666 * pi) a;
  rx(0.25 * pi) a;
  cx a, d;
  rx(-0.25 * pi) a;
  h a;
  cx a, c;
  h a;
  rz(.6666666666666666 * pi) a;
  h a;
  cx a, b;
  h a;
  rx(-0.25 * pi) a;
}
gate step3 a, b, c, d {
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
  rz(.6666666666666666 * pi) a;
  rx(-0.25 * pi) a;
  cx a, d;
  rx(-0.25 * pi) a;
  h a;
  cx a, c;
  h a;
  rz(.6666666666666666 * pi) a;
  h a;
  cx a, b;
  h a;
  rx(0.25 * pi) a;
}

qreg q[4];
creg c[4];
//rx(0.25 * pi) q[0];
//
//
x q[3];
step1 q[0], q[1], q[2], q[3];
step2 q[0], q[1], q[2], q[3];
step1 q[0], q[1], q[2], q[3];
step1 q[0], q[1], q[2], q[3];
step2 q[0], q[1], q[2], q[3];
step1 q[0], q[1], q[2], q[3];
//step2 q[0], q[1], q[2], q[3];
//step3 q[0], q[1], q[2], q[3];
