-- ============================================
-- 1. tbl_personal_info
-- ============================================
INSERT INTO tbl_personal_info (first_name, last_name, address, birthday) VALUES
('Yukito', 'Haruna', 'Tokyo, Japan', '2000-03-12'),
('Asahi', 'Tanaka', 'Osaka, Japan', '1998-07-24'),
('Rina', 'Suzuki', 'Kyoto, Japan', '2002-11-05'),
('Daichi', 'Kobayashi', 'Nagoya, Japan', '1999-09-18'),
('Sora', 'Fujimoto', 'Sapporo, Japan', '2001-02-28'),
('Haruto', 'Watanabe', 'Hiroshima, Japan', '2003-06-10'),
('Mika', 'Takahashi', 'Fukuoka, Japan', '1997-01-19'),
('Ren', 'Yamamoto', 'Sendai, Japan', '1996-05-15'),
('Aoi', 'Nakamura', 'Kobe, Japan', '1995-12-20'),
('Keisuke', 'Sato', 'Yokohama, Japan', '2000-08-03');

-- ============================================
-- 2. tbl_roles
-- ============================================
INSERT INTO tbl_roles (user_id, role) VALUES
(1, 'Admin'),
(2, 'Librarian'),
(3, 'Member'),
(4, 'Member'),
(5, 'Member'),
(6, 'Member'),
(7, 'Librarian'),
(8, 'Member'),
(9, 'Member'),
(10, 'Member');

-- ============================================
-- 3. tbl_user_account
-- ============================================
INSERT INTO tbl_user_account (role_id, user_id, username, password) VALUES
(1, 1, 'yukito_haruna', 'pass123'),
(2, 2, 'asahi_tanaka', 'pass123'),
(3, 3, 'rina_suzuki', 'pass123'),
(4, 4, 'daichi_kobayashi', 'pass123'),
(5, 5, 'sora_fujimoto', 'pass123'),
(6, 6, 'haruto_watanabe', 'pass123'),
(7, 7, 'mika_takahashi', 'pass123'),
(8, 8, 'ren_yamamoto', 'pass123'),
(9, 9, 'aoi_nakamura', 'pass123'),
(10, 10, 'keisuke_sato', 'pass123');

-- ============================================
-- 4. tbl_points_system
-- ============================================
INSERT INTO tbl_points_system (user_id, total_points) VALUES
(1, 120),
(2, 85),
(3, 45),
(4, 60),
(5, 75),
(6, 50),
(7, 95),
(8, 110),
(9, 30),
(10, 65);

-- ============================================
-- 5. tbl_points_transaction
-- ============================================
INSERT INTO tbl_points_transaction (points_id, points_earned, points_used, transaction_date, remarks) VALUES
(1, 20, 0, '2025-10-12', 'Borrowed a book'),
(2, 10, 5, '2025-10-10', 'Redeemed points'),
(3, 15, 0, '2025-10-11', 'Returned book early'),
(4, 0, 10, '2025-10-09', 'Late return'),
(5, 25, 0, '2025-10-08', 'Book purchase'),
(6, 10, 0, '2025-10-07', 'Book borrowed'),
(7, 0, 15, '2025-10-06', 'Redeemed discount'),
(8, 20, 0, '2025-10-05', 'Book return bonus'),
(9, 15, 5, '2025-10-04', 'Point adjustment'),
(10, 5, 0, '2025-10-03', 'Borrow bonus');

-- ============================================
-- 6. tbl_purchase_info
-- ============================================
INSERT INTO tbl_purchase_info (user_id, purchase_date, quantity, total_price) VALUES
(1, '2025-10-12', 2, 45.50),
(2, '2025-10-11', 1, 22.75),
(3, '2025-10-10', 3, 65.00),
(4, '2025-10-09', 1, 18.99),
(5, '2025-10-08', 2, 40.00),
(6, '2025-10-07', 1, 19.50),
(7, '2025-10-06', 2, 37.25),
(8, '2025-10-05', 1, 25.75),
(9, '2025-10-04', 3, 58.20),
(10, '2025-10-03', 2, 49.90);

