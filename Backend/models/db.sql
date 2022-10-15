DROP DATABASE AGENTSONCLOUD;

create database AGENTSONCLOUD;

use AGENTSONCLOUD;

CREATE TABLE users (
    user_id INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    password VARCHAR(255),
    is_deleted TINYINT DEFAULT 0,
    PRIMARY KEY (user_id)
);

CREATE TABLE Products(
    product_id INT AUTO_INCREMENT NOT NULL,
    picUrlProd VARCHAR(255),
    title VARCHAR (255),
    product_name VARCHAR(255),
    price INT,
    description TEXT,
    user_id int,
    FOREIGN KEY (user_id) REFERENCES users (user_id),
    is_deleted TINYINT DEFAULT 0,
    PRIMARY KEY (Product_id)
);



CREATE TABLE cart (
    cart_id INT AUTO_INCREMENT NOT NULL,
    product_id int,
    user_id int,
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (user_id) REFERENCES users (user_id),
    quantity int,
    price_checkout int,
    is_deleted TINYINT DEFAULT 0,
    PRIMARY KEY (cart_id)
);




CREATE TABLE favorite_list (
    favorite_list INT AUTO_INCREMENT NOT NULL,
    product_id int,
    user_id int,
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (user_id) REFERENCES users (user_id),
    is_deleted TINYINT DEFAULT 0,
    PRIMARY KEY (favorite_list)
);

CREATE TABLE comments (
    comments_id INT AUTO_INCREMENT NOT NULL,
    comment VARCHAR(255),
    product_id int,
    user_id int,
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (user_id) REFERENCES users (user_id),
    is_deleted TINYINT DEFAULT 0,
    PRIMARY KEY (comments_id)
);






INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    
INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );


    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );





    INSERT INTO
    Products (
        picUrlProd,
        title,
        product_name,
        price,
        description,
        user_id
       
    )
VALUES
    (
        'http://res.cloudinary.com/doxxh3kej/image/upload/v1654172540/bzr4ldncgew79kdi6o4k.jpg',
        'Cooler Master MasterAir MA610P ARGB CPU Air Cooler',
      
        "DEEP COOL",
        55,
        "Cooler Master MasterAir MA610P is designed for gamers and overclockers who demand ultra-low temperatures, aggressive Addressable RGB lighting, and total control over their air cooling. The push and pull configuration allows high-presurre cooling,
CDC 2.0  Excellent heat dissipation with 6 heatpipes and Continuous Direct Contact 2.0 technology,
Dual SickleFlow ARGB  Push and pull - dual SickleFlow 120 ARGB fans to maximize CPU cooling with plenty of color while doing it.Unique,
Top Cover Design - Creative ARGB LED logo design with additional light strips on the top cover for aesthetic customization,
Mainstream dual platforms are available: Intel: LGA 2066/2011-v3 / 2011 /1200/ 1366/ 1156/ 1155/ 1151/ 1150/ AMD: AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1,",
      1
        
    );




    