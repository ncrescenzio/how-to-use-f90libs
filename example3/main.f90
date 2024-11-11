program main

   use KindDeclaration
   use globals
   use Norms
   use SimpleMatrix

   use, intrinsic :: iso_fortran_env, only : &
      stdin  => input_unit, &
      stdout => output_unit, &
      stderr => error_unit

   implicit none

   real(kind=double) :: resnorm
   type(euc_norm) :: normtype
   integer :: nvec, stato, i, nrows
   real(kind=double), dimension(:), allocatable :: vec
   type(diagmat) :: dmatrix

   nvec = 3
   allocate(vec(nvec),stat=stato)
   if (stato.ne.0) STOP "errore allocazione"

   vec(1) = 1.0d0
   vec(2) = 2.0d0
   vec(3) = 5.0d0

   resnorm = normtype%eval_norm(nvec,vec)

   write(*,*) "NORM: ", resnorm

   nrows = 10

   call dmatrix%init(stderr,nrows)

   do i = 1,nrows
      dmatrix%diagonal(i) = two*i
   enddo


   call dmatrix%write(stdout)

end program main
