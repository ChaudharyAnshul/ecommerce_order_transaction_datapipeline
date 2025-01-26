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


-- Category: Electronics (category_id = 1)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) VALUES
('Wireless Charging Pad', 'Qi-certified wireless charging pad for smartphones.', 29.99, 180, 1),
('Portable Bluetooth Speaker', 'Compact and loud Bluetooth speaker with a 10-hour battery.', 49.99, 160, 1),
('Noise-Canceling Earbuds', 'In-ear noise-canceling earbuds with touch controls.', 89.99, 140, 1),
('USB-C Hub', 'Multiport USB-C hub with HDMI, USB-A, and Ethernet ports.', 39.99, 120, 1),
('External SSD', '1TB portable solid-state drive for fast data storage.', 129.99, 100, 1),
('Digital Camera', 'Mirrorless digital camera with 4K video recording.', 899.99, 40, 1),
('Wireless Keyboard', 'Ergonomic wireless keyboard with a numeric keypad.', 59.99, 90, 1),
('Computer Mouse', 'Wireless ergonomic mouse with adjustable DPI.', 24.99, 200, 1),
('Tablet', '10-inch tablet with a high-resolution display and long battery life.', 299.99, 70, 1),
('E-reader', 'E-reader with a paper-like display for comfortable reading.', 119.99, 80, 1);

-- Category: Home Appliances (category_id = 2)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) VALUES
('Smart Coffee Maker', 'Programmable coffee maker with app control.', 119.99, 45, 2),
('Air Fryer', 'Electric air fryer with multiple cooking presets.', 89.99, 55, 2),
('Electric Kettle', 'Fast-boiling electric kettle with temperature control.', 39.99, 70, 2),
('Hand Mixer', 'Electric hand mixer with multiple speeds and attachments.', 34.99, 85, 2),
('Food Processor', 'Multi-functional food processor for chopping and blending.', 149.99, 35, 2),
('Iron', 'Steam iron with a non-stick soleplate and auto shut-off.', 49.99, 90, 2),
('Blender', 'High-speed blender with a durable glass jar.', 79.99, 65, 2),
('Toaster', '4-slice toaster with various browning settings.', 59.99, 75, 2),
('Humidifier', 'Ultrasonic humidifier with a large water tank and quiet operation.', 54.99, 80, 2),
('Slow Cooker', 'Programmable slow cooker with a 6-quart capacity.', 69.99, 60, 2);

-- Category: Fashion (category_id = 3)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) VALUES
('Denim Jeans', 'Classic-fit denim jeans for men.', 59.99, 120, 3),
('Summer Dress', 'Lightweight summer dress with a floral pattern.', 44.99, 90, 3),
('Casual Sneakers', 'Comfortable casual sneakers with breathable fabric.', 69.99, 110, 3),
('Winter Coat', 'Warm and stylish winter coat with faux fur trim.', 179.99, 50, 3),
('Polo Shirt', 'Cotton polo shirt with short sleeves.', 29.99, 150, 3),
('Handbag', 'Leather handbag with multiple compartments and a shoulder strap.', 99.99, 70, 3),
('Belt', 'Leather belt with a classic buckle.', 34.99, 130, 3),
('Scarf', 'Silk scarf with a colorful design.', 24.99, 160, 3),
('Ankle Boots', 'Stylish ankle boots with a block heel.', 89.99, 80, 3),
('Baseball Cap', 'Cotton baseball cap with an adjustable strap.', 19.99, 180, 3);

-- Category: Books (category_id = 4)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) VALUES
('Science Fiction Novel', 'A gripping sci-fi novel set in a distant galaxy.', 15.99, 200, 4),
('Mystery Thriller', 'A suspenseful mystery thriller with unexpected twists.', 14.99, 180, 4),
('Historical Fiction', 'A captivating historical fiction novel based on true events.', 16.99, 160, 4),
('Cookbook', 'A comprehensive cookbook with a variety of delicious recipes.', 24.99, 120, 4),
('Biography', 'A compelling biography of a famous historical figure.', 18.99, 140, 4),
('Self-Help Book', 'A practical self-help book on achieving personal goals.', 13.99, 220, 4),
('Children\'s Book', 'An illustrated children\'s book with a heartwarming story.', 9.99, 250, 4),
('Poetry Collection', 'A collection of inspiring and thought-provoking poems.', 12.99, 230, 4),
('Travel Guide', 'A detailed travel guide to a popular tourist destination.', 21.99, 100, 4),
('Fantasy Novel', 'A magical fantasy novel with epic world-building.', 17.99, 170, 4);

-- Category: Toys & Games (category_id = 5)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) VALUES
('Remote Control Drone', 'Remote control drone with a built-in camera.', 79.99, 50, 5),
('Building Blocks Set', 'Large set of colorful building blocks for toddlers.', 39.99, 100, 5),
('Educational Game', 'Interactive educational game for children aged 5-7.', 24.99, 120, 5),
('Jigsaw Puzzle (1500 pieces)', 'Challenging 1500-piece jigsaw puzzle with a beautiful design.', 29.99, 90, 5),
('Chess Set', 'Classic wooden chess set with hand-carved pieces.', 49.99, 60, 5),
('Card Game', 'A fun and strategic card game for 2-4 players.', 14.99, 200, 5),
('Action Figures (Set)', 'Set of action figures from a popular movie.', 44.99, 80, 5),
('Stuffed Animal', 'Soft and cuddly stuffed animal with a cute design.', 19.99, 150, 5),
('Science Kit', 'Hands-on science kit with various experiments for kids.', 34.99, 70, 5),
('Outdoor Toy', 'Durable outdoor toy for active play.', 29.99, 110, 5);


-- Category: Sports & Outdoors (category_id = 6)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) VALUES
('Hiking Backpack', 'Durable hiking backpack with a 50-liter capacity.', 89.99, 70, 6),
('Running Watch', 'GPS running watch with heart rate monitor and advanced tracking.', 129.99, 60, 6),
('Trekking Poles', 'Lightweight and adjustable trekking poles for hiking.', 49.99, 90, 6),
('Baseball Bat', 'Aluminum baseball bat for practice and games.', 39.99, 100, 6),
('Basketball', 'Official-size basketball for indoor and outdoor play.', 24.99, 130, 6),
('Swim Goggles', 'Anti-fog swim goggles with UV protection.', 19.99, 150, 6),
('Camping Sleeping Bag', 'Lightweight and warm camping sleeping bag.', 69.99, 50, 6),
('Water Bottle', 'Insulated stainless steel water bottle.', 24.99, 200, 6),
('Skateboard', 'Durable skateboard with smooth-rolling wheels.', 79.99, 40, 6),
('Frisbee', 'Durable frisbee for outdoor fun.', 14.99, 220, 6);

-- Category: Health & Beauty (category_id = 7)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) VALUES
('Sunscreen', 'High SPF sunscreen with broad-spectrum protection.', 14.99, 200, 7),
('Moisturizer', 'Hydrating facial moisturizer with hyaluronic acid.', 22.99, 180, 7),
('Lip Balm', 'Moisturizing lip balm with SPF protection.', 4.99, 300, 7),
('Hair Dryer', 'Professional hair dryer with multiple heat and speed settings.', 49.99, 100, 7),
('Hair Straightener', 'Ceramic hair straightener with adjustable temperature.', 39.99, 90, 7),
('Makeup Brush Set', 'Complete set of makeup brushes for face and eyes.', 29.99, 120, 7),
('Hand Cream', 'Nourishing hand cream with shea butter.', 9.99, 250, 7),
('Body Wash', 'Refreshing body wash with a natural fragrance.', 8.99, 280, 7),
('Face Mask', 'Hydrating face mask with natural ingredients.', 19.99, 140, 7),
('Shaving Cream', 'Smooth shaving cream for men.', 7.99, 160, 7);

