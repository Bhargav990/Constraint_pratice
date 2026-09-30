/*class top;
  int val,sum,temp;
  int a=1;
  bit [8:0]z;
  int value[];
  randc int unsigned n;*/
/*


.Write a constraint to generate 10 random numbers in an array. The range of 110 
each element should be between 10 to 30 111 
Write a code to generate 10 elements in a queue with the following conditions 112 
queue[0] = array[0]  - 0  113 
queue[1] = array[1] - array[0] and so on
class test;
rand int a[];
rand bit q[$];
constraint a_size {a.size ==10;}
constraint t{q.size == a.size;}

constraint limit{foreach(a[i])
			a[i] inside {[10:30]}; }

constraint t1{foreach(a[i])
		if(i==0)
		q[i]==a[i]-0;
		else
		q[i]==a[i]-a[i-1];}

function void post_randomize();
	$display("%p ,%p",a,q);
endfunction
endclass

module top;

	test z;
	initial 
		begin
			z = new();
			z.randomize();
		end
endmodule

//conflict happening not got op


*/
/*module top;
	class s;
	rand int a[];

	constraint c1 {a.size ==10;}
	constraint c2 {foreach(a[i])
			if(i%2==0)
			a[i]==0;
	else 
		a[i]==1;}

	function void post_randomize();
		$display("%p",a);
	endfunction
	endclass
	s s1;	
	initial begin
	s1= new();
	s1.randomize();
	end
endmodule*/


/*class z;
	rand int a[];
	constraint c1{a.size==10;}
	constraint c2{foreach(a[i])
			if(i<5)
			a[i]==i+1;
		else 
			a[i]==10-i;}
	endclass
module top;
	z z1;
	initial begin
	z1 = new();
	z1.randomize();
	$display("%p",z1.a);
	end 
endmodule*/

/*class v;
	rand int a[];
	constraint c1{a.size() inside {[10:20]};}
	constraint c2{foreach (a[i])
			if(i>=2)
			(a[i]+a[i-1]+a[i-2])%2==0;}
	
	endclass
	module top;
		v v1;
		initial 
			begin
				v1 = new();
				v1.randomize();
				$display("%p",v1.a);
			end
	endmodule*/

/*class s;
	rand int a[];
	constraint c1 {a.size() inside {[15:20]};}
	constraint c2{foreach (a[i])
			if(i%2==0)
			a[i]==1;
			else 
			a[i]==0;
			}
	endclass
	module top;
		s s1;
		initial begin
			s1 = new();
			s1.randomize();
			$display("%p",s1.a);			
			end
		endmodule*/
		
/*class trans ;
	rand bit [3:0]a;
	int[3:0] q[$:4];
	
	constraint c1{foreach(a[i])
			a!=q[i];}
	function void pre_randomize();
		if(q.size>=5)
		q.pop_back();
	endfunction
	function void post_randomize();
		q.push_front(a);
	endfunction
	endclass
	module top;
	trans s1;
	initial begin
		s1 = new();
		s1.randomize();
		$display("%p",s1.a);
		end
	endmodule
		
	
*/




//010101010

/*class cons;
	rand bit a[];
	
	
	constraint pat{foreach(a[i])
		if(i%2==0)
		a[i]==1;
		else
		a[i]==0;}
	constraint s {a.size == 10;}
	endclass
	module top;
	cons c;
	initial begin
	c = new();
	c.randomize();
	$display("%p",c.a);
	end 
endmodule
			

*/

//00110011

/*class cons;
	rand bit a[];
	
	
	constraint pat{foreach(a[i])
		if((i%4==0) ||(i%4==1))
		a[i]==0;
		else
		a[i]==1;}
	constraint s {a.size == 10;}
	endclass
	module top;
	cons c;
	initial begin
	c = new();
	repeat(10);
	c.randomize();
	$display("%p",c.a);
	end 
endmodule*/


//0103050

/*class cons;
	rand bit[7:0] a[];
	
	
	constraint pat{foreach(a[i])
		if(i%2==0)
		a[i]==0;
		else
		a[i]==i;}
	constraint s {a.size == 10;}
	endclass
	module top;
	cons c;
	initial begin
	c = new();
	repeat(10);
	c.randomize();
	$display("%p",c.a);
	end 
endmodule*/


