clc
function determinant=take_detm(A)
    order=sqrt(length(A))
    //disp(order)
    if order==2 then 
        determinant=A(1,1)*A(2,2)-A(1,2)*A(2,1);
             
    else
            
        s=0
        first_row_removed=A//taking a backup of A and then...
        first_row_removed(1,:)=[]//...removing the 1st row
        disp(first_row_removed)
        for i=1:order
            column_i_removed=first_row_removed
            column_i_removed(:,i)=[]
            disp(column_i_removed)
            s=s+((-1)^(i+1))*A(1,i)*take_detm(column_i_removed); //recursive call
            //Ai=A(2:order,[1:i-1 i+1:order])//deleting 1st row and  column i Eg. 
            //[1:3 5:8]
// ans  =
//   1.   2.   3.   5.   6.   7.   8.

            //s=s+((-1)^(i+1))*A(1,i)*take_detm(Ai); //recursive call
            //s=s+((-1)^(i+1))*A(1,i)*take_detm(A(:,i)=[]);//deleting 1st row and a column in the recursive call
        end
        determinant=s

    end
endfunction
matr=input("Enter a matrix")
printf (string(take_detm(matr)))
//[0 4 0 -3;1 1 5 2;1 -2 0 6;3 0 0 1]
//A=[1 2 3 4; 5 6 7 8; 9 10 11 12; 13 14 15 16]
// A  = 
//
//   1.    2.    3.    4. 
//   5.    6.    7.    8. 
//   9.    10.   11.   12.
//   13.   14.   15.   16.
//
//
//--> A1=(2:4,1)
//
//Can not assign multiple value in a single variable
//
//--> A1=[];
//
//--> A1=(2:4,1)
//
//Can not assign multiple value in a single variable
//
//--> A1=A(2:4,1)
// A1  = 
//
//   5.
//   9.
//   13.
//
//
//--> A2=A(2:4,3:4)
// A2  = 
//
//   7.    8. 
//   11.   12.
//   15.   16.
//
//
//--> B=[A1,A2]
// B  = 
//
//   5.    7.    8. 
//   9.    11.   12.
//   13.   15.   16.
//
//
//--> A1+A2
//
//Inconsistent row/column dimensions.
//