-- Category: Automotive (category_id = 8)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) VALUES
('Windshield Wiper Blades', 'Set of windshield wiper blades for various car models.', 24.99, 100, 8),
('Car Air Freshener', 'Long-lasting car air freshener with a pleasant scent.', 9.99, 200, 8),
('Car Phone Mount', 'Universal car phone mount for easy navigation.', 19.99, 150, 8),
('Jumper Cables', 'Heavy-duty jumper cables for starting a dead battery.', 29.99, 80, 8),
('Car Floor Mats', 'Durable car floor mats for all-weather protection.', 39.99, 70, 8),
('Car Wash Kit', 'Complete car wash kit with soap, sponge, and microfiber cloths.', 34.99, 60, 8),
('GPS Navigation System', 'Portable GPS navigation system with a touchscreen display.', 99.99, 40, 8),
('Portable Car Charger', 'Dual USB car charger for smartphones and tablets.', 14.99, 180, 8),
('Steering Wheel Cover', 'Comfortable steering wheel cover for added grip and style.', 12.99, 120, 8),
('Car Security System', 'Basic car security system with remote key and alarm.', 79.99, 50, 8);

-- Category: Food & Beverages (category_id = 9)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) VALUES
('Gourmet Coffee Beans', 'Premium gourmet coffee beans, freshly roasted.', 14.99, 100, 9),
('Herbal Tea', 'Variety pack of herbal teas with different flavors.', 9.99, 150, 9),
('Organic Peanut Butter', 'Creamy organic peanut butter made with natural ingredients.', 7.99, 200, 9),
('Dark Chocolate Bar', 'Rich dark chocolate bar with high cocoa content.', 4.99, 250, 9),
('Trail Mix', 'Healthy trail mix with nuts, seeds, and dried fruit.', 6.99, 180, 9),
('Honey', 'Pure and natural honey from local sources.', 12.99, 120, 9),
('Pasta', 'Imported Italian pasta made from durum wheat.', 5.99, 300, 9),
('Olive Oil', 'Extra virgin olive oil, cold-pressed.', 14.99, 110, 9),
('Spicy Salsa', 'Authentic spicy salsa with fresh ingredients.', 6.99, 130, 9),
('Granola Bars', 'Pack of granola bars with oats and honey.', 8.99, 160, 9);

-- Category: Furniture (category_id = 10)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) VALUES
('Recliner Chair', 'Comfortable recliner chair with a padded footrest.', 299.99, 20, 10),
('Nightstand', 'Wooden nightstand with a drawer and shelf.', 79.99, 40, 10),
('Dresser', '5-drawer dresser with a contemporary design.', 249.99, 15, 10),
('TV Stand', 'Modern TV stand with storage for media devices.', 149.99, 25, 10),
('Bar Stools', 'Set of two bar stools with adjustable height.', 119.99, 30, 10),
('Accent Table', 'Small accent table with a round top and metal legs.', 69.99, 45, 10),
('Ottoman', 'Padded ottoman with storage space.', 89.99, 50, 10),
('Wall Mirror', 'Decorative wall mirror with a wooden frame.', 59.99, 60, 10),
('Floor Lamp', 'Modern floor lamp with an adjustable reading light.', 74.99, 55, 10),
('Bedside Table Lamp', 'Bedside table lamp with a soft ambient light.', 39.99, 80, 10);

-- Category: Office Supplies (category_id = 11)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) VALUES
('Laser Printer', 'Wireless laser printer with fast printing speed.', 149.99, 50, 11),
('Paper Ream', 'Ream of 500 sheets of high-quality printing paper.', 9.99, 300, 11),
('Highlighters', 'Set of 6 different-colored highlighters.', 5.99, 400, 11),
('Tape Dispenser', 'Heavy-duty tape dispenser with a weighted base.', 12.99, 150, 11),
('File Folders', 'Pack of 10 colorful file folders for document organization.', 7.99, 200, 11),
('Scissors', 'Sharp scissors with ergonomic handles.', 8.99, 220, 11),
('Calculator', 'Scientific calculator with advanced functions.', 19.99, 100, 11),
('Binder Clips', 'Pack of assorted binder clips for organizing documents.', 4.99, 350, 11),
('Sticky Notes', 'Pack of sticky notes in different colors and sizes.', 6.99, 450, 11),
('Desk Lamp', 'Adjustable LED desk lamp with multiple brightness levels.', 29.99, 120, 11);

-- Category: Jewelry & Accessories (category_id = 12)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) VALUES
('Rose Gold Earrings', '14K rose gold earrings with small gemstones.', 129.99, 50, 12),
('Leather Wallet', 'Genuine leather wallet with multiple card slots and a coin pocket.', 49.99, 100, 12),
('Necklace', 'Elegant silver necklace with a delicate pendant.', 79.99, 80, 12),
('Cufflinks', 'Set of stylish cufflinks for formal occasions.', 39.99, 60, 12),
('Tie', 'Silk tie with a classic pattern.', 29.99, 120, 12),
('Hat', 'Stylish hat with a wide brim for sun protection.', 34.99, 110, 12),
('Brooch', 'Decorative brooch with a vintage design.', 44.99, 70, 12),
('Charm Bracelet', 'Sterling silver charm bracelet for personalization.', 89.99, 90, 12),
('Stud Earrings', 'Simple stud earrings with small diamonds.', 149.99, 40, 12),
('Pocket Watch', 'Classic pocket watch with a chain.', 119.99, 60, 12);

-- Category: Pet Supplies (category_id = 13)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) VALUES
('Dog Food (Large Breed)', 'High-quality dry dog food for large breed dogs.', 44.99, 100, 13),
('Cat Food (Indoor)', 'Dry cat food formulated for indoor cats.', 39.99, 120, 13),
('Cat Tree', 'Multi-level cat tree with scratching posts and a cozy bed.', 179.99, 40, 13),
('Dog Collar', 'Durable and adjustable dog collar with a secure buckle.', 14.99, 180, 13),
('Pet Carrier', 'Comfortable pet carrier for small dogs and cats.', 59.99, 70, 13),
('Bird Cage', 'Spacious bird cage for small birds.', 69.99, 60, 13),
('Hamster Cage', 'Multi-level hamster cage with a wheel and tunnels.', 49.99, 80, 13),
('Fish Food', 'Flake fish food for tropical fish.', 7.99, 250, 13),
('Dog Training Treats', 'Healthy training treats for dogs.', 9.99, 200, 13),
('Catnip Toy', 'Interactive catnip toy to keep cats entertained.', 12.99, 150, 13);

-- Category: Grocery (category_id = 14)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) VALUES
('Organic Bananas', 'Fresh organic bananas, 1 bunch.', 2.99, 400, 14),
('Oatmeal', 'Whole grain oatmeal, 1kg bag.', 7.99, 150, 14),
('Canned Tomatoes', 'Canned diced tomatoes, 2 cans.', 3.99, 300, 14),
('Cheddar Cheese', 'Block of aged cheddar cheese.', 9.99, 100, 14),
('Frozen Peas', 'Bag of frozen green peas.', 4.99, 200, 14),
('Whole Wheat Pasta', 'Whole wheat pasta, 500g.', 4.99, 250, 14),
('Coffee', 'Ground coffee, 10oz bag.', 10.99, 120, 14),
('Brown Sugar', 'Bag of organic brown sugar.', 5.99, 180, 14),
('Jam', 'Strawberry jam with real fruit chunks.', 6.99, 200, 14),
('Salt', 'Sea salt, fine grain.', 3.99, 400, 14);

-- Category: Tools & Home Improvement (category_id = 15)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) VALUES
('Screwdriver Set', 'Set of various screwdrivers with magnetic tips.', 29.99, 100, 15),
('Tape Measure', 'Durable tape measure with a lock and belt clip.', 14.99, 150, 15),
('Pliers Set', 'Set of various pliers for different tasks.', 34.99, 80, 15),
('Work Gloves', 'Durable work gloves with reinforced palms.', 12.99, 200, 15),
('Safety Goggles', 'Protective safety goggles for eye safety.', 9.99, 250, 15),
('Paint Brushes', 'Set of paint brushes in various sizes.', 19.99, 120, 15),
('Extension Cord', 'Heavy-duty extension cord with multiple outlets.', 24.99, 70, 15),
('Level', 'Spirit level for accurate alignment.', 16.99, 90, 15),
('Utility Knife', 'Retractable utility knife with a durable blade.', 7.99, 180, 15),
('Hand Saw', 'Hand saw with sharp teeth for woodworking.', 22.99, 60, 15);