//020406

/*class cons;
	rand int a[];
	
	
	constraint pat{foreach(a[i])
		if(i%2==0)
		a[i]==0;
		else
		a[i]==i+1;}
	constraint s {a.size == 10;}
	endclass
	module top;
	cons c;
	initial begin
	c = new();
	repeat(10);
	c.randomize();
	$display("%p",c.a);
	end 
endmodule*/



//-5  10 -15 20

/*module top;
	class cons;
	rand int a[];
	
	constraint a_size{a.size ==10;}
	constraint cal{foreach(a[i])
		if(i%2==0)
		a[i]== (-5)*(i+1);
		else 
		a[i]==(5)*(i+1);}
	function void post_randomize();
		$display("%p",a);
	endfunction

	
	endclass
	
	initial begin
		cons c;
		c = new ();
		c.randomize();
	end
 endmodule*/



	
//rand nimber between 1.35 to 2.38


/*class ppt;

	rand int a;
	real b;
	
	constraint rad{a inside {[135:238]};}
	
	function void post_randomize();
		b = a/100.0;
	$display("the values are %p",a);
endfunction
endclass

module top;
	ppt d;
	initial begin
	d = new();
	repeat(5) begin
	d.randomize();
	end

	end
endmodule */


// rand even number betweeen 50to 100

/*class even;
	rand int a[];
	
	constraint a_size{a.size == 10;}
	
	constraint c {foreach(a[i]){
				a[i] inside {[50:100]};
				a[i]%2==0;}}
		
	function void post_randomize();
		$display("the values are %p",a);
	endfunction

	endclass

	module top;
		even z;
		initial begin
		z = new();
		z.randomize();
		end
endmodule*/



// even location odd number odd loaction even number 


/*class y;
	rand int a[];
		
	constraint a_size{a.size == 10;}
		
	constraint a_values {foreach(a[i])
				if(i%2==1)
				a[i]==0;
				else 
				a[i]==1;}
	
	endclass
	
	module top;
	y y1;
	initial begin
		y1 = new();
		y1.randomize();
		$display("%p",y1.a);
	end
	
endmodule*/


/*class y;
	rand int a[];
		
	constraint a_size{a.size == 10;}
		
	constraint a_values {foreach(a[i]){
				if(i%2==1)
				a[i]%2==0;
				else 
				a[i]%2==1;
				a[i] inside {[0:50]};}}
	
	endclass
	
	module top;
	y y1;
	initial begin
		y1 = new();
		y1.randomize();
		$display("%p",y1.a);
	end
	
endmodule
*/



// number of 1 should be 16 in a 32 bit number 

/*class tb;
	rand bit [31:0] a;

	constraint value{$countones(a)==16;}
		
	constraint rule {foreach(a[i])
			if(i>0 && a[i]==1)
			a[i] != a[i-1];}
	
	function void post_randomize();
		$display("%b",a);
	endfunction

endclass

	module top;
		tb t;
		initial begin
		t = new();
		t.randomize();
		end
	endmodule*/

/*class tb;
  rand bit [31:0] a;
  rand int start_pos;   // starting bit position of the 16 consecutive 1s

  // 16 ones can start anywhere from bit 0 to bit 16
  // (start_pos=16 means bits [16:31] are the ones - the last valid position)
  constraint c_start { start_pos inside {[0:16]}; }

  // Build 'a' as a 16-bit-wide block of 1s, shifted to start_pos
  constraint c_val { a == (32'h0000_FFFF << start_pos); }

  function void post_randomize();
    $display("a = %b  (start_pos = %0d)", a, start_pos);
  endfunction
endclass

module top;
  tb t;
  initial begin
    t = new();
    repeat (5) begin
      t.randomize();
    end
  end
endmodule
*/


//fact of first 10 numbers
/*class  facto;
	rand bit [31:0] a[];
	
	constraint val{a.size()==10;}
	
	function automatic int fact(input i);
		if(i<=1)
			return  1;
		else 
			return  i*fact(i-1);
	endfunction

 



	function void post_randomize();
		foreach(a[i])
		a[i]=fact(i);
	
		foreach(a[i])
		$display("a[%0d]=%d",i,a[i]);
	endfunction

endclass
	module top;
		facto f;
		initial begin
			f = new();
			f.randomize();
		end
	endmodule

	*/
