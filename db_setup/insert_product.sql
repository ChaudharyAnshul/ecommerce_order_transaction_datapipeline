-- insert categories
INSERT INTO ecommerce_db.category (category_name) 
VALUES 
('Electronics'),
('Home Appliances'),
('Fashion'),
('Books'),
('Toys & Games'),
('Sports & Outdoors'),
('Health & Beauty'),
('Automotive'),
('Food & Beverages'),
('Furniture'),
('Office Supplies'),
('Jewelry & Accessories'),
('Pet Supplies'),
('Grocery'),
('Tools & Home Improvement'),
('Music & Movies'),
('Baby Products'),
('Garden & Outdoor'),
('Arts & Crafts'),
('Watches & Wearables');

-- Inserting products for 'Electronics' category (category_id = 1)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) 
VALUES 
('Smartphone', 'A high-performance smartphone with a 6.5-inch display.', 799.99, 100, 1),
('Laptop', '15-inch laptop with Intel i7 processor and 16GB RAM.', 1499.99, 50, 1),
('Smartwatch', 'A sleek smartwatch with health tracking and notifications.', 199.99, 200, 1),
('Bluetooth Headphones', 'Over-ear Bluetooth headphones with noise-canceling feature.', 129.99, 150, 1),
('4K TV', '55-inch 4K Ultra HD Smart LED TV.', 599.99, 30, 1),
('Gaming Console', 'Latest generation gaming console with 1TB storage.', 499.99, 80, 1);

-- Inserting products for 'Home Appliances' category (category_id = 2)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) 
VALUES 
('Washing Machine', '7kg top-load washing machine with multiple wash modes.', 399.99, 20, 2),
('Refrigerator', '300L refrigerator with energy-saving features.', 649.99, 15, 2),
('Air Conditioner', '1.5-ton split AC with energy-efficient cooling.', 499.99, 25, 2),
('Microwave Oven', '800W microwave with multiple cooking presets.', 129.99, 50, 2),
('Dishwasher', 'Stainless steel dishwasher with 8 place settings.', 399.99, 40, 2),
('Vacuum Cleaner', 'Cordless vacuum cleaner with a 60-minute runtime.', 149.99, 60, 2);

-- Inserting products for 'Fashion' category (category_id = 3)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) 
VALUES 
('Men\'s T-Shirt', 'Cotton t-shirt with graphic print.', 19.99, 150, 3),
('Women\'s Dress', 'A-line dress with floral design.', 49.99, 80, 3),
('Leather Jacket', 'Premium leather jacket for men.', 159.99, 60, 3),
('Running Shoes', 'Comfortable running shoes with memory foam.', 89.99, 100, 3),
('Sunglasses', 'Stylish sunglasses with UV protection.', 39.99, 120, 3),
('Wristwatch', 'Analog wristwatch with stainless steel band.', 129.99, 150, 3);

-- Inserting products for 'Books' category (category_id = 4)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) 
VALUES 
('The Great Gatsby', 'Classic novel by F. Scott Fitzgerald.', 10.99, 200, 4),
('1984', 'Dystopian novel by George Orwell.', 12.99, 150, 4),
('The Catcher in the Rye', 'Novel by J.D. Salinger.', 9.99, 180, 4),
('To Kill a Mockingbird', 'Pulitzer Prize-winning novel by Harper Lee.', 14.99, 120, 4),
('Pride and Prejudice', 'Novel by Jane Austen.', 11.99, 250, 4),
('Moby-Dick', 'Classic novel by Herman Melville.', 13.99, 140, 4);

-- Inserting products for 'Toys & Games' category (category_id = 5)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) 
VALUES 
('Action Figure', 'Collectible superhero action figure.', 14.99, 300, 5),
('Board Game', 'Classic board game for 2-4 players.', 29.99, 200, 5),
('Puzzle', '1000-piece jigsaw puzzle of a scenic view.', 19.99, 250, 5),
('Dollhouse', 'Miniature wooden dollhouse with furniture.', 49.99, 60, 5),
('LEGO Set', '500-piece LEGO construction set.', 39.99, 150, 5),
('Toy Car', 'Remote-controlled toy car.', 24.99, 180, 5);

-- Inserting products for 'Sports & Outdoors' category (category_id = 6)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) 
VALUES 
('Yoga Mat', 'Non-slip yoga mat with a carrying strap.', 29.99, 100, 6),
('Tennis Racket', 'Professional-grade tennis racket.', 69.99, 50, 6),
('Camping Tent', '4-person tent with waterproof coating.', 129.99, 30, 6),
('Bicycle', 'Mountain bike with 18 gears.', 399.99, 80, 6),
('Fishing Rod', '7-foot fishing rod with reel.', 49.99, 120, 6),
('Soccer Ball', 'High-quality soccer ball.', 19.99, 150, 6);