-- Category: Music & Movies (category_id = 16)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) VALUES
('Vinyl Record', 'New vinyl record of a classic album.', 24.99, 80, 16),
('Wireless Headphones', 'Over-ear wireless headphones with active noise cancellation.', 119.99, 60, 16),
('Home Theater System', '5.1 surround sound home theater system.', 399.99, 30, 16),
('DVD Box Set', 'Complete series DVD box set of a popular show.', 49.99, 50, 16),
('Microphone', 'High-quality microphone for recording and vocals.', 69.99, 70, 16),
('Instrument Cable', 'Instrument cable for connecting musical instruments.', 14.99, 150, 16),
('Movie Poster', 'Limited edition movie poster of a classic film.', 19.99, 120, 16),
('Movie Streaming Device', 'Streaming device with access to various platforms.', 39.99, 100, 16),
('Pop Music CD', 'New pop music CD of a popular artist.', 12.99, 180, 16),
('Classical Music CD', 'New classical music CD of a classic composer.', 12.99, 180, 16);

-- Category: Baby Products (category_id = 17)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) VALUES
('Baby Carrier', 'Ergonomic baby carrier for comfortable carrying.', 69.99, 60, 17),
('Baby Swing', 'Automatic baby swing with multiple swing settings.', 129.99, 40, 17),
('Baby Play Mat', 'Soft and padded baby play mat with colorful patterns.', 39.99, 80, 17),
('Baby Feeding Set', 'Complete baby feeding set with bowls, spoons, and sippy cups.', 29.99, 100, 17),
('Baby Bath Tub', 'Baby bath tub with a built-in thermometer.', 34.99, 90, 17),
('Baby Blanket', 'Soft and comfortable baby blanket made from organic cotton.', 24.99, 150, 17),
('Baby Car Seat', 'Safety-certified car seat for infants and toddlers.', 179.99, 30, 17),
('Baby Wipes', 'Pack of hypoallergenic baby wipes.', 12.99, 200, 17),
('Baby Lotion', 'Gentle baby lotion for sensitive skin.', 9.99, 180, 17),
('Baby Teether', 'Soft silicone teether for teething babies.', 7.99, 220, 17);

-- Category: Garden & Outdoor (category_id = 18)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) VALUES
('Plant Pots', 'Set of various sized plant pots for indoor or outdoor plants.', 24.99, 150, 18),
('Garden Gloves', 'Durable garden gloves with a comfortable fit.', 14.99, 200, 18),
('Watering Can', 'Large watering can with a sprinkler head.', 19.99, 100, 18),
('Patio Umbrella', 'Large patio umbrella with a crank lift and tilt.', 79.99, 40, 18),
('Lawn Seeds', 'High-quality lawn seeds for a lush green lawn.', 29.99, 50, 18),
('Pruning Shears', 'Sharp pruning shears for cutting branches and plants.', 16.99, 120, 18),
('Outdoor String Lights', 'String lights with warm white LEDs for outdoor decoration.', 34.99, 80, 18),
('Compost Bin', 'Compost bin for recycling organic waste.', 49.99, 60, 18),
('Outdoor Cushion Set', 'Waterproof cushion set for outdoor furniture.', 59.99, 30, 18),
('Bird Bath', 'Decorative bird bath for attracting birds to your garden.', 44.99, 70, 18);

-- Category: Arts & Crafts (category_id = 19)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) VALUES
('Drawing Pencils', 'Set of drawing pencils with varying graphite hardness.', 14.99, 200, 19),
('Acrylic Paint Set', 'Set of acrylic paints with different vibrant colors.', 29.99, 150, 19),
('Watercolor Paint Set', 'Set of watercolor paints for blending and layering.', 24.99, 180, 19),
('Paint Brushes', 'Set of paint brushes in various sizes for different media.', 19.99, 120, 19),
('Sketch Pad', 'Large sketch pad with smooth and acid-free paper.', 12.99, 250, 19),
('Craft Paper', 'Pack of colorful craft paper for different art projects.', 9.99, 300, 19),
('Sewing Kit', 'Complete sewing kit with needles, threads, and scissors.', 24.99, 100, 19),
('Origami Paper', 'Pack of colorful origami paper for folding art projects.', 8.99, 180, 19),
('Clay', 'Air-dry clay for sculpting and crafting.', 16.99, 120, 19),
('Glitter Glue Set', 'Set of glitter glues in various colors for adding sparkle.', 9.99, 150, 19);

-- Category: Watches & Wearables (category_id = 20)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) VALUES
('Analog Watch', 'Classic analog watch with a leather band and a minimalist design.', 89.99, 100, 20),
('Digital Watch', 'Digital sports watch with a stopwatch, alarm, and timer.', 39.99, 150, 20),
('Heart Rate Monitor', 'Chest strap heart rate monitor for accurate workout tracking.', 49.99, 70, 20),
('Smart Band', 'Smart band with fitness tracking and sleep monitoring features.', 59.99, 120, 20),
('Luxury Bracelet', 'Elegant bracelet with sparkling crystals for a luxury look.', 99.99, 50, 20),
('Interchangeable Watch Straps', 'Set of interchangeable watch straps in various colors and styles.', 24.99, 180, 20),
('Kids Watch', 'Digital watch for kids with fun characters and educational features.', 29.99, 100, 20),
('GPS Smartwatch', 'Advanced GPS smartwatch for outdoor activities and fitness tracking.', 249.99, 30, 20),
('Activity Tracker', 'Activity tracker with step counter, calorie tracking, and sleep monitoring.', 69.99, 130, 20),
('Smart Scale', 'Smart scale for tracking body weight, BMI, and other metrics.', 49.99, 80, 20);


-- Category: Electronics (category_id = 1)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) VALUES
('Wireless Charging Stand', 'Adjustable wireless charging stand for smartphones and devices.', 34.99, 150, 1),
('Portable Power Bank', 'High-capacity portable power bank with multiple USB ports.', 49.99, 140, 1),
('Bluetooth Keyboard (Compact)', 'Compact Bluetooth keyboard for tablets and smartphones.', 69.99, 130, 1),
('Wired Gaming Mouse', 'Wired gaming mouse with programmable buttons and RGB lighting.', 39.99, 120, 1),
('USB-C to HDMI Cable', 'High-speed USB-C to HDMI cable for 4K video output.', 19.99, 180, 1),
('Webcam', 'High-definition webcam with built-in microphone for video calls.', 59.99, 100, 1),
('Smart Home Hub', 'Central smart home hub for controlling compatible devices.', 79.99, 80, 1),
('Digital Photo Frame', 'Digital photo frame with WiFi connectivity and cloud storage.', 99.99, 90, 1),
('Projector', 'Portable mini projector with HDMI and USB inputs.', 249.99, 40, 1),
('VR Headset', 'Virtual reality headset for immersive gaming and experiences.', 399.99, 30, 1),
('Wireless Mouse Pad', 'Wireless charging mouse pad with non-slip surface.', 44.99, 110, 1),
('Laptop Cooler Pad', 'Laptop cooling pad with multiple fans for better performance.', 29.99, 160, 1),
('Memory Card Reader', 'USB memory card reader for SD, microSD, and other formats.', 14.99, 200, 1),
('Smart Plug', 'WiFi enabled smart plug for controlling home appliances remotely.', 19.99, 170, 1),
('Portable Scanner', 'Compact portable scanner for documents and photos.', 89.99, 60, 1),
('E-Bike Kit', 'Electric bike conversion kit for traditional bicycles.', 299.99, 20, 1),
('Action Camera', 'Waterproof action camera with 4K recording and stabilization.', 149.99, 70, 1),
('Portable Monitor', 'Portable monitor with USB-C connectivity for dual-screen setup.', 179.99, 50, 1),
('Network Switch', '5-port gigabit network switch for wired internet connections.', 24.99, 100, 1),
('Smart TV Remote', 'Universal smart TV remote with voice control.', 14.99, 130, 1);