/*module top;

function automatic int fact(input int i);
    if (i <= 1)
        return 1;
    else
        return i * fact(i-1);
endfunction

initial begin
    for (int i = 0; i < 10; i++)
        $display("fact(%0d) = %0d", i, fact(i));
end

endmodule*/

/*class facto;

    rand int a[];

    constraint c {
        a.size() == 10;
    }

    function automatic int fact(input int n);
        if (n <= 1)
            return 1;
        else
            return n * fact(n-1);
    endfunction

    function void post_randomize();

        foreach(a[i])
            a[i] = fact(i);

        foreach(a[i])
            $display("a[%0d] = %0d", i, a[i]);

    endfunction

endclass

module top;

    facto f;

    initial begin
        f = new();
        assert(f.randomize());
    end

endmodule*/


//randomizing only 20th bit


/*class ba;
	rand bit [31:0] b;
	
constraint c1{	foreach(b[i])
		if(i == 0)
		b[i] inside {[0:1]};
		else b[i] == 0;}

	function void post_randomize();
		$display("%b",b);
	endfunction
endclass

module top;
	ba w;
	initial begin
		w = new();
		repeat(10)
		w.randomize();
		end
	endmodule*/



//3consecutive number must be even sum

/*class z;
	rand int a[];
	constraint c2{foreach(a[i])
			a[i] inside {[50:100]};}
	constraint c1{a.size ==12;}
	constraint s{foreach(a[i])
				if(i>1)
				(a[i]+a[i-1]+a[i-2]) %2==0;}
	function void post_randomize();
		foreach(a[i])
		$display("%0d",i,a[i]);
	endfunction
	
endclass

	module top;
		z  z1;
		initial begin
			z1 = new();
			z1.randomize();
		end
	endmodule*/




//random 1100 or 0011

/*class trans;
	rand bit [15:0] z;
		
	constraint data{foreach(z[i])
			if(i<15)
		if(i%2==0)
			z[i+1] ==z[i];
		else 
			z[i]!=z[i+1];
		}
	function void post_randomize();
		$display("%b",z);
	endfunction 
	
endclass
	module top;
		trans t;
		initial begin
			t = new();
			repeat(5)
			t.randomize();
		end
endmodule*/



/*class abc;
	rand bit [3:0]a;
		int queue[$:7];
	
	constraint a_size{!(a inside {queue}); }

	function void post_randomize();
		queue.push_front(a);
			$display("value = %0d",a);
		if(queue.size==6)
			queue.pop_back();
			$display("previous occurence =%p",queue);
	endfunction 

endclass

module top;
	initial begin
		abc z;
		z = new();
		repeat(5) begin
			z.randomize();
		end
end
endmodule*/



/*module top;
	class micro;
		typedef struct{bit [3:0]addr;
				bit[7:0]data;
				bit write;}packet;
	
	rand packet pkt;
	
	constraint
	 c1{pkt.data inside {[5:10]};}


	function void post_randomize();
		$display("%0d",pkt.data);
	endfunction 

endclass

	initial begin
		micro mic;
			mic = new();
$display("rand_mode of pkt.data = %0d", mic.pkt.rand_mode());
			mic.randomize();
		end
endmodule*/
//////////////////////////////////////////////////		
//Write a constraint to generate the random values 25,27,30,36,40,45 without using set membership
	class trans;
  rand int a[];
  constraint z{a.size==7;unique{a};}
  constraint x{foreach(a[i]) a[i]>24;foreach(a[i]) a[i]<46;}
  constraint y{foreach(a[i]) a[i]%5==0||a[i]%9==0;}
  
  function void post_randomize();
    a.sort;
    $display("random value is %0p",a);
  endfunction
endclass
trans h1;

module test;
  initial
    begin
      h1=new();
      //  repeat(7)
        assert(h1.randomize);
    end
endmodule

////////////////////////////////////////////////////////
//In the below transaction class definition, write your own logic in the space provided for you to meet following requirements:a) The dynamic array should contain 20 ittems b) Out of 20 items,the values of 3 items should be equal to 5 at random positions c) The values of 5 items must be 10 at random positions d) The values of 8 items must be 15 and the remaining 4 items must be 20
class trans;
  rand bit[7:0]a[];
