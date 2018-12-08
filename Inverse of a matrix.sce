//Inverse of an N X N Matrix
clc
matr=input("Enter a matrix")
order=sqrt(length(matr))
function determinant=take_detm(A)
    order=sqrt(length(A))
    //disp(order)
    if order==2 then 
        determinant=A(1,1)*A(2,2)-A(1,2)*A(2,1);
             
    else
            
        s=0
        first_row_removed=A//taking a backup of A and then...
        first_row_removed(1,:)=[]//...removing the 1st row
        //disp(first_row_removed)
        for i=1:order
            column_i_removed=first_row_removed
            column_i_removed(:,i)=[]
            //disp(column_i_removed)
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
function tM=takeTranspose(B)
        tM=B
        //disp(tM)
    for i=[1:order]
        for j=[i+1:order]
        temp=tM(i,j)
        tM(i,j)=tM(j,i)
        tM(j,i)=temp
        end
    end
    //return (tM)
endfunction
cofactor=[]
//disp(cofactor)
for i=[1:order]
    //disp (i)
    for j=[1:order]
        //disp (j)
        cofactor(i,j)=10*i+j
        cofactor(i,j)=(-1)^(i+j)*take_detm(matr([1:i-1 i+1:order],[1:j-1 j+1:order]))
    end    
end
//disp(cofactor)
adjoint=takeTranspose(cofactor)
inverse=adjoint/take_detm(matr)
disp(inverse)
//