-- Category: Home Appliances (category_id = 2)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) VALUES
('Robot Vacuum Cleaner', 'Robot vacuum cleaner with smart mapping and scheduling.', 299.99, 30, 2),
('Steam Mop', 'Steam mop for cleaning and sanitizing floors.', 79.99, 50, 2),
('Garment Steamer', 'Handheld garment steamer for quick wrinkle removal.', 49.99, 60, 2),
('Food Dehydrator', 'Electric food dehydrator with multiple trays.', 89.99, 45, 2),
('Electric Griddle', 'Electric griddle with adjustable temperature for cooking meals.', 69.99, 55, 2),
('Stand Mixer', 'Electric stand mixer with multiple attachments for baking.', 249.99, 20, 2),
('Immersion Blender', 'Immersion blender for soups, smoothies, and sauces.', 44.99, 70, 2),
('Rice Cooker', 'Automatic rice cooker with keep warm function.', 39.99, 80, 2),
('Bread Maker', 'Automatic bread maker with various loaf sizes and crust settings.', 129.99, 35, 2),
('Water Purifier', 'Countertop water purifier with a multi-stage filtration system.', 99.99, 40, 2),
('Deep Fryer', 'Electric deep fryer with temperature control and basket.', 79.99, 55, 2),
('Electric Can Opener', 'Electric can opener for easy and safe opening of cans.', 29.99, 65, 2),
('Ice Maker', 'Portable ice maker for producing ice cubes quickly.', 149.99, 30, 2),
('Kitchen Scale', 'Digital kitchen scale with a high accuracy sensor.', 24.99, 80, 2),
('Electric Knife', 'Electric knife with a serrated blade for carving meats.', 34.99, 75, 2),
('Portable Air Conditioner', 'Portable air conditioner for cooling small rooms.', 249.99, 15, 2),
('Sewing Machine', 'Electric sewing machine with multiple stitch patterns.', 179.99, 20, 2),
('Dehumidifier', 'Dehumidifier for removing excess moisture from the air.', 149.99, 25, 2),
('Mini Refrigerator', 'Compact mini refrigerator for beverages and snacks.', 119.99, 40, 2),
('Electric Toothbrush', 'Rechargeable electric toothbrush with multiple cleaning modes.', 59.99, 70, 2);

-- Category: Fashion (category_id = 3)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) VALUES
('Chino Pants', 'Casual chino pants for men with a slim fit.', 49.99, 110, 3),
('Maxi Dress', 'Elegant maxi dress with a flowing silhouette.', 64.99, 80, 3),
('Loafers', 'Classic leather loafers for men and women.', 79.99, 100, 3),
('Puffer Vest', 'Warm puffer vest with a lightweight design.', 54.99, 70, 3),
('Cardigan', 'Soft and comfortable cardigan with a button closure.', 39.99, 120, 3),
('Clutch', 'Elegant clutch with a chain strap for evening wear.', 59.99, 90, 3),
('Beanie', 'Warm knit beanie with a pom-pom.', 19.99, 150, 3),
('Gloves', 'Winter gloves with touchscreen compatibility.', 24.99, 130, 3),
('Wide Leg Trousers', 'Stylish wide leg trousers for women.', 44.99, 100, 3),
('Hoodie', 'Cotton hoodie with a drawstring and a front pocket.', 44.99, 140, 3),
('Blouse', 'Lightweight blouse with a ruffled design.', 39.99, 110, 3),
('Jumpsuit', 'Stylish jumpsuit with a wide leg and a belted waist.', 79.99, 60, 3),
('Shorts', 'Cotton shorts with an elastic waistband.', 29.99, 170, 3),
('Tank Top', 'Basic tank top in various colors.', 14.99, 200, 3),
('Pencil Skirt', 'Professional pencil skirt for work.', 34.99, 90, 3),
('Tracksuit', 'Sporty tracksuit with a zip-up jacket and pants.', 89.99, 50, 3),
('Socks (Pack)', 'Pack of assorted cotton socks.', 12.99, 300, 3),
('Tie Clip', 'Stylish tie clip to secure a tie.', 19.99, 150, 3),
('Suspenders', 'Classic suspenders for men.', 24.99, 100, 3),
('Sun Hat', 'Wide brim sun hat with UV protection.', 29.99, 140, 3);

-- Category: Books (category_id = 4)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) VALUES
('Contemporary Novel', 'A thought-provoking contemporary novel with compelling characters.', 16.99, 170, 4),
('Biographical Memoir', 'A moving memoir of an extraordinary life journey.', 17.99, 150, 4),
('Business Book', 'A practical business book for improving leadership skills.', 24.99, 120, 4),
('Romance Novel', 'A heart-warming romance novel with a captivating storyline.', 14.99, 200, 4),
('Graphic Novel', 'A beautifully illustrated graphic novel with an engaging plot.', 19.99, 140, 4),
('Dictionary', 'A comprehensive dictionary with definitions, synonyms, and antonyms.', 29.99, 100, 4),
('Thesaurus', 'A thesaurus with alternative words and their meanings.', 19.99, 130, 4),
('Atlas', 'A detailed atlas with maps of countries and regions around the world.', 39.99, 80, 4),
('Art Book', 'An art book showcasing the work of a famous artist.', 44.99, 90, 4),
('Philosophy Book', 'A challenging book on philosophy and existentialism.', 18.99, 160, 4),
('Science Textbook', 'An introductory science textbook for high school students.', 34.99, 110, 4),
('Children’s Picture Book', 'A colorful picture book for toddlers and young children.', 10.99, 250, 4),
('Journal', 'A lined journal for writing and personal reflections.', 12.99, 220, 4),
('Notebook (Spiral)', 'A spiral-bound notebook for taking notes and writing down ideas.', 7.99, 300, 4),
('Textbook', 'An academic textbook for college students.', 49.99, 70, 4),
('Crime Thriller', 'A page-turning crime thriller with suspenseful twists.', 15.99, 190, 4),
('Horror Novel', 'A frightening horror novel that will send chills down your spine.', 17.99, 180, 4),
('Literary Classics', 'A collection of literary classics in a beautifully bound edition.', 29.99, 60, 4),
('History Book', 'A historical account of a significant event.', 21.99, 150, 4),
('Coding Book', 'A programming book with coding exercises and tutorials.', 39.99, 110, 4);


-- Category: Toys & Games (category_id = 5)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) VALUES
('Wooden Train Set', 'Wooden train set with track, train, and accessories.', 59.99, 40, 5),
('Doll', 'Fashion doll with various accessories and clothing.', 24.99, 100, 5),
('Science Kit (Advanced)', 'Advanced science kit for teens with complex experiments.', 49.99, 60, 5),
('Craft Kit', 'Craft kit with various materials for art projects.', 29.99, 80, 5),
('Musical Instrument Toy', 'Toy musical instrument for toddlers, such as a piano or guitar.', 34.99, 70, 5),
('Strategy Board Game', 'Complex strategy board game for adults and teens.', 44.99, 50, 5),
('Role-Playing Game', 'Role-playing game with various scenarios and characters.', 39.99, 40, 5),
('Video Game', 'Latest release video game for popular gaming console.', 59.99, 70, 5),
('Puzzle (500 pieces)', 'Challenging 500-piece jigsaw puzzle with a unique design.', 24.99, 120, 5),
('Building Blocks (Large Set)', 'Large set of building blocks with various shapes and colors.', 69.99, 60, 5),
('RC Car (High Speed)', 'High-speed remote control car with off-road capability.', 89.99, 30, 5),
('Toy Plane', 'Toy plane with realistic sounds and lights.', 29.99, 110, 5),
('Play Kitchen Set', 'Miniature play kitchen set with utensils and cooking accessories.', 79.99, 40, 5),
('Kids Telescope', 'Telescope for kids to explore the stars and planets.', 49.99, 60, 5),
('Art Easel', 'Adjustable art easel for drawing and painting.', 54.99, 50, 5),
('Baby Rattle', 'Baby rattle with soft and safe materials.', 9.99, 200, 5),
('Learning Blocks', 'Learning blocks with numbers, letters, and shapes.', 19.99, 180, 5),
('Toy Construction Set', 'Large toy construction set with various parts and tools.', 69.99, 40, 5),
('Outdoor Play Set', 'Outdoor play set for active play and exercise.', 99.99, 20, 5),
('Card Game (Family)', 'Fun card game for family game night.', 19.99, 140, 5);

