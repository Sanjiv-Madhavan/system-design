CREATE TABLE users (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password_hash TEXT NOT NULL, -- Hashed password
    bio TEXT,
    profile_picture_url TEXT,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);



    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '71812813-de60-483c-8faa-f640965b23f5', 'user_71812813', 'user_71812813@example.com', 'hashed_password',
        'Bio of user_71812813', 'https://example.com/profiles/user_71812813.jpg', '2024-05-22 14:30:11.390005', '2024-05-30 14:30:11.390005'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '40d7a621-d8d1-4bcb-9ab2-be3b4fc2d3ab', 'user_40d7a621', 'user_40d7a621@example.com', 'hashed_password',
        'Bio of user_40d7a621', 'https://example.com/profiles/user_40d7a621.jpg', '2024-03-26 14:30:11.390028', '2024-04-04 14:30:11.390028'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        'fefcc24d-ad0c-4abd-8db3-f143d2aedc13', 'user_fefcc24d', 'user_fefcc24d@example.com', 'hashed_password',
        'Bio of user_fefcc24d', 'https://example.com/profiles/user_fefcc24d.jpg', '2024-06-07 14:30:11.390033', '2024-06-13 14:30:11.390033'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        'd0d198ab-54e5-4aeb-82df-582201a01e21', 'user_d0d198ab', 'user_d0d198ab@example.com', 'hashed_password',
        'Bio of user_d0d198ab', 'https://example.com/profiles/user_d0d198ab.jpg', '2024-04-28 14:30:11.390038', '2024-05-22 14:30:11.390038'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '0dc230c0-79ed-45ee-b9a0-e06ee7fe34c4', 'user_0dc230c0', 'user_0dc230c0@example.com', 'hashed_password',
        'Bio of user_0dc230c0', 'https://example.com/profiles/user_0dc230c0.jpg', '2024-06-22 14:30:11.390042', '2024-07-06 14:30:11.390042'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '3f3b19f5-ccab-41f5-aea0-9bef9d1da2aa', 'user_3f3b19f5', 'user_3f3b19f5@example.com', 'hashed_password',
        'Bio of user_3f3b19f5', 'https://example.com/profiles/user_3f3b19f5.jpg', '2024-08-24 14:30:11.390047', '2024-09-05 14:30:11.390047'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '26f058a6-7f8a-4e82-aae5-10137c657f5e', 'user_26f058a6', 'user_26f058a6@example.com', 'hashed_password',
        'Bio of user_26f058a6', 'https://example.com/profiles/user_26f058a6.jpg', '2024-03-12 14:30:11.390051', '2024-03-12 14:30:11.390051'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        'd6a6524f-a0b3-4e39-b3b4-faae23adaf29', 'user_d6a6524f', 'user_d6a6524f@example.com', 'hashed_password',
        'Bio of user_d6a6524f', 'https://example.com/profiles/user_d6a6524f.jpg', '2024-03-22 14:30:11.390057', '2024-04-10 14:30:11.390057'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        'f499de7d-995e-4017-928d-b40736f9ea79', 'user_f499de7d', 'user_f499de7d@example.com', 'hashed_password',
        'Bio of user_f499de7d', 'https://example.com/profiles/user_f499de7d.jpg', '2024-03-08 14:30:11.390062', '2024-04-05 14:30:11.390062'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        'f783d009-7713-400d-91ef-d0bd454a3201', 'user_f783d009', 'user_f783d009@example.com', 'hashed_password',
        'Bio of user_f783d009', 'https://example.com/profiles/user_f783d009.jpg', '2025-01-09 14:30:11.390067', '2025-01-10 14:30:11.390067'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '5092b13d-a468-407a-a609-da88631cbdc7', 'user_5092b13d', 'user_5092b13d@example.com', 'hashed_password',
        'Bio of user_5092b13d', 'https://example.com/profiles/user_5092b13d.jpg', '2024-03-05 14:30:11.390071', '2024-03-21 14:30:11.390071'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        'ebe43708-3547-4832-91d0-26a62dd6564d', 'user_ebe43708', 'user_ebe43708@example.com', 'hashed_password',
        'Bio of user_ebe43708', 'https://example.com/profiles/user_ebe43708.jpg', '2024-04-12 14:30:11.390074', '2024-05-03 14:30:11.390074'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '40755138-babb-47a6-8353-0cb7ccac2513', 'user_40755138', 'user_40755138@example.com', 'hashed_password',
        'Bio of user_40755138', 'https://example.com/profiles/user_40755138.jpg', '2024-08-02 14:30:11.390080', '2024-08-19 14:30:11.390080'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        'd6576192-4494-48ec-89bb-1a018450876d', 'user_d6576192', 'user_d6576192@example.com', 'hashed_password',
        'Bio of user_d6576192', 'https://example.com/profiles/user_d6576192.jpg', '2024-05-09 14:30:11.390084', '2024-06-08 14:30:11.390084'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '714a063a-fcf1-451c-b72a-1a2c27e91f33', 'user_714a063a', 'user_714a063a@example.com', 'hashed_password',
        'Bio of user_714a063a', 'https://example.com/profiles/user_714a063a.jpg', '2024-07-23 14:30:11.390088', '2024-08-15 14:30:11.390088'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '51e04f09-ce7a-49aa-8892-269a46065300', 'user_51e04f09', 'user_51e04f09@example.com', 'hashed_password',
        'Bio of user_51e04f09', 'https://example.com/profiles/user_51e04f09.jpg', '2025-01-02 14:30:11.390092', '2025-01-13 14:30:11.390092'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '5ff32bbc-b5c1-411d-9687-caf3f505df2d', 'user_5ff32bbc', 'user_5ff32bbc@example.com', 'hashed_password',
        'Bio of user_5ff32bbc', 'https://example.com/profiles/user_5ff32bbc.jpg', '2024-05-05 14:30:11.390096', '2024-05-27 14:30:11.390096'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        'd6d495d6-719f-4d8a-9237-9a823d1728b3', 'user_d6d495d6', 'user_d6d495d6@example.com', 'hashed_password',
        'Bio of user_d6d495d6', 'https://example.com/profiles/user_d6d495d6.jpg', '2024-05-02 14:30:11.390100', '2024-05-05 14:30:11.390100'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '040e0ba8-42e8-49b0-b72c-00a29329c22c', 'user_040e0ba8', 'user_040e0ba8@example.com', 'hashed_password',
        'Bio of user_040e0ba8', 'https://example.com/profiles/user_040e0ba8.jpg', '2024-05-15 14:30:11.390104', '2024-06-09 14:30:11.390104'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '572e96a6-e620-4318-88e7-dd75551e9878', 'user_572e96a6', 'user_572e96a6@example.com', 'hashed_password',
        'Bio of user_572e96a6', 'https://example.com/profiles/user_572e96a6.jpg', '2024-10-16 14:30:11.390108', '2024-11-05 14:30:11.390108'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        'f477d597-fae2-4230-b4d9-ece9fdafaa7d', 'user_f477d597', 'user_f477d597@example.com', 'hashed_password',
        'Bio of user_f477d597', 'https://example.com/profiles/user_f477d597.jpg', '2024-04-01 14:30:11.390114', '2024-04-24 14:30:11.390114'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        'de7f0e68-e4b5-4d9c-afe6-70a4ea3e0653', 'user_de7f0e68', 'user_de7f0e68@example.com', 'hashed_password',
        'Bio of user_de7f0e68', 'https://example.com/profiles/user_de7f0e68.jpg', '2024-03-26 14:30:11.390144', '2024-04-13 14:30:11.390144'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '8b36ef5f-2f60-46bd-9ca0-dafe04daaefa', 'user_8b36ef5f', 'user_8b36ef5f@example.com', 'hashed_password',
        'Bio of user_8b36ef5f', 'https://example.com/profiles/user_8b36ef5f.jpg', '2024-02-20 14:30:11.390151', '2024-03-12 14:30:11.390151'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '89139764-3150-4ea5-b980-61e8585f3a41', 'user_89139764', 'user_89139764@example.com', 'hashed_password',
        'Bio of user_89139764', 'https://example.com/profiles/user_89139764.jpg', '2025-01-09 14:30:11.390157', '2025-01-29 14:30:11.390157'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '00504c3d-f629-42f5-b87b-b9014ef5d973', 'user_00504c3d', 'user_00504c3d@example.com', 'hashed_password',
        'Bio of user_00504c3d', 'https://example.com/profiles/user_00504c3d.jpg', '2024-08-24 14:30:11.390164', '2024-09-15 14:30:11.390164'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '2f2d6fcf-e873-4f1f-98ca-c55d51df6ef9', 'user_2f2d6fcf', 'user_2f2d6fcf@example.com', 'hashed_password',
        'Bio of user_2f2d6fcf', 'https://example.com/profiles/user_2f2d6fcf.jpg', '2024-09-27 14:30:11.390171', '2024-10-07 14:30:11.390171'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        'ce8329db-2b4a-48fd-94cc-767f8fba7c91', 'user_ce8329db', 'user_ce8329db@example.com', 'hashed_password',
        'Bio of user_ce8329db', 'https://example.com/profiles/user_ce8329db.jpg', '2024-10-28 14:30:11.390182', '2024-11-19 14:30:11.390182'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        'a1b824e7-ffa2-4deb-a3fa-0aed799703ab', 'user_a1b824e7', 'user_a1b824e7@example.com', 'hashed_password',
        'Bio of user_a1b824e7', 'https://example.com/profiles/user_a1b824e7.jpg', '2024-04-12 14:30:11.390191', '2024-04-22 14:30:11.390191'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '58854fc5-18b1-4e2a-8605-4ccdd8950188', 'user_58854fc5', 'user_58854fc5@example.com', 'hashed_password',
        'Bio of user_58854fc5', 'https://example.com/profiles/user_58854fc5.jpg', '2024-11-14 14:30:11.390197', '2024-11-18 14:30:11.390197'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        'f8b36547-801b-49d2-a8bc-5c4d7e766119', 'user_f8b36547', 'user_f8b36547@example.com', 'hashed_password',
        'Bio of user_f8b36547', 'https://example.com/profiles/user_f8b36547.jpg', '2024-05-24 14:30:11.390204', '2024-06-12 14:30:11.390204'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '103d8eb1-7e4b-4cb1-8daa-5cfa1e3d26ed', 'user_103d8eb1', 'user_103d8eb1@example.com', 'hashed_password',
        'Bio of user_103d8eb1', 'https://example.com/profiles/user_103d8eb1.jpg', '2024-08-26 14:30:11.390211', '2024-09-20 14:30:11.390211'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '9d78a484-6190-4924-b52b-89a82f840a7f', 'user_9d78a484', 'user_9d78a484@example.com', 'hashed_password',
        'Bio of user_9d78a484', 'https://example.com/profiles/user_9d78a484.jpg', '2024-12-31 14:30:11.390218', '2025-01-16 14:30:11.390218'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '2038934d-d590-4e9f-bd2b-f46cc1acf46d', 'user_2038934d', 'user_2038934d@example.com', 'hashed_password',
        'Bio of user_2038934d', 'https://example.com/profiles/user_2038934d.jpg', '2024-06-01 14:30:11.390225', '2024-06-28 14:30:11.390225'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        'bcacbd38-6630-44a4-a5de-66d359987f48', 'user_bcacbd38', 'user_bcacbd38@example.com', 'hashed_password',
        'Bio of user_bcacbd38', 'https://example.com/profiles/user_bcacbd38.jpg', '2024-06-29 14:30:11.390230', '2024-07-17 14:30:11.390230'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '6129a2ee-fd8d-4a70-b172-0ccd6faf9871', 'user_6129a2ee', 'user_6129a2ee@example.com', 'hashed_password',
        'Bio of user_6129a2ee', 'https://example.com/profiles/user_6129a2ee.jpg', '2024-06-04 14:30:11.390235', '2024-06-25 14:30:11.390235'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '2695ae5a-caf7-4810-b901-625cc6c712ca', 'user_2695ae5a', 'user_2695ae5a@example.com', 'hashed_password',
        'Bio of user_2695ae5a', 'https://example.com/profiles/user_2695ae5a.jpg', '2024-10-09 14:30:11.390239', '2024-10-18 14:30:11.390239'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        'c2791e81-4b59-4fc5-bb30-d92815d98716', 'user_c2791e81', 'user_c2791e81@example.com', 'hashed_password',
        'Bio of user_c2791e81', 'https://example.com/profiles/user_c2791e81.jpg', '2024-06-29 14:30:11.390242', '2024-07-27 14:30:11.390242'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '5bbebc30-da22-4876-a2f4-04e55c37d11f', 'user_5bbebc30', 'user_5bbebc30@example.com', 'hashed_password',
        'Bio of user_5bbebc30', 'https://example.com/profiles/user_5bbebc30.jpg', '2024-06-13 14:30:11.390248', '2024-06-23 14:30:11.390248'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        'e988e97f-169c-4a2e-ae7d-06d0928a1faa', 'user_e988e97f', 'user_e988e97f@example.com', 'hashed_password',
        'Bio of user_e988e97f', 'https://example.com/profiles/user_e988e97f.jpg', '2024-05-25 14:30:11.390251', '2024-05-28 14:30:11.390251'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        'e013d6b2-262b-4c70-976f-b082b6215570', 'user_e013d6b2', 'user_e013d6b2@example.com', 'hashed_password',
        'Bio of user_e013d6b2', 'https://example.com/profiles/user_e013d6b2.jpg', '2024-11-03 14:30:11.390255', '2024-11-17 14:30:11.390255'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '4ae05754-eef2-4aad-82df-794ab3c91930', 'user_4ae05754', 'user_4ae05754@example.com', 'hashed_password',
        'Bio of user_4ae05754', 'https://example.com/profiles/user_4ae05754.jpg', '2024-06-15 14:30:11.390259', '2024-07-07 14:30:11.390259'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '40e38c65-c9b3-49bf-98eb-306aa0a7f269', 'user_40e38c65', 'user_40e38c65@example.com', 'hashed_password',
        'Bio of user_40e38c65', 'https://example.com/profiles/user_40e38c65.jpg', '2024-07-07 14:30:11.390263', '2024-07-14 14:30:11.390263'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '4d132b27-8363-4bb0-8618-360068914d24', 'user_4d132b27', 'user_4d132b27@example.com', 'hashed_password',
        'Bio of user_4d132b27', 'https://example.com/profiles/user_4d132b27.jpg', '2024-10-30 14:30:11.390269', '2024-11-23 14:30:11.390269'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        'd4ef8972-f69c-40c9-a7d3-bc0ef5868391', 'user_d4ef8972', 'user_d4ef8972@example.com', 'hashed_password',
        'Bio of user_d4ef8972', 'https://example.com/profiles/user_d4ef8972.jpg', '2024-09-10 14:30:11.390273', '2024-09-20 14:30:11.390273'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '488cf604-21d2-416d-ad08-71a1a28540f0', 'user_488cf604', 'user_488cf604@example.com', 'hashed_password',
        'Bio of user_488cf604', 'https://example.com/profiles/user_488cf604.jpg', '2024-11-19 14:30:11.390277', '2024-12-08 14:30:11.390277'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '699a0f8c-a70b-4e7c-95da-af2a1a874135', 'user_699a0f8c', 'user_699a0f8c@example.com', 'hashed_password',
        'Bio of user_699a0f8c', 'https://example.com/profiles/user_699a0f8c.jpg', '2024-06-16 14:30:11.390281', '2024-07-10 14:30:11.390281'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        'c703c511-7208-4166-b68d-f71899018b12', 'user_c703c511', 'user_c703c511@example.com', 'hashed_password',
        'Bio of user_c703c511', 'https://example.com/profiles/user_c703c511.jpg', '2024-08-08 14:30:11.390285', '2024-08-30 14:30:11.390285'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '71c040a1-4ffd-4e48-8ae9-d1579f39a9fa', 'user_71c040a1', 'user_71c040a1@example.com', 'hashed_password',
        'Bio of user_71c040a1', 'https://example.com/profiles/user_71c040a1.jpg', '2024-10-29 14:30:11.390289', '2024-11-13 14:30:11.390289'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        'b697998f-4712-46b5-8532-4f4c68e4927c', 'user_b697998f', 'user_b697998f@example.com', 'hashed_password',
        'Bio of user_b697998f', 'https://example.com/profiles/user_b697998f.jpg', '2024-08-02 14:30:11.390293', '2024-08-25 14:30:11.390293'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '53b658e1-f8fd-4133-99c8-02f2e2ce422d', 'user_53b658e1', 'user_53b658e1@example.com', 'hashed_password',
        'Bio of user_53b658e1', 'https://example.com/profiles/user_53b658e1.jpg', '2024-07-03 14:30:11.390296', '2024-07-24 14:30:11.390296'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '8acd47d7-c6ef-440c-b929-de39d9e1e0c7', 'user_8acd47d7', 'user_8acd47d7@example.com', 'hashed_password',
        'Bio of user_8acd47d7', 'https://example.com/profiles/user_8acd47d7.jpg', '2024-06-01 14:30:11.390300', '2024-06-12 14:30:11.390300'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        'f436ba40-ba79-40ae-90d9-1c7cd5cace8d', 'user_f436ba40', 'user_f436ba40@example.com', 'hashed_password',
        'Bio of user_f436ba40', 'https://example.com/profiles/user_f436ba40.jpg', '2025-01-09 14:30:11.390304', '2025-01-13 14:30:11.390304'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        'b9208830-774a-4676-852a-9019cf3e5c63', 'user_b9208830', 'user_b9208830@example.com', 'hashed_password',
        'Bio of user_b9208830', 'https://example.com/profiles/user_b9208830.jpg', '2024-12-20 14:30:11.390307', '2025-01-11 14:30:11.390307'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '0c755f0d-52fa-42f2-bd4d-187d7822e9c9', 'user_0c755f0d', 'user_0c755f0d@example.com', 'hashed_password',
        'Bio of user_0c755f0d', 'https://example.com/profiles/user_0c755f0d.jpg', '2024-12-23 14:30:11.390312', '2025-01-03 14:30:11.390312'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        'd9588d50-5f13-4b66-a531-e4e290f9ac0f', 'user_d9588d50', 'user_d9588d50@example.com', 'hashed_password',
        'Bio of user_d9588d50', 'https://example.com/profiles/user_d9588d50.jpg', '2024-08-31 14:30:11.390316', '2024-09-19 14:30:11.390316'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '7223bd3a-e482-4d14-bd9f-552f60622fee', 'user_7223bd3a', 'user_7223bd3a@example.com', 'hashed_password',
        'Bio of user_7223bd3a', 'https://example.com/profiles/user_7223bd3a.jpg', '2024-03-27 14:30:11.390323', '2024-04-12 14:30:11.390323'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '91e6c97a-83d2-4550-b5d6-09c10568cc92', 'user_91e6c97a', 'user_91e6c97a@example.com', 'hashed_password',
        'Bio of user_91e6c97a', 'https://example.com/profiles/user_91e6c97a.jpg', '2024-05-02 14:30:11.390329', '2024-05-17 14:30:11.390329'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '6e7a436a-a896-47bf-8160-e81a5107f3ed', 'user_6e7a436a', 'user_6e7a436a@example.com', 'hashed_password',
        'Bio of user_6e7a436a', 'https://example.com/profiles/user_6e7a436a.jpg', '2024-07-12 14:30:11.390335', '2024-07-22 14:30:11.390335'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '7f905030-8831-4f16-aeff-ddfae4c4e45b', 'user_7f905030', 'user_7f905030@example.com', 'hashed_password',
        'Bio of user_7f905030', 'https://example.com/profiles/user_7f905030.jpg', '2024-07-03 14:30:11.390343', '2024-08-02 14:30:11.390343'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '8cb78e82-a9c9-4550-9861-a28a3b4c0342', 'user_8cb78e82', 'user_8cb78e82@example.com', 'hashed_password',
        'Bio of user_8cb78e82', 'https://example.com/profiles/user_8cb78e82.jpg', '2024-04-19 14:30:11.390347', '2024-04-19 14:30:11.390347'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '2e8bc313-676a-43bd-be66-01e8e88dcbb7', 'user_2e8bc313', 'user_2e8bc313@example.com', 'hashed_password',
        'Bio of user_2e8bc313', 'https://example.com/profiles/user_2e8bc313.jpg', '2024-04-16 14:30:11.390351', '2024-05-10 14:30:11.390351'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        'd07a734b-df00-4d1d-a15f-fbfe418fe807', 'user_d07a734b', 'user_d07a734b@example.com', 'hashed_password',
        'Bio of user_d07a734b', 'https://example.com/profiles/user_d07a734b.jpg', '2024-05-08 14:30:11.390355', '2024-06-06 14:30:11.390355'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '13d2882b-17c5-47b9-bbe3-736984976985', 'user_13d2882b', 'user_13d2882b@example.com', 'hashed_password',
        'Bio of user_13d2882b', 'https://example.com/profiles/user_13d2882b.jpg', '2024-12-18 14:30:11.390359', '2025-01-06 14:30:11.390359'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '412d4aec-7bd0-4e29-a237-392d09029ed4', 'user_412d4aec', 'user_412d4aec@example.com', 'hashed_password',
        'Bio of user_412d4aec', 'https://example.com/profiles/user_412d4aec.jpg', '2024-03-09 14:30:11.390363', '2024-03-20 14:30:11.390363'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '606ebf50-ffcb-4315-a892-c9f2dafaed32', 'user_606ebf50', 'user_606ebf50@example.com', 'hashed_password',
        'Bio of user_606ebf50', 'https://example.com/profiles/user_606ebf50.jpg', '2024-06-03 14:30:11.390367', '2024-06-16 14:30:11.390367'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '5ca62b37-1b6e-4872-8fbd-e6163520ef13', 'user_5ca62b37', 'user_5ca62b37@example.com', 'hashed_password',
        'Bio of user_5ca62b37', 'https://example.com/profiles/user_5ca62b37.jpg', '2025-01-15 14:30:11.390371', '2025-02-12 14:30:11.390371'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '8cb61520-fd74-4e18-8c82-668c6d088264', 'user_8cb61520', 'user_8cb61520@example.com', 'hashed_password',
        'Bio of user_8cb61520', 'https://example.com/profiles/user_8cb61520.jpg', '2024-06-23 14:30:11.390375', '2024-07-16 14:30:11.390375'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        'c98c32d8-a040-4f94-8e06-4d538f89e0dc', 'user_c98c32d8', 'user_c98c32d8@example.com', 'hashed_password',
        'Bio of user_c98c32d8', 'https://example.com/profiles/user_c98c32d8.jpg', '2024-07-08 14:30:11.390378', '2024-07-26 14:30:11.390378'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '10919c49-5177-4a73-a703-03835738f105', 'user_10919c49', 'user_10919c49@example.com', 'hashed_password',
        'Bio of user_10919c49', 'https://example.com/profiles/user_10919c49.jpg', '2024-08-27 14:30:11.390382', '2024-09-02 14:30:11.390382'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '1288136e-65ae-4cab-96ac-1dcf147f94e4', 'user_1288136e', 'user_1288136e@example.com', 'hashed_password',
        'Bio of user_1288136e', 'https://example.com/profiles/user_1288136e.jpg', '2024-12-07 14:30:11.390386', '2025-01-04 14:30:11.390386'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        'f391768c-7823-4784-b04d-a38a27b88967', 'user_f391768c', 'user_f391768c@example.com', 'hashed_password',
        'Bio of user_f391768c', 'https://example.com/profiles/user_f391768c.jpg', '2024-03-20 14:30:11.390390', '2024-03-20 14:30:11.390390'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        'edda8670-c8d9-4fa9-acb0-9d7e69e1bca9', 'user_edda8670', 'user_edda8670@example.com', 'hashed_password',
        'Bio of user_edda8670', 'https://example.com/profiles/user_edda8670.jpg', '2024-12-26 14:30:11.390393', '2025-01-16 14:30:11.390393'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        'e8579452-e2ab-48f4-8681-50a69c865547', 'user_e8579452', 'user_e8579452@example.com', 'hashed_password',
        'Bio of user_e8579452', 'https://example.com/profiles/user_e8579452.jpg', '2024-09-04 14:30:11.390397', '2024-10-01 14:30:11.390397'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '4aadc413-3ab0-4dc7-9cec-0c6dd2f04540', 'user_4aadc413', 'user_4aadc413@example.com', 'hashed_password',
        'Bio of user_4aadc413', 'https://example.com/profiles/user_4aadc413.jpg', '2024-07-12 14:30:11.390401', '2024-08-08 14:30:11.390401'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '8ff4183f-8f6e-4ccb-9ab5-2ad2b0878ecb', 'user_8ff4183f', 'user_8ff4183f@example.com', 'hashed_password',
        'Bio of user_8ff4183f', 'https://example.com/profiles/user_8ff4183f.jpg', '2024-03-28 14:30:11.390404', '2024-04-24 14:30:11.390404'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        'f6cda0db-6d4b-4050-bfae-f360427e31ce', 'user_f6cda0db', 'user_f6cda0db@example.com', 'hashed_password',
        'Bio of user_f6cda0db', 'https://example.com/profiles/user_f6cda0db.jpg', '2024-12-22 14:30:11.390410', '2025-01-16 14:30:11.390410'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '9c2fe57a-858b-4f54-83d1-16dbf396b752', 'user_9c2fe57a', 'user_9c2fe57a@example.com', 'hashed_password',
        'Bio of user_9c2fe57a', 'https://example.com/profiles/user_9c2fe57a.jpg', '2024-05-04 14:30:11.390416', '2024-05-08 14:30:11.390416'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '011d86ec-2fb8-473d-a0d1-7f8a42a611d3', 'user_011d86ec', 'user_011d86ec@example.com', 'hashed_password',
        'Bio of user_011d86ec', 'https://example.com/profiles/user_011d86ec.jpg', '2024-11-11 14:30:11.390423', '2024-11-21 14:30:11.390423'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        'b63b3614-0210-41af-a843-9775c3c06121', 'user_b63b3614', 'user_b63b3614@example.com', 'hashed_password',
        'Bio of user_b63b3614', 'https://example.com/profiles/user_b63b3614.jpg', '2024-12-28 14:30:11.390429', '2025-01-11 14:30:11.390429'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '8b8bc0e4-8066-4b44-850d-abf220c9b056', 'user_8b8bc0e4', 'user_8b8bc0e4@example.com', 'hashed_password',
        'Bio of user_8b8bc0e4', 'https://example.com/profiles/user_8b8bc0e4.jpg', '2024-08-26 14:30:11.390437', '2024-09-05 14:30:11.390437'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '5fa7e24b-fcee-48d8-b8b1-1114b9b2094d', 'user_5fa7e24b', 'user_5fa7e24b@example.com', 'hashed_password',
        'Bio of user_5fa7e24b', 'https://example.com/profiles/user_5fa7e24b.jpg', '2024-12-14 14:30:11.390443', '2025-01-10 14:30:11.390443'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '94d6b67f-87b1-42ee-a177-5e4788b3a5a3', 'user_94d6b67f', 'user_94d6b67f@example.com', 'hashed_password',
        'Bio of user_94d6b67f', 'https://example.com/profiles/user_94d6b67f.jpg', '2024-10-04 14:30:11.390451', '2024-10-11 14:30:11.390451'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '91829ca9-91b2-4586-92d4-3cbdfc515b07', 'user_91829ca9', 'user_91829ca9@example.com', 'hashed_password',
        'Bio of user_91829ca9', 'https://example.com/profiles/user_91829ca9.jpg', '2024-07-06 14:30:11.390455', '2024-07-15 14:30:11.390455'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        'a556f3dd-12bd-44c4-9a5a-49621b297736', 'user_a556f3dd', 'user_a556f3dd@example.com', 'hashed_password',
        'Bio of user_a556f3dd', 'https://example.com/profiles/user_a556f3dd.jpg', '2024-05-31 14:30:11.390459', '2024-06-02 14:30:11.390459'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '03481f97-cfe7-468e-b355-116bba4e8051', 'user_03481f97', 'user_03481f97@example.com', 'hashed_password',
        'Bio of user_03481f97', 'https://example.com/profiles/user_03481f97.jpg', '2024-02-23 14:30:11.390464', '2024-02-25 14:30:11.390464'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '332ca334-80c2-49b3-b742-c7f12d99dfba', 'user_332ca334', 'user_332ca334@example.com', 'hashed_password',
        'Bio of user_332ca334', 'https://example.com/profiles/user_332ca334.jpg', '2024-09-23 14:30:11.390468', '2024-10-04 14:30:11.390468'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '32fd4910-c648-4a50-b86b-9195d25d3461', 'user_32fd4910', 'user_32fd4910@example.com', 'hashed_password',
        'Bio of user_32fd4910', 'https://example.com/profiles/user_32fd4910.jpg', '2024-10-20 14:30:11.390471', '2024-11-02 14:30:11.390471'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '4b750317-7e0b-4986-beb9-1df4ed3ad6f2', 'user_4b750317', 'user_4b750317@example.com', 'hashed_password',
        'Bio of user_4b750317', 'https://example.com/profiles/user_4b750317.jpg', '2024-03-07 14:30:11.390475', '2024-03-23 14:30:11.390475'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '724fc156-9e5e-43ee-a0fb-2f080fab3721', 'user_724fc156', 'user_724fc156@example.com', 'hashed_password',
        'Bio of user_724fc156', 'https://example.com/profiles/user_724fc156.jpg', '2024-12-03 14:30:11.390479', '2024-12-10 14:30:11.390479'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '92f84112-7d4d-448b-818e-b2b74f396858', 'user_92f84112', 'user_92f84112@example.com', 'hashed_password',
        'Bio of user_92f84112', 'https://example.com/profiles/user_92f84112.jpg', '2024-07-06 14:30:11.390482', '2024-07-14 14:30:11.390482'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        'dff097d3-1d58-429f-9261-e0155b99c4e7', 'user_dff097d3', 'user_dff097d3@example.com', 'hashed_password',
        'Bio of user_dff097d3', 'https://example.com/profiles/user_dff097d3.jpg', '2024-04-22 14:30:11.390486', '2024-04-25 14:30:11.390486'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        'bf95245c-cf8f-46e7-8660-08e4e2e3d4a2', 'user_bf95245c', 'user_bf95245c@example.com', 'hashed_password',
        'Bio of user_bf95245c', 'https://example.com/profiles/user_bf95245c.jpg', '2024-02-21 14:30:11.390489', '2024-03-03 14:30:11.390489'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '17cc124f-b752-457d-8447-5cdfffd63a10', 'user_17cc124f', 'user_17cc124f@example.com', 'hashed_password',
        'Bio of user_17cc124f', 'https://example.com/profiles/user_17cc124f.jpg', '2024-09-16 14:30:11.390493', '2024-09-17 14:30:11.390493'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '6d9d30fd-e2ed-4a2f-9034-8531d7723e11', 'user_6d9d30fd', 'user_6d9d30fd@example.com', 'hashed_password',
        'Bio of user_6d9d30fd', 'https://example.com/profiles/user_6d9d30fd.jpg', '2024-12-07 14:30:11.390497', '2024-12-17 14:30:11.390497'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '4e99bfb6-a958-4f2f-a3b1-402cd84fdf5b', 'user_4e99bfb6', 'user_4e99bfb6@example.com', 'hashed_password',
        'Bio of user_4e99bfb6', 'https://example.com/profiles/user_4e99bfb6.jpg', '2024-12-27 14:30:11.390501', '2024-12-31 14:30:11.390501'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '781ec698-ba4b-4723-a3c9-8b0694842e54', 'user_781ec698', 'user_781ec698@example.com', 'hashed_password',
        'Bio of user_781ec698', 'https://example.com/profiles/user_781ec698.jpg', '2024-07-21 14:30:11.390504', '2024-07-30 14:30:11.390504'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '3f9017fc-ddc0-4467-a609-672bef2ab6e1', 'user_3f9017fc', 'user_3f9017fc@example.com', 'hashed_password',
        'Bio of user_3f9017fc', 'https://example.com/profiles/user_3f9017fc.jpg', '2024-05-19 14:30:11.390510', '2024-05-29 14:30:11.390510'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '39c05142-af35-40ae-a9bf-95e0c58a5ef5', 'user_39c05142', 'user_39c05142@example.com', 'hashed_password',
        'Bio of user_39c05142', 'https://example.com/profiles/user_39c05142.jpg', '2024-11-03 14:30:11.390517', '2024-11-16 14:30:11.390517'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '966ccd39-4d29-4318-95be-96f719f8576f', 'user_966ccd39', 'user_966ccd39@example.com', 'hashed_password',
        'Bio of user_966ccd39', 'https://example.com/profiles/user_966ccd39.jpg', '2024-12-27 14:30:11.390523', '2025-01-13 14:30:11.390523'
    );
    
    INSERT INTO users (id, username, email, password_hash, bio, profile_picture_url, created_at, updated_at)
    VALUES (
        '8c5a0a04-13ff-412e-9552-6cdcb035bbe9', 'user_8c5a0a04', 'user_8c5a0a04@example.com', 'hashed_password',
        'Bio of user_8c5a0a04', 'https://example.com/profiles/user_8c5a0a04.jpg', '2024-06-07 14:30:11.390530', '2024-07-02 14:30:11.390530'
    );
    