program greatest
    implicit none 

    integer :: i, bigger
    integer, dimension(7) :: arr = [0, 20, 1, 0, 16, 1, 10]
    
    bigger = arr(1)
    do i = 2, 7
        if (arr(i) > bigger) then
            bigger = arr(i)
        end if
    end do

    print *, "Maximum value:", bigger
end program greatest