-- Category: Sports & Outdoors (category_id = 6)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) VALUES
('Fitness Tracker Watch', 'Fitness tracker watch with heart rate monitor, step counter, and GPS.', 99.99, 60, 6),
('Yoga Blocks', 'Set of yoga blocks for support and balance.', 19.99, 150, 6),
('Resistance Bands Set', 'Set of resistance bands with varying levels for strength training.', 29.99, 100, 6),
('Jump Rope', 'Durable jump rope with comfortable handles for cardio workout.', 14.99, 200, 6),
('Dumbbell Set', 'Set of adjustable dumbbells for strength training.', 79.99, 40, 6),
('Weight Bench', 'Adjustable weight bench for weightlifting workouts.', 149.99, 20, 6),
('Camping Stove', 'Portable camping stove for outdoor cooking.', 59.99, 50, 6),
('Kayak', 'Inflatable kayak for water adventures.', 199.99, 15, 6),
('Binoculars', 'Binoculars for outdoor observation.', 69.99, 30, 6),
('Golf Clubs (Set)', 'Set of golf clubs for beginner golfers.', 299.99, 20, 6),
('Volleyball', 'Official size volleyball for indoor and outdoor games.', 24.99, 120, 6),
('Badminton Set', 'Badminton set with rackets and shuttlecocks for outdoor fun.', 39.99, 100, 6),
('Swimming Cap', 'Silicone swimming cap for comfortable swimming.', 9.99, 250, 6),
('Roller Skates', 'Adjustable roller skates for recreational skating.', 79.99, 40, 6),
('Scooter', 'Folding scooter for commuting and recreational use.', 89.99, 50, 6),
('Table Tennis Set', 'Table tennis set with paddles, balls, and net.', 49.99, 80, 6),
('Hiking Boots', 'Waterproof hiking boots with ankle support.', 119.99, 50, 6),
('Sleeping Pad', 'Lightweight sleeping pad for camping and hiking.', 44.99, 70, 6),
('Compass', 'Durable compass for navigation.', 19.99, 100, 6),
('First Aid Kit', 'Portable first aid kit for outdoor activities and emergencies.', 29.99, 110, 6);

-- Category: Health & Beauty (category_id = 7)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) VALUES
('Facial Toner', 'Facial toner to balance pH levels and refresh skin.', 19.99, 170, 7),
('Serum', 'Facial serum with concentrated active ingredients.', 29.99, 140, 7),
('Eye Cream', 'Hydrating eye cream to reduce dark circles and wrinkles.', 24.99, 150, 7),
('Body Scrub', 'Exfoliating body scrub with natural ingredients.', 14.99, 200, 7),
('Shaving Gel', 'Shaving gel for a smooth and comfortable shave.', 12.99, 180, 7),
('Hair Mask', 'Deep conditioning hair mask for dry and damaged hair.', 17.99, 160, 7),
('Lipstick', 'Long-lasting lipstick in various shades.', 19.99, 190, 7),
('Mascara', 'Volumizing and lengthening mascara for eye makeup.', 14.99, 220, 7),
('Eyeliner', 'Liquid eyeliner for defining and enhancing the eyes.', 12.99, 200, 7),
('Foundation', 'Liquid foundation for even skin tone and coverage.', 24.99, 180, 7),
('Concealer', 'Concealer for hiding blemishes and under-eye circles.', 16.99, 210, 7),
('Blush', 'Powder blush for adding color to cheeks.', 14.99, 190, 7),
('Bronzer', 'Powder bronzer for a sun-kissed glow.', 14.99, 180, 7),
('Makeup Remover', 'Gentle makeup remover for removing makeup and impurities.', 12.99, 230, 7),
('Nail File', 'Professional nail file for shaping and smoothing nails.', 7.99, 240, 7),
('Nail Clippers', 'Durable nail clippers for trimming nails.', 9.99, 250, 7),
('Perfume Set', 'Perfume gift set with multiple fragrances.', 79.99, 60, 7),
('Essential Oils Set', 'Essential oil set with various therapeutic oils.', 39.99, 100, 7),
('Hair Serum', 'Hair serum for frizz control and shine.', 16.99, 170, 7),
('Foot Cream', 'Moisturizing foot cream for dry and cracked feet.', 12.99, 180, 7);

-- Category: Automotive (category_id = 8)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) VALUES
('Car Cover', 'Durable car cover for protection against the elements.', 79.99, 40, 8),
('Air Compressor', 'Portable air compressor for inflating tires and other equipment.', 59.99, 60, 8),
('Car Battery', 'High-performance car battery for reliable starting power.', 99.99, 30, 8),
('Car Wax', 'High-quality car wax for protecting and shining car paint.', 24.99, 100, 8),
('Car Wash Mitt', 'Soft car wash mitt for gentle and effective car cleaning.', 12.99, 150, 8),
('Tire Pressure Gauge', 'Digital tire pressure gauge for accurate tire pressure readings.', 19.99, 130, 8),
('Seat Belt Cutter', 'Emergency seat belt cutter and window breaker tool.', 14.99, 120, 8),
('Tool Set', 'Basic tool set for common car maintenance tasks.', 49.99, 50, 8),
('Engine Oil Filter', 'Engine oil filter for various car models.', 14.99, 100, 8),
('Spark Plugs', 'Set of spark plugs for optimal engine performance.', 29.99, 80, 8),
('Brake Pads', 'Set of brake pads for safe and effective braking.', 69.99, 40, 8),
('Car Mirror', 'Replacement car mirror for various car models.', 49.99, 60, 8),
('Car Speaker Set', 'Set of car speakers for improved sound quality.', 79.99, 30, 8),
('Car Stereo', 'Car stereo with Bluetooth and USB connectivity.', 99.99, 20, 8),
('Car Sunshade', 'Car sunshade for keeping car interior cool.', 14.99, 160, 8),
('Car Seat Organizer', 'Car seat organizer for storing items in an organized manner.', 19.99, 140, 8),
('Dash Cam Mount', 'Mount for dash cam with a suction cup or adhesive.', 9.99, 180, 8),
('Car Polish', 'Car polish for removing minor scratches and swirls.', 19.99, 130, 8),
('Antifreeze', 'Antifreeze for protecting car engine during cold weather.', 19.99, 70, 8),
('Wheel Cleaner', 'Wheel cleaner for removing brake dust and dirt from wheels.', 14.99, 90, 8);


-- Category: Food & Beverages (category_id = 9)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) VALUES
('Whole Bean Coffee', 'Whole bean coffee for grinding at home.', 15.99, 90, 9),
('Green Tea', 'Loose leaf green tea for brewing.', 10.99, 140, 9),
('Almond Butter', 'Creamy almond butter with roasted almonds.', 8.99, 180, 9),
('Milk Chocolate Bar', 'Smooth and creamy milk chocolate bar.', 3.99, 230, 9),
('Dried Cranberries', 'Dried cranberries for snacking and baking.', 5.99, 190, 9),
('Local Honey', 'Local honey sourced from small farms.', 12.99, 100, 9),
('Lentils', 'Dried lentils for soups and stews.', 6.99, 280, 9),
('Quinoa', 'Organic quinoa for a healthy meal option.', 8.99, 220, 9),
('Hot Sauce', 'Variety of hot sauces for spicing up meals.', 7.99, 150, 9),
('Pickles', 'Pickled cucumbers in a jar.', 6.99, 200, 9),
('Energy Drink', 'Canned energy drink for a boost of energy.', 2.99, 300, 9),
('Fruit Juice', 'Bottled fruit juice with no added sugar.', 4.99, 250, 9),
('Sparkling Water', 'Bottled sparkling water with natural flavors.', 3.99, 270, 9),
('Trail Mix (Variety Pack)', 'Variety pack of trail mix with nuts, seeds, and dried fruit.', 9.99, 170, 9),
('Whole Wheat Crackers', 'Whole wheat crackers for healthy snacking.', 4.99, 200, 9),
('Cereal', 'Box of breakfast cereal with whole grains and fiber.', 6.99, 180, 9),
('Maple Syrup', 'Pure maple syrup for pancakes and waffles.', 14.99, 80, 9),
('Vinegar', 'Balsamic vinegar for dressings and marinades.', 8.99, 110, 9),
('Canned Tuna', 'Canned tuna in olive oil.', 4.99, 240, 9),
('Protein Bar', 'High-protein bar with various flavors.', 3.99, 260, 9);


