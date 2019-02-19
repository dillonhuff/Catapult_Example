#include <ac_channel.h>

#pragma design top
void dct(ac_channel<int>* in, ac_channel<int>* out) {

  int sum = 0;
  for (int i = 0; i < 4; i++) {
    sum += in->read();
  }

  out->write(sum);
  
// #pragma design top
// void dct(int* in, int* out) {

//   #pragma hls_pipeline_init_interval 1
//   for (int i = 0; i < 50; i++) {
//     out[i] = in[i] + 12;
//   }

  // int val = in.read();
  // out.write(val + 7);
  // for (int i = 0; i < 100; i++) {
  //   int val = in.read();
  //   int res = val + 7;
  //   out.write(res);
  // }
}