-- Inserting products for 'Health & Beauty' category (category_id = 7)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) 
VALUES 
('Facial Cleanser', 'Hydrating facial cleanser for all skin types.', 14.99, 200, 7),
('Shampoo', 'Organic shampoo for dry hair.', 9.99, 300, 7),
('Toothbrush', 'Electric toothbrush with 2 brush heads.', 39.99, 250, 7),
('Perfume', 'Floral-scented perfume for women.', 29.99, 150, 7),
('Body Lotion', 'Moisturizing body lotion with vitamin E.', 12.99, 180, 7),
('Nail Polish', 'Set of 5 nail polish colors.', 19.99, 220, 7);

-- Inserting products for 'Automotive' category (category_id = 8)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) 
VALUES 
('Car Seat Cover', 'Waterproof seat cover for front seats.', 39.99, 100, 8),
('Car Vacuum Cleaner', 'Compact handheld vacuum cleaner for car.', 24.99, 120, 8),
('Tire Inflator', 'Portable tire inflator for cars and bikes.', 49.99, 80, 8),
('Dashboard Camera', 'HD dashboard camera with loop recording.', 89.99, 50, 8),
('Car Battery Charger', 'Portable battery charger with jump-start feature.', 59.99, 70, 8),
('Motor Oil', 'Synthetic motor oil for high-performance vehicles.', 19.99, 200, 8);

-- Inserting products for 'Food & Beverages' category (category_id = 9)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) 
VALUES 
('Organic Granola', 'Healthy and delicious organic granola.', 7.99, 200, 9),
('Protein Shake', 'High-protein shake with chocolate flavor.', 29.99, 150, 9),
('Cold Brew Coffee', 'Smooth cold brew coffee with a rich taste.', 9.99, 180, 9),
('Pack of Chips', 'Classic salted chips pack.', 2.99, 500, 9),
('Soda Can', 'Crisp and refreshing soda in a 12-pack.', 5.99, 300, 9),
('Almonds', 'Fresh roasted almonds for snacking.', 12.99, 250, 9);

-- Inserting products for 'Furniture' category (category_id = 10)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) 
VALUES 
('Sofa', '3-seater sofa with soft cushions and premium fabric.', 499.99, 40, 10),
('Dining Table', 'Wooden dining table with 6 chairs.', 299.99, 30, 10),
('Office Chair', 'Ergonomic office chair with adjustable height.', 129.99, 50, 10),
('Coffee Table', 'Wooden coffee table with storage compartments.', 89.99, 60, 10),
('Bookshelf', '5-tier bookshelf for home or office use.', 79.99, 70, 10),
('Bed Frame', 'Queen-size bed frame with modern design.', 199.99, 40, 10);

-- Inserting products for 'Office Supplies' category (category_id = 11)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) 
VALUES 
('Printer', 'Wireless color printer with scanning capabilities.', 79.99, 80, 11),
('Notebook', 'Pack of 5 notebooks with ruled pages.', 6.99, 200, 11),
('Pen Set', 'Set of 10 gel pens in different colors.', 4.99, 300, 11),
('Desk Organizer', 'Wooden desk organizer for stationary.', 19.99, 120, 11),
('Whiteboard', 'Magnetic whiteboard with marker and eraser.', 29.99, 90, 11),
('Stapler', 'Heavy-duty stapler for office use.', 12.99, 150, 11);

-- Inserting products for 'Jewelry & Accessories' category (category_id = 12)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) 
VALUES 
('Gold Necklace', '18K gold necklace with a pendant.', 499.99, 50, 12),
('Diamond Ring', 'Platinum ring with a 1-carat diamond.', 1499.99, 30, 12),
('Silver Bracelet', 'Sterling silver bracelet with charm.', 129.99, 100, 12),
('Pearl Earrings', 'Classic freshwater pearl earrings.', 89.99, 150, 12),
('Sunglasses', 'Trendy oversized sunglasses with UV protection.', 49.99, 200, 12),
('Wristwatch', 'Stylish wristwatch with a stainless steel band.', 199.99, 120, 12);

-- Inserting products for 'Pet Supplies' category (category_id = 13)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) 
VALUES 
('Dog Bed', 'Orthopedic dog bed with soft cushioning.', 49.99, 80, 13),
('Cat Litter Box', 'Self-cleaning litter box for cats.', 129.99, 60, 13),
('Pet Leash', 'Adjustable pet leash with padded handle.', 19.99, 150, 13),
('Pet Food Bowl', 'Stainless steel food and water bowls for pets.', 14.99, 200, 13),
('Pet Toys', 'Set of 5 squeaky toys for dogs.', 22.99, 120, 13),
('Fish Tank', 'Aquarium tank with filter and LED lighting.', 89.99, 50, 13);

