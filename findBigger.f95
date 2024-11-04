program findBigger
    implicit none 

    ! Variables declaration
    integer :: arr(5), i, bigger
    real :: rand

    ! Populate array with numbers
    do i = 1, 5
        ! Get random values
        call random_number(rand)
        arr(i) = int(rand * 100)
    end do

    ! Print the array
    do i = 1, 5
        Print *, arr(i)
    end do

    ! Find the max value
    bigger = arr(1)
    do i = 2, 5
        if (arr(i) > bigger) then
            bigger = arr(i)
        end if
    end do

    ! Print max value
    print *, "O maior valor é:", bigger
end program findBigger
