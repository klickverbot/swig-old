%module(directors="1") director_enum

%feature("director") Foo;

%inline %{
  class A;

  enum Hello {
    hi, hello
  };

  class Foo {
  public:
    virtual ~Foo() {}
    virtual Hello say_hi(Hello h){ return h;}
    virtual Hello say_hello(Hello){ return hello;}

    virtual Hello say_hi(A *a){ return hi;}
  };

  
%}
%feature("director");

%inline %{
enum FType{ SA = -1, NA=0, EA=1};

struct A{
    A(const double a, const double b, const FType c)
    {}    

    virtual ~A() {}
    
    virtual int f(int i=0) {return i;}
};

struct B : public A{
    B(const double a, const double b, const FType c)
        : A(a, b, c) 
    {}    
};
%}


%inline %{
struct A2{
    A2(const FType c = NA) {}    

    virtual ~A2() {}
    
    virtual int f(int i=0) {return i;}
};

struct B2 : public A2{
    B2(const FType c) : A2(c) {}
};

 
%}
