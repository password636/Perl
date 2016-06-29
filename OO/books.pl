use strict;
use warnings;

BEGIN {push @INC, "/root/Perl/OO/pm"}
#use lib "/root/Perl/OO/pm";
use books;

# create an object by CLASS
my $the_book = new books;	# new CLASS
my $book_title = $the_book->getTitle();
my $book_author = $the_book->getAuthor();
printf "Book Title\t%s\nBook Author\t%s\n", $book_title, $book_author;

my $f_book = books->new();	# CLASS->new()
$book_title = $f_book->getTitle();
$book_author = $f_book->getAuthor();
printf "Book Title\t%s\nBook Author\t%s\n", $book_title, $book_author;

# create an object by object
my $abook = books->new1();	# CLASS->new()
$book_title = $abook->getTitle();
$book_author = $abook->getAuthor();
printf "Book Title\t%s\nBook Author\t%s\n", $book_title, $book_author;

my $bbook = $abook->new1();	# OBJECT->new()
$book_title = $bbook->getTitle();
$book_author = $bbook->getAuthor();
printf "Book Title\t%s\nBook Author\t%s\n", $book_title, $book_author;

# initialize the object
my $newbook = books->newp("Inside The C++ Object Model", "Stanley", "Green");
$book_title = $newbook->getTitle();
$book_author = $newbook->getAuthor();
printf "Book Title\t%s\nBook Author\t%s\n", $book_title, $book_author;

