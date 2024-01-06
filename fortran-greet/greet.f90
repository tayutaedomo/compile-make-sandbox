module greet_module
    implicit none
    contains

    subroutine greet(name)
        character(len=*), intent(in) :: name
        print *, 'Hello ', name, '!'
    end subroutine greet
end module greet_module