-- ============================================
-- 7. tbl_payment
-- ============================================
INSERT INTO tbl_payment (purchase_id, payment_method, transaction_reference_num, payment_status) VALUES
(1, 'Credit Card', 'TXN001', 'Completed'),
(2, 'PayPal', 'TXN002', 'Completed'),
(3, 'Cash', 'TXN003', 'Completed'),
(4, 'Credit Card', 'TXN004', 'Completed'),
(5, 'Debit Card', 'TXN005', 'Pending'),
(6, 'Cash', 'TXN006', 'Completed'),
(7, 'PayPal', 'TXN007', 'Completed'),
(8, 'Credit Card', 'TXN008', 'Completed'),
(9, 'Debit Card', 'TXN009', 'Pending'),
(10, 'Cash', 'TXN010', 'Completed');

-- ============================================
-- 8. tbl_receipt
-- ============================================
INSERT INTO tbl_receipt (purchase_id, receipt_date, total) VALUES
(1, '2025-10-12', 45.50),
(2, '2025-10-11', 22.75),
(3, '2025-10-10', 65.00),
(4, '2025-10-09', 18.99),
(5, '2025-10-08', 40.00),
(6, '2025-10-07', 19.50),
(7, '2025-10-06', 37.25),
(8, '2025-10-05', 25.75),
(9, '2025-10-04', 58.20),
(10, '2025-10-03', 49.90);

-- ============================================
-- 9. tbl_genre
-- ============================================
INSERT INTO tbl_genre (genre_name) VALUES
('Science Fiction'),
('Mystery'),
('Fantasy'),
('Romance'),
('Thriller'),
('Historical'),
('Biography'),
('Adventure'),
('Horror'),
('Self-Help');

-- ============================================
-- 10. tbl_author
-- ============================================
INSERT INTO tbl_author (firstname, lastname) VALUES
('George', 'Orwell'),
('Agatha', 'Christie'),
('J.K.', 'Rowling'),
('Jane', 'Austen'),
('Stephen', 'King'),
('Mark', 'Twain'),
('Isaac', 'Asimov'),
('J.R.R.', 'Tolkien'),
('Dan', 'Brown'),
('Harper', 'Lee');

-- ============================================
-- 11. tbl_book_info
-- ============================================
INSERT INTO tbl_book_info (genre_id, author_id, title, price) VALUES
(1, 1, '1984', 15.99),
(2, 2, 'Murder on the Orient Express', 12.75),
(3, 3, 'Harry Potter and the Sorcerer''s Stone', 18.25),
(4, 4, 'Gabriel Adolfo', 14.50),
(5, 5, 'The Shining', 16.00),
(6, 6, 'Adventures of Huckleberry Finn', 11.75),
(7, 7, 'Foundation', 17.30),
(8, 8, 'The Hobbit', 19.99),
(9, 9, 'The Da Vinci Code', 13.40),
(10, 10, 'To Kill a Mockingbird', 12.00);

-- ============================================
-- 12. tbl_borrowing_info
-- ============================================
INSERT INTO tbl_borrowing_info (user_id, book_id, borrow_date, due_date, borrow_status) VALUES
(1, 1, '2025-10-10', '2025-10-20', 'Returned'),
(2, 2, '2025-10-09', '2025-10-19', 'Borrowed'),
(3, 3, '2025-10-08', '2025-10-18', 'Borrowed'),
(4, 4, '2025-10-07', '2025-10-17', 'Returned'),
(5, 5, '2025-10-06', '2025-10-16', 'Borrowed'),
(6, 6, '2025-10-05', '2025-10-15', 'Returned'),
(7, 7, '2025-10-04', '2025-10-14', 'Borrowed'),
(8, 8, '2025-10-03', '2025-10-13', 'Returned'),
(9, 9, '2025-10-02', '2025-10-12', 'Borrowed'),
(10, 10, '2025-10-01', '2025-10-11', 'Borrowed');