-- Inserting products for 'Grocery' category (category_id = 14)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) 
VALUES 
('Organic Apples', 'Fresh organic apples, 1kg.', 3.99, 500, 14),
('Rice', '5kg bag of premium basmati rice.', 12.99, 200, 14),
('Whole Wheat Bread', 'Freshly baked whole wheat bread.', 2.99, 300, 14),
('Milk', '1L carton of fresh milk.', 1.49, 400, 14),
('Olive Oil', '500ml extra virgin olive oil.', 7.99, 150, 14),
('Organic Eggs', 'Dozen organic eggs from free-range hens.', 4.99, 250, 14);

-- Inserting products for 'Tools & Home Improvement' category (category_id = 15)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) 
VALUES 
('Drill Set', '18-piece cordless drill set with rechargeable battery.', 79.99, 60, 15),
('Hammer', 'Claw hammer with ergonomic handle.', 19.99, 100, 15),
('Wrench Set', '5-piece adjustable wrench set.', 29.99, 80, 15),
('Power Saw', 'Electric circular saw with safety features.', 99.99, 40, 15),
('Toolbox', 'Heavy-duty toolbox with multiple compartments.', 49.99, 150, 15),
('Ladder', 'Folding ladder with anti-slip steps.', 69.99, 70, 15);

-- Inserting products for 'Music & Movies' category (category_id = 16)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) 
VALUES 
('Bluetooth Speaker', 'Portable Bluetooth speaker with deep bass.', 49.99, 120, 16),
('Wireless Earbuds', 'True wireless earbuds with noise cancellation.', 79.99, 150, 16),
('Record Player', 'Vintage-style turntable with speakers.', 129.99, 50, 16),
('Music CD', 'The best hits album of 2025.', 12.99, 200, 16),
('Movie Blu-ray', 'Blu-ray edition of the latest action movie.', 19.99, 180, 16),
('Karaoke Machine', 'Home karaoke system with two microphones.', 99.99, 60, 16);

-- Inserting products for 'Baby Products' category (category_id = 17)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) 
VALUES 
('Baby Crib', 'Wooden baby crib with adjustable height.', 199.99, 50, 17),
('Diapers', 'Pack of 100 diapers for babies.', 29.99, 200, 17),
('Baby Stroller', 'Lightweight and foldable baby stroller.', 149.99, 60, 17),
('Baby Bottle Set', 'Set of 5 BPA-free baby bottles.', 24.99, 150, 17),
('Baby Monitor', 'Video baby monitor with night vision and two-way audio.', 79.99, 80, 17),
('Baby Clothes', 'Set of 5 cotton baby onesies.', 19.99, 100, 17);

-- Inserting products for 'Garden & Outdoor' category (category_id = 18)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) 
VALUES 
('Garden Hose', 'Flexible 50ft garden hose for watering plants.', 19.99, 150, 18),
('BBQ Grill', 'Charcoal BBQ grill with adjustable temperature control.', 129.99, 60, 18),
('Lawn Mower', 'Electric lawn mower with 18-inch cutting deck.', 199.99, 40, 18),
('Outdoor Furniture Set', '4-piece outdoor furniture set with cushions.', 399.99, 30, 18),
('Garden Shovel', 'Durable garden shovel for digging and planting.', 14.99, 120, 18),
('Bird Feeder', 'Hanging bird feeder made from recycled materials.', 24.99, 100, 18);

-- Inserting products for 'Arts & Crafts' category (category_id = 19)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) 
VALUES 
('Paint Set', '12-color acrylic paint set for beginners.', 19.99, 150, 19),
('Canvas', 'Pack of 5 canvases for painting.', 24.99, 100, 19),
('Sketchbook', 'High-quality sketchbook with acid-free paper.', 14.99, 200, 19),
('Knitting Kit', 'Complete knitting kit with yarn and needles.', 29.99, 80, 19),
('Watercolor Pencils', 'Set of 24 watercolor pencils for artists.', 19.99, 120, 19),
('Clay Sculpting Tools', 'Set of 6 professional sculpting tools for clay.', 14.99, 100, 19);

-- Inserting products for 'Watches & Wearables' category (category_id = 20)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) 
VALUES 
('Smartwatch', 'Fitness-focused smartwatch with heart rate monitor.', 199.99, 150, 20),
('Leather Strap Watch', 'Classic analog watch with leather strap.', 79.99, 120, 20),
('Fitness Tracker', 'Wearable fitness tracker with step counter.', 49.99, 200, 20),
('Luxury Watch', 'Gold-plated luxury watch with diamond accents.', 999.99, 30, 20),
('Silicone Strap Watch', 'Colorful silicone strap watch for casual wear.', 29.99, 180, 20),
('Smart Ring', 'Stylish smart ring with activity tracking features.', 99.99, 60, 20);