constraint c1 {a.size==20;}
constraint c2 {a.sum with (int'(item==5))==3;
    a.sum with (int'(item==10))==5;
    a.sum with (int'(item==15))==8;
    a.sum with (int'(item==20))==4;}
endclass
trans h;
module test;
initial
  begin
    h=new;
    h.randomize;
    $display(" The values generated are: %0p",h);
  end
endmodule

///////////////////////////////////////////////////////
//Randomize an Array with Dependent Constraints ;Randomize an array data[8] of 8-bit values (bit [7:0]) such that:
//a) If an element is a prime number, the next element must be even. 
//b) The sum of all elements must be between 80 and 100.
//c) The sum of elements at even indices must be divisible by 5.
//d) No two adjacent elements can be the same.	
class array;
  rand bit [7:0] data[];
  constraint c0 { data.size==10;}
  constraint c1 { foreach (data[i])
      {
      data[i]!=0;
      if(i<9)
      {
      if( data[i]%2==1)

      (data[i+1]%2==0); }
      }
      }
  constraint c2 { foreach (data[i])
      (data.sum inside {[80:100]});}
  constraint c3 { foreach (data[i])    
      if(i %2==0)
      (data.sum %5==0);}
  constraint c4 { foreach (data[i])
      if(i>0)    
      data[i]!=data[i-1];}
endclass
array a;
module test;
initial
  begin
    a=new;
    a.randomize; 
    $display("%0p",a.data);
  end
endmodule


///////////////////////////////////////////////
//Write a snippet of code for Addition of elements of two array using function passing arrays through pass by reference method and analyze the output
module test;
  int a[4],b[4];
  int sum[4];
  function add (const ref int a[4], b[4],ref int sum[4]);
    foreach (a[i])
      sum[i]=a[i] + b[i];
  endfunction
  initial
    begin
      foreach (a[i])
        begin
          a[i]= $urandom%50;
          b[i]= $urandom%20;
        end
      add (a, b, sum);
      $display (a);
      $display (b);
      $display (sum);
    end
endmodule

/////////////////////////////////////////////////
//Write SV Snippet to declare three arrays array1[16 bit], array2[8 bit], array 3[8 bit].Use for, foreach to assign index values to all the three arrays and display the results and analyze the output in each case
module test;
    int array1[0:15], array2[0:7], array3[7:0];
      initial
        begin
    for(int i = 0; i<$size(array1) ; i++)
        array1[i] = i;
        $display("array1",array1);
    foreach (array2[i])
        array2[i] = i;
        $display("array2",array2);
    foreach (array3[i])
        array3[i] = i;
        $display("array3",array3);
        end
endmodule


/////////////////////////////////////////////////////////////////////////////////////////////
//Write a constraint with array size 5 to 10 values & the array values should be in ascending/descending order without using sort method & post randomization
class even;
  rand bit [7:0]b[];

    constraint size {b.size() inside {[5:10]};}
    constraint odd_even {
             foreach(b[i])
          if(i%2==0)
          b[i]%2!=0;
          else
          b[i]%2==0;}
    constraint abc {
        foreach(b[i])
        foreach (b[j])
        if (j<i)
          b[i]>b[j];}
          
endclass
  
module test;
  even e;
  initial
    begin
      e=new();
      repeat(10)
      begin
        assert(e.randomize());
        $display("%p",e.b);
      end
    end
endmodule


//////////////////////////////////////////
Randomize a 32-bit signal such that if the most significant byte is a multiple of 5, then the least significant byte must be a multiple of 3, and if MSB is divisible by 2, then the middle byte i.e, [15:8] must be a prime number greater than 10, while ensuring that the sum of x[23:16] and x[7:0] is equal to the sum of x[31:24] and x[15:8].
//
class test;
    rand bit [31:0] x;
constraint aa{if(x[31:24] % 5 ==0) x[7:0] % 3 ==0;}
constraint abc{if (x[31:24]%2==0)
        x[15:8]%2==1 && x[15:8] >10;
        x[15:8]+x[31:24] == x[23:16] + x[7:0];}

function void post_randomize();
    $display(" x[31:24] is %0d",x[31:24]);
    $display(" x[25:16] is %0d",x[25:16]);
    $display(" x[15:8] is %0d",x[15:8]);
    $display(" x[7:0] is %0d",x[7:0]);
    $display("sum of the each x[15:8]+x[31:24] & x[23:16] + x[7:0] is %0d %0d",x[15:8]+x[31:24],x[23:16] + x[7:0]);
endfunction
endclass

module top;
    test h1;
    initial
    begin
    h1=new;
    h1.randomize;
    end
endmodule


///////////////////////////////////////////////////////////////
/*Randomize an array data[8] of structs, where each struct contains a[7:0], b[7:0], and c[7:0], such that: 
(a) If a is a even number, then b must be a multiple of a.
(b) If a is divisible by 3, then c must be divisible by 5.
(c) The sum of a + b + c for all structs must be between 800 and 1000, and the sum of a for all structs must be divisible by 7.(d) If b is greater than 50, then c must be less than 50.
*/

class test;

  typedef struct {
    rand bit [7:0] a;
    rand bit [7:0] b;
    rand bit [7:0] c;
  } my_struct;
rand my_struct data[8];

constraint a1 {foreach(data[i])
        {
        if(data[i].a % 2 ==0)
        {
        data[i].b % data[i].a==0;
        }
        }
    }
constraint a2 {foreach(data[i])
        if(data[i].a % 3 ==0)
        data[i].c % 5==0;
        }

constraint a3 {foreach(data[i])
        (data[i].a+data[i].b+data[i].c) inside {[80:300]};
        }
constraint a4 {foreach(data[i])
        if(data[i].b>50)
        data[i].c<50;
        }    
constraint a5{foreach(data[i])
             data.sum() with ((item.a)) % 7 == 0;}
        
endclass

module top;
    test h1;
    initial
    begin
    h1=new;
    h1.randomize;
    foreach(h1.data[i])
    begin
    $display("%p",h1.data[i]);
    end
    end
endmodule

///////////////////////////////////////////////////////////////////
/*Write a piece of code to declare three dynamic arrays to hold array1 and array 2 are of 6 bit value and array3 is of 16 bit value & define the constraints for the following 
a) The size of all the dynamic arrays should be same and between 10& 20 
b) Each element in the third array should be the product of the corresponding elements of the 1st and 2nd array 
c) The sum of all the even elements of the third array should be equal to 100 and sum of all the odd elements of the third array should be equal to 100.*/
class array;
  rand bit[5:0]array1[];
  rand bit[5:0]array2[];
  rand bit[15:0]array3[];

constraint c1 {  array1.size inside {[10:20]};
    array2.size==array3.size;
    array3.size==array1.size;}

constraint c2 { foreach (array3[i])
    array3[i]==array1[i]*array2[i];}

constraint c3 { array3.sum with ((item%2==0)*item)==100;
    array3.sum with ((item%2==1)*item)==100;}

constraint c4 { foreach(array1[i])
    array1[i]!=0;}

constraint c5 { foreach(array2[i])
    array2[i]!=0;}
      
constraint c6 { foreach(array3[i])
    array3[i]!=0;}
endclass
array a;
module test;
initial
begin
  a=new;
  a.randomize;
  $display("%p",a);
end
endmodule


 /////////////////////////////////////////////////
//Write an assertion to check that FIFO full is asserted when fifo count > 7, Disable this property if reset.
//
module assertion;
  bit clk,reset,fifo_full;
  bit [3:0]fifo_count;
property signal;
  @(posedge clk)disable iff(reset)
  (fifo_count > 7) |-> fifo_full;
endproperty
A:assert property(signal);
endmodule


///////////////////////////////////////////////////////////////////////////////////////////////

/*Write a constraint to generate the matrix from the conditions given below:
(1)variable - rand bit [7:0] a[3][3];
(2)The values of row should be +4 of previous value in the row
(3)The values of column should be +2 of previous value in the column
*/

class top;
  rand bit [7:0] a[3][3];
  constraint ab{foreach(a[i,j]) if(i>0) a[i][j]==a[i-1][j]+2;}
  constraint ab1{foreach(a[i,j]) if(j>0) a[i][j]==a[i][j-1]+4;}
endclass
top t;
module test;
initial begin
  t=new;
  t.randomize;
  $display("%p",t);
  end
endmodule
//////////////////////////////////////////////////////////////////////////
class test;
rand int a;
constraint a1{a inside{[5:45]}; a dist{10:=1};}
covergroup cg;
option.per_instance=1;
A:coverpoint a{bins b1={10};
        bins b2={[25:30]};
        bins b3={[31:35]};
        bins b4={[36:40]};
        bins b5={[41:45]};}
endgroup

function new;
    cg=new;
endfunction

endclass
test t;
module t;
initial
begin
t=new;
repeat(10)
begin
assert(t.randomize);
t.cg.sample;
$display("The value of a=",t.a);
$display("The coverage is=",t.cg.get_inst_coverage);
end
end
endmodule

//////////////////////////////////////////////////////////////

class constrainttt;
  rand bit [7:0] arr1[];
  rand bit [7:0] arr2[];

  constraint a1 { arr1.size==10;}
  constraint a2 {arr2.size==10;}
  constraint c1 {foreach (arr1[i])
        arr1[i] inside {[1:10]};}

  constraint c2 {foreach (arr2[i])
        arr2[i] inside {[1:10]};}

  constraint c3 {foreach (arr1[i])
        arr1[i]%2==0;}

  constraint c4 {foreach (arr2[i])
        arr2[i]%2==1;}
function int fact(bit[7:0]a);
  if(a==0)
    fact=1;
  else
    fact=a*fact(a-1);
endfunction 
endclass

constrainttt cons;

module test;
  initial
    begin      
cons=new;
      cons.randomize();
      foreach(cons.arr1[i])
      begin
      $display(cons.arr1[i],cons.fact(cons.arr1[i]));
      end
      foreach(cons.arr2[i])
      begin
      $display(cons.arr2[i],cons.fact(cons.arr2[i]));
      end      
    end
endmodule

/////////////////////////////////////////////////////////////////////////////////////
module asertion;
  bit clk,fifo_empty,read,read_pointer;
property signal;
  @(posedge clk)
  (fifo_empty===1) && (read===1) && (fifo_write===0) |-> $stable(read_pointer);
endproperty
A:assert property(signal);
endmodule


////////////////////////////////////////////////////////////////////
class test;
    rand int a[10],b[10];
constraint a1 {foreach(a[i])
        {
        a[i] inside {[1:50]};
        b[i] inside {[1:50]};
        a[i]>b[i];
        
        b.sum with (int'(item % 2 == 1)) >= 3;
        a.sum inside {[200:350]};
    }
        }
constraint a2{unique{a};
        unique{b};    
        }

function void post_randomize();
    $display("a=",a);
    $display("b=",b);
    $display("a.sum=",a.sum);
endfunction
endclass

test h1;


module top;
    initial
    begin
    h1=new;
    h1.randomize;
    end
endmodule


/////////////////////////////////////////////////////////////////////////////////

module assertion;
  bit clk,reset,fifo_empty,fifo_count;
property signal;
  @(posedge clk) disable iff(reset)
  (!fifo_count) |-> fifo_empty;
endproperty
A:assert property(signal);
endmodule



class fibonacci;
    rand bit[5:0]data[];
    constraint ab {data.size ==10;
            foreach(data[i])
            {
            if(i<=1)
            data[i]==i;
            else
            data[i]==data[i-1]+data[i-2];
            } }
endclass
fibonacci h1;     
module test;
    initial
    begin
    h1=new;
    h1.randomize;
    foreach(h1.data[i])
    $display(h1.data[i]);
    end
endmodule


  property p1();
       @(posedge clk) $rose(B) |=> (!A throughout C) ##1 A ;
   endproperty
   
   A_C: assert property(p1);

//////////////////////////////////////////////////////////////////
class test;
    rand enum {DATA,CONTROL,ERROR}packet_type;
    rand bit [7:0] packet_length;
    rand bit [15:0] checksum;
    rand bit validity;

covergroup packet_cov;
  coverpoint packet_type {
    bins data = {DATA};
    bins control = {CONTROL};
    bins error = {ERROR};
  }
  coverpoint packet_length {
    bins len_0_to_127 = {[0:127]}; 
    bins len_128_to_255 = {[128:255]};
  }
  coverpoint validity {
    bins valid = {1};
    bins invalid = {0};
  }
endgroup
         function new();
          packet_cov = new();
         endfunction:new
endclass

test h1;
    
module top;
    initial
        begin
    h1=new;
    repeat(10)
    begin    
    h1.randomize;
    h1.packet_cov.sample;
    $display("total coverage is %0d ",h1.packet_cov.get_coverage);
    end
        end
endmodule

////////////////////////////////////////////////////////////
module top;
class cons;
  rand int unsigned a[3][3];
constraint c1 {foreach (a[i,j]) 
    a[i][j] inside {[10:20]};}
 constraint diagonal_equal {
    a[0][0] == a[1][1];
    a[1][1] == a[2][2];
  }
//or
constraint c2 {foreach(a[i,j])
        if(i==j)
        a[i][j]==a[0][0];}
function void display();
    foreach (a[i]) 
      begin
       foreach(a[i][j]) 
         begin
          $write("  %d  ",a[i][j]);
         end
          $display("\n");
     end
        $display("====================");
endfunction
endclass

cons s;

initial
  begin
  s=new();
  s.randomize();
  s.display;
end
endmodule

/////////////////////////////////////////////////////////

class top;
  rand bit [7:0] a[3][3];
  constraint ab{foreach(a[i,j]) if(i>0) a[i][j]==a[i-1][j]+2;}
  constraint ab1{foreach(a[i,j]) if(j>0) a[i][j]==a[i][j-1]+4;}
endclass
top t;
module test;
initial begin
  t=new;
  t.randomize;
  $display("%p",t);
  end
endmodule


/////////////////////////////////////////////////////
class constrainttt;
  rand bit [7:0] arr1[];
  rand bit [7:0] arr2[];

  constraint a1 { arr1.size==10;}
  constraint a2 {arr2.size==10;}
  constraint c1 {foreach (arr1[i])
        arr1[i] inside {[1:10]};}

  constraint c2 {foreach (arr2[i])
        arr2[i] inside {[1:10]};}

  constraint c3 {foreach (arr1[i])
        arr1[i]%2==0;}

  constraint c4 {foreach (arr2[i])
        arr2[i]%2==1;}
function int fact(bit[7:0]a);
  if(a==0)
    fact=1;
  else
    fact=a*fact(a-1);
endfunction 
endclass

constrainttt cons;

module test;
  initial
    begin      
cons=new;
      cons.randomize();
      foreach(cons.arr1[i])
      begin
      $display(cons.arr1[i],cons.fact(cons.arr1[i]));
      end
      foreach(cons.arr2[i])
      begin
      $display(cons.arr2[i],cons.fact(cons.arr2[i]));
      end      
    end
endmodule

/////////////////////////////////////////////////////
class test;
rand int a;
constraint a1{a inside{[5:45]}; a dist{10:=1};}
covergroup cg;
option.per_instance=1;
A:coverpoint a{bins b1={10};
        bins b2={[25:30]};
        bins b3={[31:35]};
        bins b4={[36:40]};
        bins b5={[41:45]};}
endgroup

function new;
    cg=new;
endfunction

endclass
test t;
module t;
initial
begin
t=new;
repeat(10)
begin
assert(t.randomize);
t.cg.sample;
$display("The value of a=",t.a);
$display("The coverage is=",t.cg.get_inst_coverage);
end
end
endmodule


/////////////////////////////////////////////////////

module asertion;
  bit clk,fifo_empty,read,read_pointer;
property signal;
  @(posedge clk)
  (fifo_empty===1) && (read===1) && (fifo_write===0) |-> $stable(read_pointer);
endproperty
A:assert property(signal);
endmodule


class test;
    rand int a[10],b[10];
constraint a1 {foreach(a[i])
        {
        a[i] inside {[1:50]};
        b[i] inside {[1:50]};
        a[i]>b[i];
        
        b.sum with (int'(item % 2 == 1)) >= 3;
        a.sum inside {[200:350]};
    }
        }
constraint a2{unique{a};
        unique{b};    
        }

function void post_randomize();
    $display("a=",a);
    $display("b=",b);
    $display("a.sum=",a.sum);
endfunction
endclass

test h1;


module top;
    initial
    begin
    h1=new;
    h1.randomize;
    end
endmodule:browse confirm wa