-- Category: Furniture (category_id = 10)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) VALUES
('Sectional Sofa', 'Large sectional sofa with comfortable cushions and ample seating.', 599.99, 10, 10),
('Console Table', 'Stylish console table for hallways and living rooms.', 129.99, 25, 10),
('Sideboard', 'Wooden sideboard with multiple drawers and cabinets for storage.', 299.99, 15, 10),
('Bunk Bed', 'Bunk bed with a ladder for kids bedroom.', 399.99, 10, 10),
('Futon', 'Convertible futon that can be used as a sofa or a bed.', 199.99, 20, 10),
('Wardrobe', 'Wooden wardrobe with drawers, shelves, and hanging space.', 349.99, 10, 10),
('Storage Cabinet', 'Storage cabinet with multiple shelves and doors for organization.', 149.99, 30, 10),
('Dressing Table', 'Dressing table with a mirror and drawers for storing makeup and accessories.', 179.99, 15, 10),
('Vanity Chair', 'Comfortable vanity chair with a padded seat and backrest.', 89.99, 35, 10),
('Bean Bag Chair', 'Comfortable bean bag chair for lounging and relaxing.', 79.99, 40, 10),
('Bookcase', 'Modern bookcase with adjustable shelves.', 139.99, 20, 10),
('Room Divider', 'Folding room divider for privacy and space separation.', 99.99, 20, 10),
('Mattress Topper', 'Memory foam mattress topper for added comfort.', 79.99, 30, 10),
('Bedside Lamp (Modern)', 'Modern bedside lamp with a touch sensor and dimming feature.', 49.99, 50, 10),
('Pillow Set', 'Set of two soft pillows for comfortable sleep.', 39.99, 60, 10),
('Throw Blanket', 'Soft and cozy throw blanket for warmth and comfort.', 29.99, 70, 10),
('Dining Chairs (Set of 4)', 'Set of 4 dining chairs with padded seats and a modern design.', 249.99, 15, 10),
('Patio Furniture Set', 'Outdoor patio furniture set with a table and chairs.', 499.99, 10, 10),
('Wall Shelves', 'Set of floating wall shelves for storage and decoration.', 34.99, 40, 10),
('Desk Chair (Ergonomic)', 'Ergonomic desk chair with adjustable height, armrests, and lumbar support.', 179.99, 30, 10);

-- Category: Office Supplies (category_id = 11)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) VALUES
('Multi-Function Printer', 'Multi-function printer with printing, scanning, copying, and fax capabilities.', 199.99, 30, 11),
('Colored Pens (Set)', 'Set of 24 colored pens with various tip sizes.', 14.99, 250, 11),
('Pencils (Pack)', 'Pack of 12 #2 pencils for writing and drawing.', 5.99, 400, 11),
('Eraser (Pack)', 'Pack of multiple erasers for correcting mistakes.', 3.99, 500, 11),
('Paper Clips (Box)', 'Box of assorted paper clips for organizing documents.', 4.99, 600, 11),
('Binder', 'Ring binder for storing documents and papers.', 6.99, 300, 11),
('File Cabinet', 'Locking file cabinet for secure document storage.', 149.99, 10, 11),
('Desk Organizer (Mesh)', 'Mesh desk organizer with multiple compartments for storing stationery.', 19.99, 120, 11),
('Letter Tray', 'Stackable letter tray for organizing documents on the desk.', 12.99, 140, 11),
('Business Cards (Pack)', 'Pack of business cards for networking and professional use.', 24.99, 100, 11),
('Staple Remover', 'Staple remover for easily removing staples from paper.', 5.99, 180, 11),
('Hole Punch', 'Heavy-duty hole punch for making holes in paper.', 14.99, 160, 11),
('Scissors (Safety)', 'Safety scissors with rounded tips for kids and office use.', 7.99, 220, 11),
('Glue Stick (Pack)', 'Pack of glue sticks for paper and craft projects.', 4.99, 350, 11),
('Correction Tape', 'Correction tape for correcting mistakes on paper.', 5.99, 300, 11),
('Desk Calendar', 'Desk calendar for keeping track of dates and events.', 9.99, 150, 11),
('Wall Clock (Office)', 'Wall clock for office use with large and easy to read numbers.', 19.99, 70, 11),
('Whiteboard Markers (Set)', 'Set of whiteboard markers in various colors.', 12.99, 130, 11),
('Label Maker', 'Label maker for organizing files, shelves, and equipment.', 39.99, 40, 11),
('Shredder', 'Paper shredder for secure disposal of sensitive documents.', 79.99, 20, 11);


-- Category: Jewelry & Accessories (category_id = 12)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) VALUES
('Gold Ring', '18K gold ring with a simple and elegant design.', 399.99, 30, 12),
('Silver Chain', 'Sterling silver chain with a classic design.', 69.99, 80, 12),
('Charm Pendant', 'Gold charm pendant with various designs.', 99.99, 50, 12),
('Cuff Bracelet', 'Stainless steel cuff bracelet with a modern look.', 49.99, 70, 12),
('Hoop Earrings', 'Gold hoop earrings in various sizes.', 59.99, 90, 12),
('Stud Earrings (Pearl)', 'Pearl stud earrings for a timeless look.', 79.99, 60, 12),
('Necklace (Pendant)', 'Necklace with a decorative pendant made from various materials.', 89.99, 70, 12),
('Bracelet (Beaded)', 'Beaded bracelet made from colorful beads.', 39.99, 110, 12),
('Anklet', 'Silver anklet with a delicate chain design.', 34.99, 100, 12),
('Hair Clip', 'Stylish hair clip with various designs for holding hair.', 14.99, 200, 12),
('Hair Tie (Set)', 'Set of hair ties in various colors and styles.', 9.99, 300, 12),
('Bandana', 'Colorful cotton bandana for headwear or accessories.', 12.99, 250, 12),
('Key Chain', 'Key chain with various charms and pendants.', 7.99, 400, 12),
('Passport Holder', 'Leather passport holder for traveling.', 29.99, 140, 12),
('Luggage Tag', 'Luggage tag for identifying bags and suitcases.', 9.99, 150, 12),
('Money Clip', 'Stylish money clip for holding cash.', 24.99, 100, 12),
('Belt Buckle', 'Belt buckle with a decorative design.', 19.99, 160, 12),
('Tie Pin', 'Tie pin for holding a tie in place with an elegant design.', 17.99, 120, 12),
('Watch Box', 'Watch box for storing and displaying multiple watches.', 49.99, 50, 12),
('Sunglasses Case', 'Hard sunglasses case for protecting glasses.', 14.99, 130, 12);


-- Category: Pet Supplies (category_id = 13)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) VALUES
('Dog Leash (Retractable)', 'Retractable dog leash with a comfortable grip.', 29.99, 130, 13),
('Cat Litter', 'Clay cat litter for cat litter boxes.', 19.99, 100, 13),
('Pet Carrier Backpack', 'Pet carrier backpack for taking small pets on trips.', 69.99, 50, 13),
('Dog Training Collar', 'Dog training collar for training purposes.', 49.99, 70, 13),
('Cat Scratching Post', 'Cat scratching post with a sisal rope for scratching.', 39.99, 80, 13),
('Dog Bowl (Elevated)', 'Elevated dog bowl for comfortable eating.', 24.99, 120, 13),
('Cat Food Bowl (Automatic)', 'Automatic cat food bowl for scheduled feeding.', 59.99, 60, 13),
('Pet Grooming Brush', 'Pet grooming brush for removing loose hair.', 14.99, 170, 13),
('Dog Shampoo', 'Dog shampoo for cleaning and grooming dog fur.', 12.99, 150, 13),
('Cat Shampoo', 'Cat shampoo for cleaning and grooming cat fur.', 12.99, 140, 13),
('Pet First Aid Kit', 'Pet first aid kit for minor injuries and emergencies.', 24.99, 90, 13),
('Dog Treats (Training)', 'Small training treats for rewarding good behavior.', 7.99, 200, 13),
('Cat Treats', 'Variety of treats for rewarding cats.', 6.99, 220, 13),
('Fish Tank Decorations', 'Decorative items for creating a beautiful fish tank environment.', 19.99, 110, 13),
('Bird Seed', 'Bird seed mix for attracting birds to your yard.', 14.99, 100, 13),
('Hamster Food', 'Balanced hamster food for their daily nutritional needs.', 9.99, 130, 13),
('Rabbit Food', 'High-fiber rabbit food for optimal rabbit health.', 12.99, 110, 13),
('Pet Bed (Orthopedic)', 'Orthopedic pet bed with memory foam for joint support.', 79.99, 40, 13),
('Pet Clothing (Dog)', 'Dog clothes, such as sweater and raincoat for all-weather use.', 34.99, 80, 13),
('Pet Toy (Interactive)', 'Interactive pet toys for mental stimulation and fun.', 22.99, 140, 13);

