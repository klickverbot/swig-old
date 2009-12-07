/// Tests correct handling of a few INPUT/OUTPUT/INOUT-typemapped functions.
module li_typemaps_runme;

import li_typemaps;

void main() {
  // Check double INPUT typemaps
  if (li_typemaps.in_double(22.22) != 22.22) exit_test("in_double");
  if (li_typemaps.inr_double(22.22) != 22.22) exit_test("inr_double");

  // Check double OUTPUT typemaps
  {
    double var = 44.44;
    li_typemaps.out_double(22.22, var);
    if (var != 22.22) exit_test("out_double");
  }
  {
    double var = 44.44;
    li_typemaps.outr_double(22.22, var);
    if (var != 22.22) exit_test("outr_double");
  }

  // Check double INOUT typemaps
  {
    double var = 44.44;
    li_typemaps.inout_double(var);
    if (var != 44.44) exit_test("inout_double");
  }
  {
    double var = 44.44;
    li_typemaps.inoutr_double(var);
    if (var != 44.44) exit_test("inoutr_double");
  }

  // Check unsigned long long INPUT typemaps
  if (li_typemaps.in_ulonglong(20) != 20) exit_test("in_ulonglong");
  if (li_typemaps.inr_ulonglong(20) != 20) exit_test("inr_ulonglong");

  // Check unsigned long long OUTPUT typemaps
  {
    ulong var = 40;
    li_typemaps.out_ulonglong(20, var);
    if (var != 20) exit_test("out_ulonglong");
  }
  {
    ulong var = 40;
    li_typemaps.outr_ulonglong(20, var);
    if (var != 20) exit_test("outr_ulonglong");
  }

  // Check unsigned long long INOUT typemaps
  {
    ulong var = 40;
    li_typemaps.inout_ulonglong(var);
    if (var != 40) exit_test("inout_ulonglong");
  }
  {
    ulong var = 40;
    li_typemaps.inoutr_ulonglong(var);
    if (var != 40) exit_test("inoutr_ulonglong");
  }

  // Check unsigned bool INPUT typemaps
  if (li_typemaps.in_bool(false) != false) exit_test("in_bool");
  if (li_typemaps.inr_bool(false) != false) exit_test("inr_bool");

  // Check unsigned bool OUTPUT typemaps
  {
    bool var = false;
    li_typemaps.out_bool(true, var);
    if (var != true) exit_test("out_bool");
  }
  {
    bool var = false;
    li_typemaps.outr_bool(true, var);
    if (var != true) exit_test("outr_bool");
  }

  // Check unsigned bool INOUT typemaps
  {
    bool var = false;
    li_typemaps.inout_bool(var);
    if (var != false) exit_test("inout_bool");
  }
  {
    bool var = false;
    li_typemaps.inoutr_bool(var);
    if (var != false) exit_test("inoutr_bool");
  }
}

void exit_test(char[] funcName) {
  throw new Exception("Test FAILED for function " ~ funcName);
}
