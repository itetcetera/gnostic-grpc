
3.0.03
	BookstoreA simple Bookstore API example.21.0.0*
(https://generated-bookstore.appspot.com/"�
�
/shelves�"�$Return all shelves in the bookstore.*listShelvesBtr
200k
i
!List of shelves in the bookstore.D
B
application/json.
,*
(#/components/schemas/listShelvesResponse2�$Create a new shelf in the bookstore.*createShelf:Y
W
A shelf resource to create.6
4
application/json 

#/components/schemas/shelfBdb
200[
Y
A newly created shelf resource.6
4
application/json 

#/components/schemas/shelf:CDelete all shelves.*deleteShelvesB


An empty response body.
�
/shelves/{shelf}�"�.Get a single shelf resource with the given ID.*getShelf2@
>
shelfpathID of the shelf to get. R
�integer�int64B�
L
J
unexpected error6
4
application/json 

#/components/schemas/errorT
200M
K
A shelf resource.6
4
application/json 

#/components/schemas/shelf:�(Delete a single shelf with the given ID.*deleteShelf2C
A
shelfpathID of the shelf to delete. R
�integer�int64B


An empty response body.
�
/shelves/{shelf}/books�"�.Return all books in a shelf with the given ID.*	listBooks2X
V
shelfpath/ID of the shelf whose books should be returned. R
�integer�int64B�
L
J
unexpected error6
4
application/json 

#/components/schemas/errort
200m
k
%List of books on the specified shelf.B
@
application/json,
*(
&#/components/schemas/listBooksResponse2�Create a new book on the shelf.*
createBook2Z
X
shelfpath1ID of the shelf where the book should be created. R
�integer�int64:L
J
Book to create.5
3
application/json

#/components/schemas/bookB�
L
J
unexpected error6
4
application/json 

#/components/schemas/error`
200Y
W
A newly created book resource.5
3
application/json

#/components/schemas/book
�
/shelves/{shelf}/books/{book}�"�/Get a single book with a given ID from a shelf.*getBook2T
R
shelfpath+ID of the shelf from which to get the book. R
�integer�int642M
K
bookpath%ID of the book to get from the shelf. R
�integer�int64B�
L
J
unexpected error6
4
application/json 

#/components/schemas/errorR
200K
I
A book resource.5
3
application/json

#/components/schemas/book:�2Delete a single book with a given ID from a shelf.*
deleteBook2W
U
shelfpath.ID of the shelf from which to delete the book. R
�integer�int642P
N
bookpath(ID of the book to delete from the shelf. R
�integer�int64B


An empty response body.*�
�
p
bookh
f�name�author�title�object�B

author
	�string

name
	�string

title
	�string
b
listBooksResponseM
K�books�object�7
5
books,
*�array�

#/components/schemas/book
_
listShelvesResponseH
F�object�:
8
shelves-
+�array� 

#/components/schemas/shelf
Q
shelfH
F�name�theme�object�+

name
	�string

theme
	�string
^
errorU
S�code�message�object�6

code
�integer�int32

message
	�string:#
!
api_key

apiKeykey"query2 