-- Category: Grocery (category_id = 14)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) VALUES
('Organic Berries', 'Fresh organic mixed berries, 1 pint.', 5.99, 350, 14),
('Whole Grain Bread', 'Freshly baked whole grain bread loaf.', 4.99, 280, 14),
('Canned Beans', 'Canned kidney beans, chickpeas, and black beans, pack of 3.', 6.99, 300, 14),
('Cheddar Cheese (Block)', 'Block of aged cheddar cheese for cooking and snacking.', 8.99, 120, 14),
('Frozen Vegetables (Mix)', 'Frozen mixed vegetables for convenient cooking.', 5.99, 200, 14),
('Spaghetti', 'Dry spaghetti pasta, 1kg pack.', 5.99, 250, 14),
('Black Tea', 'Black tea bags for making a cup of hot tea.', 9.99, 150, 14),
('Coconut Sugar', 'Organic coconut sugar for baking and sweetening.', 7.99, 180, 14),
('Peanut Butter (Crunchy)', 'Crunchy peanut butter with natural peanuts.', 6.99, 220, 14),
('Sunflower Seeds', 'Sunflower seeds for snacks or adding to salads.', 4.99, 280, 14),
('Lemon Juice (Bottle)', 'Bottled lemon juice, 100% pure.', 5.99, 200, 14),
('Mayonnaise', 'Mayonnaise for sandwiches and salads.', 6.99, 240, 14),
('Ketchup', 'Tomato ketchup for dipping and topping.', 4.99, 300, 14),
('Mustard', 'Yellow mustard for dressing and dipping.', 4.99, 280, 14),
('Soy Sauce', 'Soy sauce for asian dishes and marinating.', 5.99, 180, 14),
('Salad Dressing', 'Various salad dressings for enhancing taste.', 6.99, 180, 14),
('Vegetable Oil', 'Vegetable oil for cooking and frying.', 9.99, 150, 14),
('Olive Oil (Cooking)', 'Olive oil for cooking, sauteing, and frying.', 12.99, 110, 14),
('Pancake Mix', 'Pancake mix for making delicious pancakes.', 7.99, 160, 14),
('Syrup', 'Various flavors of syrup for pancakes and desserts.', 5.99, 200, 14);

-- Category: Tools & Home Improvement (category_id = 15)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) VALUES
('Socket Set', 'Set of socket wrenches for tightening and loosening bolts and nuts.', 49.99, 80, 15),
('Wrench (Adjustable)', 'Adjustable wrench for various bolt and nut sizes.', 24.99, 120, 15),
('Level (Laser)', 'Laser level for accurate alignment and leveling.', 39.99, 60, 15),
('Hand Sander', 'Hand sander for woodworking and surface finishing.', 29.99, 90, 15),
('Paint Roller Set', 'Set of paint rollers for painting walls and ceilings.', 19.99, 150, 15),
('Paint Tray', 'Paint tray for holding paint while rolling.', 9.99, 200, 15),
('Utility Knife Blades', 'Pack of utility knife replacement blades.', 7.99, 250, 15),
('Wood Glue', 'Wood glue for bonding wood pieces together.', 8.99, 200, 15),
('Measuring Tape (Long)', 'Long measuring tape for measuring large distances.', 19.99, 100, 15),
('Cordless Screwdriver', 'Cordless screwdriver for screwing in screws and bolts.', 59.99, 50, 15),
('Drill Bits Set', 'Set of drill bits for drilling holes in various materials.', 29.99, 100, 15),
('Power Drill', 'Power drill for making holes in various materials.', 89.99, 30, 15),
('Ladder (Step)', 'Step ladder for reaching high places at home.', 69.99, 40, 15),
('Safety Glasses', 'Safety glasses for protecting eyes during DIY projects.', 9.99, 200, 15),
('Dust Mask', 'Dust mask for protecting against dust during projects.', 6.99, 250, 15),
('Work Apron', 'Work apron for protecting clothing during work.', 19.99, 100, 15),
('Pencil Sharpener (Manual)', 'Manual pencil sharpener for sharpening pencils.', 6.99, 300, 15),
('Stud Finder', 'Stud finder for locating studs behind walls.', 29.99, 80, 15),
('Caulk Gun', 'Caulk gun for applying caulk and sealants.', 14.99, 130, 15),
('Work Light', 'Portable work light for lighting up work areas.', 24.99, 110, 15);

-- Category: Music & Movies (category_id = 16)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) VALUES
('Classic Rock Vinyl', 'Classic rock vinyl album.', 29.99, 50, 16),
('Jazz Music CD', 'Classic Jazz music CD of a famous jazz artist.', 14.99, 120, 16),
('Action Movie (Blu-ray 4K)', 'Latest action movie in 4K Blu-ray format.', 24.99, 80, 16),
('Drama Movie (DVD)', 'Drama movie on DVD.', 19.99, 100, 16),
('Wireless Microphone', 'Professional wireless microphone with high quality sound.', 89.99, 30, 16),
('Keyboard', 'Electric keyboard with various sounds and recording functionality.', 149.99, 20, 16),
('Guitar Strings', 'High-quality guitar strings for acoustic and electric guitars.', 12.99, 200, 16),
('Music Stand', 'Portable music stand for holding music sheets or tablets.', 29.99, 100, 16),
('Movie Sound Track CD', 'Movie sound track CD.', 14.99, 150, 16),
('Pop Music Vinyl', 'Pop music vinyl album of a contemporary artist.', 34.99, 40, 16),
('Headphones (Wireless Over-Ear)', 'Over-ear headphones with noise cancelling function.', 79.99, 80, 16),
('Bluetooth Transmitter', 'Bluetooth transmitter for connecting non-bluetooth devices to wireless headphones.', 24.99, 110, 16),
('Record Cleaning Kit', 'Record cleaning kit for cleaning and maintaining vinyl records.', 19.99, 100, 16),
('Guitar Picks (Set)', 'Guitar picks of various styles, sizes and hardness.', 7.99, 300, 16),
('Instrument Cable', 'Instrument cable for connecting musical instruments.', 12.99, 250, 16),
('Amplifier', 'Compact amplifier for musical instruments.', 129.99, 20, 16),
('Home Karaoke Machine', 'Home Karaoke machine for singing and entertainment.', 99.99, 40, 16),
('Pop Culture Movie Poster', 'Pop culture movie poster of a trending film.', 19.99, 120, 16),
('Movie Gift Set', 'Movie gift set with a movie, poster, and merchandise.', 49.99, 60, 16),
('Sheet Music', 'Sheet music for various musical instruments.', 9.99, 180, 16);

