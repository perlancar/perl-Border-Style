package Border::Style;

# DATE
# VERSION

1;
# ABSTRACT: Border style structure

=head1 DESCRIPTION

This module specifies a structure for border styles. The distribution also comes
with utility routines and roles for managing border styles in applications.

=head1 SPECIFICATION

Border style is a L<DefHash> containing these keys: C<v>, C<name>, C<summary>,
C<utf8> (bool, set to true to indicate that characters are Unicode characters in
UTF8), C<chars> (array). Format for the characters in C<chars>:

 [
   [A, b, C, D],  # 0
   [E, F, G],     # 1
   [H, i, J, K],  # 2
   [L, M, N],     # 3
   [O, p, Q, R],  # 4
   [S, t, U, V],  # 5
 ]

 AbbbCbbbD        #0 Top border characters
 E   F   G        #1 Vertical separators for header row
 HiiiJiiiK        #2 Separator between header row and first data row
 L   M   N        #3 Vertical separators for data row
 OpppQpppR        #4 Separator between data rows
 L   M   N        #3
 StttUtttV        #5 Bottom border characters

A character can also be a coderef that will be called with C<< ($self, %args)
>>. Arguments in C<%args> contains information such as C<name>, C<y>, C<x>, C<n>
(how many times should character be repeated), etc.


