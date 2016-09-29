struct ComplexNo {
  1: i32 real,
  2: i32 imag,
}

service ComplexNoService {
  ComplexNo create(1: i32 real, 2: i32 image);
  ComplexNo add(1: ComplexNo first, 2: ComplexNo second);
  ComplexNo subtract(1: ComplexNo first, 2:ComplexNo second);
}