-- Category: Baby Products (category_id = 17)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) VALUES
('Baby Car Seat (Convertible)', 'Convertible car seat for infants and toddlers.', 249.99, 25, 17),
('Baby Bouncer', 'Baby bouncer for gentle rocking and soothing.', 69.99, 50, 17),
('Baby Walker', 'Baby walker for helping babies learn to walk.', 89.99, 40, 17),
('Baby High Chair', 'High chair for feeding babies and toddlers.', 119.99, 30, 17),
('Baby Bottle Warmer', 'Bottle warmer for warming baby milk or formula.', 39.99, 70, 17),
('Baby Food Maker', 'Baby food maker for making homemade baby food.', 99.99, 30, 17),
('Baby Carrier (Wrap)', 'Baby carrier wrap for comfortable carrying and bonding.', 49.99, 60, 17),
('Diaper Bag', 'Diaper bag for organizing baby essentials.', 59.99, 50, 17),
('Baby Changing Pad', 'Portable changing pad for diaper changes on the go.', 24.99, 100, 17),
('Baby Pacifiers', 'Set of baby pacifiers in various sizes and designs.', 9.99, 200, 17),
('Baby Swaddle Blanket', 'Swaddle blanket for comfortable and safe sleep.', 29.99, 130, 17),
('Baby Bibs', 'Set of baby bibs for catching drools and food spills.', 14.99, 160, 17),
('Baby Rattles Set', 'Set of rattles for sensory development and entertainment.', 19.99, 150, 17),
('Baby Toys (Soft)', 'Soft toys for babies to play with.', 19.99, 150, 17),
('Baby Books (Cloth)', 'Cloth books for babies with textures and sounds.', 12.99, 180, 17),
('Baby Socks (Set)', 'Set of baby socks with different patterns and colors.', 9.99, 200, 17),
('Baby Hat', 'Soft and comfortable baby hats.', 12.99, 200, 17),
('Baby Sunscreen', 'Baby sunscreen for sun protection.', 14.99, 170, 17),
('Baby Wash', 'Gentle baby wash for cleaning the baby's skin.', 9.99, 200, 17),
('Baby Lotion', 'Baby lotion for moisturizing baby's skin.', 10.99, 200, 17);

-- Category: Garden & Outdoor (category_id = 18)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) VALUES
('Planting Shovel', 'Planting shovel with a durable handle for gardening.', 24.99, 120, 18),
('Watering Wand', 'Watering wand for watering plants with a gentle spray.', 19.99, 100, 18),
('Hedge Trimmer', 'Hedge trimmer for trimming hedges and bushes.', 89.99, 40, 18),
('Lawn Edger', 'Lawn edger for trimming edges of the lawn.', 49.99, 50, 18),
('Outdoor Rug', 'Outdoor rug for patios, decks, and gardens.', 59.99, 60, 18),
('Garden Bench', 'Garden bench for relaxing and enjoying the garden.', 129.99, 30, 18),
('Planter Box', 'Planter box for growing plants on patios and balconies.', 49.99, 70, 18),
('Outdoor Lights', 'Solar powered outdoor lights for lighting up pathways and gardens.', 39.99, 80, 18),
('Garden Decor', 'Various garden decor items for enhancing the look of the garden.', 29.99, 100, 18),
('Potting Soil', 'Potting soil mix for growing various plants.', 14.99, 150, 18),
('Fertilizer', 'Fertilizer for promoting plant growth and health.', 12.99, 130, 18),
('Weed Killer', 'Weed killer for eliminating weeds and unwanted growth.', 14.99, 130, 18),
('Insect Repellent', 'Insect repellent for protecting yourself from bugs and pests.', 9.99, 200, 18),
('Garden Tools (Set)', 'Set of essential garden tools with a durable bag.', 59.99, 50, 18),
('Tree Pruner', 'Tree pruner for trimming branches and trees.', 79.99, 30, 18),
('Leaf Blower', 'Leaf blower for clearing leaves from yard.', 79.99, 40, 18),
('Wheelbarrow', 'Wheelbarrow for hauling soil, plants, and other items.', 149.99, 20, 18),
('Outdoor Grill Cover', 'Durable cover for outdoor grills to protect from elements.', 29.99, 80, 18),
('Garden Hose Reel', 'Hose reel for storing and organizing garden hose.', 49.99, 60, 18),
('Outdoor Thermometer', 'Outdoor thermometer for measuring temperature.', 19.99, 120, 18);

-- Category: Arts & Crafts (category_id = 19)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) VALUES
('Colored Pencils (Set)', 'Set of colored pencils with various vibrant colors.', 17.99, 160, 19),
('Oil Paint Set', 'Oil paint set for professional oil painting.', 39.99, 50, 19),
('Drawing Charcoal (Set)', 'Drawing charcoal set for sketching and drawing.', 14.99, 170, 19),
('Watercolor Paper', 'High quality watercolor paper for painting.', 14.99, 200, 19),
('Acrylic Paint Brushes (Set)', 'Set of acrylic paint brushes for acrylic paint work.', 19.99, 130, 19),
('Palette Knife Set', 'Palette knife set for spreading paint on canvas.', 14.99, 120, 19),
('Pottery Clay', 'Pottery clay for creating pottery and ceramics.', 29.99, 70, 19),
('Knitting Needles (Set)', 'Set of knitting needles for knitting projects.', 17.99, 100, 19),
('Yarn (Variety Pack)', 'Variety pack of yarn for crocheting and knitting.', 24.99, 80, 19),
('Crochet Hooks (Set)', 'Set of crochet hooks for crocheting various projects.', 14.99, 140, 19),
('Sewing Machine Needles', 'Set of sewing machine needles for sewing machine use.', 7.99, 300, 19),
('Fabric Markers', 'Fabric markers for designing and customizing fabric.', 14.99, 180, 19),
('Beads (Variety Pack)', 'Variety pack of beads for jewelry making and crafts.', 12.99, 200, 19),
('Jewelry Making Kit', 'Complete jewelry making kit with tools and materials.', 39.99, 40, 19),
('Glue Gun', 'Glue gun for gluing various materials in craft projects.', 19.99, 100, 19),
('Craft Scissors (Set)', 'Set of craft scissors with various patterns for paper cutting.', 14.99, 200, 19),
('Card Making Kit', 'Card making kit with various supplies for making cards.', 24.99, 90, 19),
('Scrapbooking Kit', 'Scrapbooking kit with album, paper, stickers and tools.', 49.99, 50, 19),
('Calligraphy Pen Set', 'Calligraphy pen set for writing and creating elegant fonts.', 29.99, 80, 19),
('Drawing Mannequin', 'Wooden drawing mannequin for art sketching and drawings.', 19.99, 110, 19);

-- Category: Watches & Wearables (category_id = 20)
INSERT INTO ecommerce_db.product (product_name, description, price, stock_quantity, category_id) VALUES
('Chronograph Watch', 'Sporty chronograph watch with stopwatch functionality.', 149.99, 40, 20),
('Smart Fitness Watch', 'Smart fitness watch with GPS, heart rate monitor, and step tracker.', 199.99, 40, 20),
('Waterproof Smartwatch', 'Waterproof smartwatch for swimming and outdoor activities.', 179.99, 50, 20),
('Hybrid Smartwatch', 'Hybrid smartwatch with a combination of analog and digital features.', 129.99, 60, 20),
('Luxury Leather Watch', 'Luxury leather watch with an elegant and stylish design.', 299.99, 30, 20),
('Titanium Watch', 'Titanium watch with a lightweight and durable material.', 199.99, 40, 20),
('Stainless Steel Watch', 'Stainless steel watch with a classic style.', 119.99, 50, 20),
('Kids Smartwatch', 'Kids smartwatch with educational games and tracking functionality.', 69.99, 80, 20),
('GPS Tracker Watch', 'GPS tracker watch for outdoor activities and tracking kids.', 149.99, 40, 20),
('Sleep Tracker', 'Wrist worn sleep tracker with insights and detailed data tracking.', 59.99, 100, 20),
('Pedometer Watch', 'Pedometer watch for tracking steps and distance walked.', 34.99, 130, 20),
('Heart Rate Monitor (Wrist)', 'Wrist worn heart rate monitor for tracking heartbeat.', 44.99, 120, 20),
('Activity Band', 'Activity band for tracking steps, calories burned and activity time.', 59.99, 150, 20),
('Fitness Smart Ring', 'Smart ring with activity and sleep tracking functionality.', 89.99, 50, 20),
('Replacement Watch Straps', 'Set of replacement watch straps for swapping out styles.', 29.99, 160, 20),
('Watch Winder', 'Watch winder for maintaining automatic watches.', 79.99, 30, 20),
('Watch Repair Kit', 'Watch repair kit for basic watch maintenance tasks.', 24.99, 100, 20),
('Smart Glasses', 'Smart glasses with built-in features for enhanced productivity.', 249.99, 20, 20),
('Head Up Display', 'Head up display unit for projecting car data on the windscreen.', 199.99, 10, 20),
('VR Headset (Wearable)', 'Wearable VR headset with various immersive experiences.', 399.99, 20, 20);