CCREATE TABLE blogs (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    author_id UUID NOT NULL,
    title VARCHAR(255) NOT NULL,
    slug VARCHAR(255) UNIQUE NOT NULL, -- URL-friendly title
    content TEXT NOT NULL,
    tags TEXT[],
    image_url TEXT,
    views INT DEFAULT 0,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW(),
    is_published BOOLEAN DEFAULT TRUE,
    
    FOREIGN KEY (author_id) REFERENCES users(id) ON DELETE CASCADE
);


    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'b3737452-1993-478c-9a9b-a67c6f634f89', '2695ae5a-caf7-4810-b901-625cc6c712ca', 'Sample Blog Title 1', 'sample-blog-1', 'This is the content of Sample Blog 1. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_1.jpg', 7665, '2024-03-08 14:27:22.645386', '2024-03-12 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '292a1c1f-a18a-4cfa-9ab0-621bba6ae66d', '7223bd3a-e482-4d14-bd9f-552f60622fee', 'Sample Blog Title 2', 'sample-blog-2', 'This is the content of Sample Blog 2. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_2.jpg', 9346, '2024-10-02 14:27:22.645386', '2024-10-06 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '0f1ef0b1-a4df-4a00-bec7-0410816d10cd', '5ff32bbc-b5c1-411d-9687-caf3f505df2d', 'Sample Blog Title 3', 'sample-blog-3', 'This is the content of Sample Blog 3. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_3.jpg', 5300, '2024-03-12 14:27:22.645386', '2024-03-12 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '3280ce8a-f55e-445c-a22c-aedac31fe8d5', 'f499de7d-995e-4017-928d-b40736f9ea79', 'Sample Blog Title 4', 'sample-blog-4', 'This is the content of Sample Blog 4. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_4.jpg', 8108, '2024-05-19 14:27:22.645386', '2024-05-24 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'c00ea5a8-01a6-478b-b23b-74fd5c9bb277', '8acd47d7-c6ef-440c-b929-de39d9e1e0c7', 'Sample Blog Title 5', 'sample-blog-5', 'This is the content of Sample Blog 5. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_5.jpg', 1247, '2025-02-07 14:27:22.645386', '2025-02-08 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'cd101e7b-8afd-480b-ab81-5c9db5c33c05', 'b9208830-774a-4676-852a-9019cf3e5c63', 'Sample Blog Title 6', 'sample-blog-6', 'This is the content of Sample Blog 6. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_6.jpg', 9722, '2024-12-16 14:27:22.645386', '2024-12-16 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd6ab10e2-7850-4803-a12d-d6d6dcb8ff27', '2038934d-d590-4e9f-bd2b-f46cc1acf46d', 'Sample Blog Title 7', 'sample-blog-7', 'This is the content of Sample Blog 7. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_7.jpg', 9697, '2024-06-11 14:27:22.645386', '2024-06-12 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '3114c685-99ab-45eb-99cc-e5db110ac004', '2f2d6fcf-e873-4f1f-98ca-c55d51df6ef9', 'Sample Blog Title 8', 'sample-blog-8', 'This is the content of Sample Blog 8. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_8.jpg', 5953, '2024-03-28 14:27:22.645386', '2024-03-29 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '51c332b5-db9b-4ef1-8f0a-3eec4d02ee78', 'f477d597-fae2-4230-b4d9-ece9fdafaa7d', 'Sample Blog Title 9', 'sample-blog-9', 'This is the content of Sample Blog 9. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_9.jpg', 4757, '2024-02-19 14:27:22.645386', '2024-02-27 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'c2d77c04-0260-4822-b67c-5cd091ebfc0c', 'f8b36547-801b-49d2-a8bc-5c4d7e766119', 'Sample Blog Title 10', 'sample-blog-10', 'This is the content of Sample Blog 10. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_10.jpg', 9875, '2024-08-26 14:27:22.645386', '2024-09-04 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '7ac28a0e-5e49-4ff4-bc4d-4c3724bac8c7', 'edda8670-c8d9-4fa9-acb0-9d7e69e1bca9', 'Sample Blog Title 11', 'sample-blog-11', 'This is the content of Sample Blog 11. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_11.jpg', 6644, '2024-03-19 14:27:22.645386', '2024-03-19 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'ce0f2f80-c6f4-4fea-82c5-bd6d3bfc72e3', '6e7a436a-a896-47bf-8160-e81a5107f3ed', 'Sample Blog Title 12', 'sample-blog-12', 'This is the content of Sample Blog 12. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_12.jpg', 8090, '2024-02-18 14:27:22.645386', '2024-02-21 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'c6c9a58f-ae09-491b-a437-53bffa627f90', 'f6cda0db-6d4b-4050-bfae-f360427e31ce', 'Sample Blog Title 13', 'sample-blog-13', 'This is the content of Sample Blog 13. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_13.jpg', 4488, '2024-11-27 14:27:22.645386', '2024-12-06 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '4b1972e2-1e6b-4aaf-8e76-8868088e53d8', '040e0ba8-42e8-49b0-b72c-00a29329c22c', 'Sample Blog Title 14', 'sample-blog-14', 'This is the content of Sample Blog 14. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_14.jpg', 5885, '2024-12-25 14:27:22.645386', '2024-12-28 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '89921108-1b92-4f21-af2d-890b6c7e2b9d', '781ec698-ba4b-4723-a3c9-8b0694842e54', 'Sample Blog Title 15', 'sample-blog-15', 'This is the content of Sample Blog 15. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_15.jpg', 4106, '2024-09-13 14:27:22.645386', '2024-09-23 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '6c7daf3f-8128-46b6-a136-aa29f2c905fd', 'b9208830-774a-4676-852a-9019cf3e5c63', 'Sample Blog Title 16', 'sample-blog-16', 'This is the content of Sample Blog 16. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_16.jpg', 8584, '2024-10-30 14:27:22.645386', '2024-11-07 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'a564d459-6acb-4552-87b3-963a3ff940db', 'd6a6524f-a0b3-4e39-b3b4-faae23adaf29', 'Sample Blog Title 17', 'sample-blog-17', 'This is the content of Sample Blog 17. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_17.jpg', 260, '2024-03-24 14:27:22.645386', '2024-04-02 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '8da6cc7c-77a4-4eeb-ba6d-ac3b3074450b', 'd4ef8972-f69c-40c9-a7d3-bc0ef5868391', 'Sample Blog Title 18', 'sample-blog-18', 'This is the content of Sample Blog 18. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_18.jpg', 241, '2024-07-27 14:27:22.645386', '2024-07-31 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '0d2e705b-1096-4568-bc18-fd524c98ad90', 'c98c32d8-a040-4f94-8e06-4d538f89e0dc', 'Sample Blog Title 19', 'sample-blog-19', 'This is the content of Sample Blog 19. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_19.jpg', 9019, '2024-06-02 14:27:22.645386', '2024-06-08 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '41e3f112-9a98-4e84-ad86-4f424a8feeac', 'd9588d50-5f13-4b66-a531-e4e290f9ac0f', 'Sample Blog Title 20', 'sample-blog-20', 'This is the content of Sample Blog 20. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_20.jpg', 9600, '2024-07-20 14:27:22.645386', '2024-07-23 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'ea942bdd-b29b-4c31-bd06-4a1247119b4b', '91829ca9-91b2-4586-92d4-3cbdfc515b07', 'Sample Blog Title 21', 'sample-blog-21', 'This is the content of Sample Blog 21. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_21.jpg', 1948, '2025-01-27 14:27:22.645386', '2025-02-01 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '7b74a690-27cf-47c5-b974-dad174a9d2b7', 'b697998f-4712-46b5-8532-4f4c68e4927c', 'Sample Blog Title 22', 'sample-blog-22', 'This is the content of Sample Blog 22. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_22.jpg', 7791, '2024-06-04 14:27:22.645386', '2024-06-14 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '26d76c1e-8935-4a6a-9d44-81ca3d84e33b', '26f058a6-7f8a-4e82-aae5-10137c657f5e', 'Sample Blog Title 23', 'sample-blog-23', 'This is the content of Sample Blog 23. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_23.jpg', 4365, '2024-03-14 14:27:22.645386', '2024-03-15 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '7003e611-bdc6-41f6-b695-c88ea01a3f92', '51e04f09-ce7a-49aa-8892-269a46065300', 'Sample Blog Title 24', 'sample-blog-24', 'This is the content of Sample Blog 24. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_24.jpg', 2058, '2024-03-24 14:27:22.645386', '2024-03-25 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '4d681aae-0e19-4707-a44a-e100e9120772', '26f058a6-7f8a-4e82-aae5-10137c657f5e', 'Sample Blog Title 25', 'sample-blog-25', 'This is the content of Sample Blog 25. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_25.jpg', 8116, '2024-07-27 14:27:22.645386', '2024-08-01 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '6ff4761d-efee-4d1d-b9c8-9c9eb8bae810', 'edda8670-c8d9-4fa9-acb0-9d7e69e1bca9', 'Sample Blog Title 26', 'sample-blog-26', 'This is the content of Sample Blog 26. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_26.jpg', 7069, '2024-05-30 14:27:22.645386', '2024-06-06 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '0f411e54-ce74-4ef1-89ea-27a53ddc8707', '2695ae5a-caf7-4810-b901-625cc6c712ca', 'Sample Blog Title 27', 'sample-blog-27', 'This is the content of Sample Blog 27. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_27.jpg', 9885, '2024-12-04 14:27:22.645386', '2024-12-07 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'bf09ab76-7076-473c-b05a-6ae59b51bbeb', 'dff097d3-1d58-429f-9261-e0155b99c4e7', 'Sample Blog Title 28', 'sample-blog-28', 'This is the content of Sample Blog 28. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_28.jpg', 2206, '2024-03-10 14:27:22.645386', '2024-03-14 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '2c2c4097-3f08-44cd-9c21-b90a5760ca0f', '71812813-de60-483c-8faa-f640965b23f5', 'Sample Blog Title 29', 'sample-blog-29', 'This is the content of Sample Blog 29. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_29.jpg', 1354, '2025-01-11 14:27:22.645386', '2025-01-19 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '4a01aed7-d889-4478-a244-350e20a4d5d8', '8b8bc0e4-8066-4b44-850d-abf220c9b056', 'Sample Blog Title 30', 'sample-blog-30', 'This is the content of Sample Blog 30. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_30.jpg', 1079, '2024-04-25 14:27:22.645386', '2024-05-04 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '03475dff-f163-4dc0-8fc6-dc804997c583', '9d78a484-6190-4924-b52b-89a82f840a7f', 'Sample Blog Title 31', 'sample-blog-31', 'This is the content of Sample Blog 31. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_31.jpg', 2994, '2025-01-16 14:27:22.645386', '2025-01-17 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'bed48f95-d805-4487-b406-fff72de40db2', 'd6d495d6-719f-4d8a-9237-9a823d1728b3', 'Sample Blog Title 32', 'sample-blog-32', 'This is the content of Sample Blog 32. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_32.jpg', 9011, '2024-05-22 14:27:22.645386', '2024-05-23 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'de1cec76-4795-4076-9f7e-d3629924286e', '4d132b27-8363-4bb0-8618-360068914d24', 'Sample Blog Title 33', 'sample-blog-33', 'This is the content of Sample Blog 33. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_33.jpg', 1815, '2024-02-29 14:27:22.645386', '2024-03-05 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '2b998aed-6733-4adf-bf94-144d5b3ef221', '724fc156-9e5e-43ee-a0fb-2f080fab3721', 'Sample Blog Title 34', 'sample-blog-34', 'This is the content of Sample Blog 34. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_34.jpg', 7539, '2024-10-23 14:27:22.645386', '2024-10-30 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'cbc7e345-7842-4cce-855b-502ad17078d4', '8acd47d7-c6ef-440c-b929-de39d9e1e0c7', 'Sample Blog Title 35', 'sample-blog-35', 'This is the content of Sample Blog 35. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_35.jpg', 7814, '2024-10-16 14:27:22.645386', '2024-10-21 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '5f3ba8cb-762a-434b-a898-3d085c6a61c3', '53b658e1-f8fd-4133-99c8-02f2e2ce422d', 'Sample Blog Title 36', 'sample-blog-36', 'This is the content of Sample Blog 36. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_36.jpg', 496, '2024-08-16 14:27:22.645386', '2024-08-18 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '13d0e82c-d1b3-4aca-b903-65b759f2d83b', 'd9588d50-5f13-4b66-a531-e4e290f9ac0f', 'Sample Blog Title 37', 'sample-blog-37', 'This is the content of Sample Blog 37. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_37.jpg', 2024, '2025-01-29 14:27:22.645386', '2025-01-30 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '3b15007a-38d2-406a-86b1-aae51720d57f', '488cf604-21d2-416d-ad08-71a1a28540f0', 'Sample Blog Title 38', 'sample-blog-38', 'This is the content of Sample Blog 38. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_38.jpg', 1857, '2025-02-05 14:27:22.645386', '2025-02-10 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '044640d4-9b10-4778-9f52-991d132d02c7', 'a1b824e7-ffa2-4deb-a3fa-0aed799703ab', 'Sample Blog Title 39', 'sample-blog-39', 'This is the content of Sample Blog 39. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_39.jpg', 5220, '2024-11-29 14:27:22.645386', '2024-12-09 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'b696d1c5-8410-4fb5-bfb1-ff4d3907318a', 'fefcc24d-ad0c-4abd-8db3-f143d2aedc13', 'Sample Blog Title 40', 'sample-blog-40', 'This is the content of Sample Blog 40. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_40.jpg', 8686, '2024-02-21 14:27:22.645386', '2024-02-22 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '91c07772-016f-4baf-828a-02f79c04adef', '2695ae5a-caf7-4810-b901-625cc6c712ca', 'Sample Blog Title 41', 'sample-blog-41', 'This is the content of Sample Blog 41. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_41.jpg', 6812, '2025-01-25 14:27:22.645386', '2025-01-28 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'de6fb595-22fb-475e-a44d-4c06982c0fd2', '781ec698-ba4b-4723-a3c9-8b0694842e54', 'Sample Blog Title 42', 'sample-blog-42', 'This is the content of Sample Blog 42. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_42.jpg', 340, '2024-05-24 14:27:22.645386', '2024-05-30 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'cde33821-889f-436e-a764-10683f72eaad', '5fa7e24b-fcee-48d8-b8b1-1114b9b2094d', 'Sample Blog Title 43', 'sample-blog-43', 'This is the content of Sample Blog 43. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_43.jpg', 3965, '2024-10-16 14:27:22.645386', '2024-10-26 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e63b86b3-f960-4a53-85c0-eb109b79eafc', 'e988e97f-169c-4a2e-ae7d-06d0928a1faa', 'Sample Blog Title 44', 'sample-blog-44', 'This is the content of Sample Blog 44. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_44.jpg', 84, '2024-09-26 14:27:22.645386', '2024-09-26 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '02c315d0-e4b0-4dfb-b96e-7fe7ceb8f85a', '26f058a6-7f8a-4e82-aae5-10137c657f5e', 'Sample Blog Title 45', 'sample-blog-45', 'This is the content of Sample Blog 45. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_45.jpg', 180, '2024-07-08 14:27:22.645386', '2024-07-17 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '1dc55f87-24ac-4acc-a340-1dbbaa440515', 'bcacbd38-6630-44a4-a5de-66d359987f48', 'Sample Blog Title 46', 'sample-blog-46', 'This is the content of Sample Blog 46. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_46.jpg', 9133, '2024-10-25 14:27:22.645386', '2024-10-26 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '422a2c7d-9efc-4fc2-9d60-8f41d03abbe4', '7223bd3a-e482-4d14-bd9f-552f60622fee', 'Sample Blog Title 47', 'sample-blog-47', 'This is the content of Sample Blog 47. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_47.jpg', 5541, '2024-05-17 14:27:22.645386', '2024-05-25 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd48bda76-fe88-4aaa-ada7-1594d7731072', 'd0d198ab-54e5-4aeb-82df-582201a01e21', 'Sample Blog Title 48', 'sample-blog-48', 'This is the content of Sample Blog 48. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_48.jpg', 1797, '2024-12-21 14:27:22.645386', '2024-12-23 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '9766780e-2045-4458-aca4-5d36c29fe7a2', '8c5a0a04-13ff-412e-9552-6cdcb035bbe9', 'Sample Blog Title 49', 'sample-blog-49', 'This is the content of Sample Blog 49. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_49.jpg', 4101, '2024-12-12 14:27:22.645386', '2024-12-17 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'bdadefc2-7243-4921-ac1a-3684b44d5503', '8b36ef5f-2f60-46bd-9ca0-dafe04daaefa', 'Sample Blog Title 50', 'sample-blog-50', 'This is the content of Sample Blog 50. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_50.jpg', 6208, '2024-09-16 14:27:22.645386', '2024-09-23 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '8271f527-deb0-4a7b-8504-e24cd0a86a3a', 'edda8670-c8d9-4fa9-acb0-9d7e69e1bca9', 'Sample Blog Title 51', 'sample-blog-51', 'This is the content of Sample Blog 51. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_51.jpg', 4060, '2025-01-22 14:27:22.645386', '2025-01-24 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '6467c712-4039-41d0-9d17-03a9fddc3d6d', 'd6576192-4494-48ec-89bb-1a018450876d', 'Sample Blog Title 52', 'sample-blog-52', 'This is the content of Sample Blog 52. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_52.jpg', 4523, '2024-06-12 14:27:22.645386', '2024-06-22 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '862b1bb3-e18e-4a47-bf43-270b19dcce71', 'c98c32d8-a040-4f94-8e06-4d538f89e0dc', 'Sample Blog Title 53', 'sample-blog-53', 'This is the content of Sample Blog 53. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_53.jpg', 6056, '2024-11-18 14:27:22.645386', '2024-11-27 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'c1bc5134-639e-4ba6-a89f-b34be4f3698a', '91829ca9-91b2-4586-92d4-3cbdfc515b07', 'Sample Blog Title 54', 'sample-blog-54', 'This is the content of Sample Blog 54. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_54.jpg', 4018, '2024-11-14 14:27:22.645386', '2024-11-22 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'f3857afc-f0ba-4f0e-a511-835764144a88', '040e0ba8-42e8-49b0-b72c-00a29329c22c', 'Sample Blog Title 55', 'sample-blog-55', 'This is the content of Sample Blog 55. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_55.jpg', 6906, '2024-08-20 14:27:22.645386', '2024-08-26 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'c9e9b545-fb55-4523-96ce-2571470e8d53', '040e0ba8-42e8-49b0-b72c-00a29329c22c', 'Sample Blog Title 56', 'sample-blog-56', 'This is the content of Sample Blog 56. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_56.jpg', 6682, '2024-10-22 14:27:22.645386', '2024-10-25 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'b0a43637-046e-45c6-a99f-f3e140975860', '13d2882b-17c5-47b9-bbe3-736984976985', 'Sample Blog Title 57', 'sample-blog-57', 'This is the content of Sample Blog 57. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_57.jpg', 8110, '2024-06-05 14:27:22.645386', '2024-06-10 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '80fb9f02-3340-4578-9fec-1fbbcd687bd2', 'd6d495d6-719f-4d8a-9237-9a823d1728b3', 'Sample Blog Title 58', 'sample-blog-58', 'This is the content of Sample Blog 58. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_58.jpg', 5436, '2024-05-22 14:27:22.645386', '2024-05-25 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '39dc8495-1a5a-47d4-b497-981d9db90897', 'f783d009-7713-400d-91ef-d0bd454a3201', 'Sample Blog Title 59', 'sample-blog-59', 'This is the content of Sample Blog 59. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_59.jpg', 253, '2024-04-28 14:27:22.645386', '2024-05-05 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '142b5b11-7c56-4df9-bef2-d76b38e62294', '8cb78e82-a9c9-4550-9861-a28a3b4c0342', 'Sample Blog Title 60', 'sample-blog-60', 'This is the content of Sample Blog 60. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_60.jpg', 9629, '2024-12-14 14:27:22.645386', '2024-12-19 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '6c0a35f0-fcc2-4539-9538-6bba9d8e7b3c', '89139764-3150-4ea5-b980-61e8585f3a41', 'Sample Blog Title 61', 'sample-blog-61', 'This is the content of Sample Blog 61. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_61.jpg', 9871, '2024-09-15 14:27:22.645386', '2024-09-16 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'b8b2ea04-794a-4d93-9188-840f297bba3d', '572e96a6-e620-4318-88e7-dd75551e9878', 'Sample Blog Title 62', 'sample-blog-62', 'This is the content of Sample Blog 62. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_62.jpg', 9002, '2024-08-25 14:27:22.645386', '2024-09-02 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '1c40d758-5341-49a6-bfc0-3b3f59fc1f42', 'a1b824e7-ffa2-4deb-a3fa-0aed799703ab', 'Sample Blog Title 63', 'sample-blog-63', 'This is the content of Sample Blog 63. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_63.jpg', 5686, '2024-07-18 14:27:22.645386', '2024-07-25 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '0c6acde9-b8fd-4926-b7e5-c59403aaf2e4', '92f84112-7d4d-448b-818e-b2b74f396858', 'Sample Blog Title 64', 'sample-blog-64', 'This is the content of Sample Blog 64. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_64.jpg', 8540, '2024-07-05 14:27:22.645386', '2024-07-13 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '00c72d7d-126c-4ee9-9714-c19fa09f5df5', '13d2882b-17c5-47b9-bbe3-736984976985', 'Sample Blog Title 65', 'sample-blog-65', 'This is the content of Sample Blog 65. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_65.jpg', 4502, '2024-10-18 14:27:22.645386', '2024-10-24 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '9fa3c5a7-c26e-4b19-8784-105a9553add9', '040e0ba8-42e8-49b0-b72c-00a29329c22c', 'Sample Blog Title 66', 'sample-blog-66', 'This is the content of Sample Blog 66. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_66.jpg', 2166, '2024-11-21 14:27:22.645386', '2024-11-27 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '9468a1c6-b736-459d-9955-092d409a867b', 'f499de7d-995e-4017-928d-b40736f9ea79', 'Sample Blog Title 67', 'sample-blog-67', 'This is the content of Sample Blog 67. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_67.jpg', 976, '2024-06-16 14:27:22.645386', '2024-06-23 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '7b234567-21dc-427d-990c-ab50c3a4f7c3', 'c2791e81-4b59-4fc5-bb30-d92815d98716', 'Sample Blog Title 68', 'sample-blog-68', 'This is the content of Sample Blog 68. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_68.jpg', 555, '2024-11-17 14:27:22.645386', '2024-11-24 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'f4f7f30c-f7b8-4824-9619-f98b37c0468c', '2f2d6fcf-e873-4f1f-98ca-c55d51df6ef9', 'Sample Blog Title 69', 'sample-blog-69', 'This is the content of Sample Blog 69. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_69.jpg', 9676, '2024-03-29 14:27:22.645386', '2024-04-05 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '96c53944-30be-4a9e-9f54-c98a41efd166', '8b8bc0e4-8066-4b44-850d-abf220c9b056', 'Sample Blog Title 70', 'sample-blog-70', 'This is the content of Sample Blog 70. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_70.jpg', 1020, '2024-06-29 14:27:22.645386', '2024-06-30 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '490fd7c4-e1f3-4ad9-bc10-3377d24dc57b', 'f477d597-fae2-4230-b4d9-ece9fdafaa7d', 'Sample Blog Title 71', 'sample-blog-71', 'This is the content of Sample Blog 71. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_71.jpg', 5092, '2024-11-03 14:27:22.645386', '2024-11-12 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'f4c87ba3-1f6a-452a-a29b-43834143062f', '9c2fe57a-858b-4f54-83d1-16dbf396b752', 'Sample Blog Title 72', 'sample-blog-72', 'This is the content of Sample Blog 72. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_72.jpg', 5186, '2024-08-13 14:27:22.645386', '2024-08-21 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '93b618db-6466-4c93-8d38-655736044c23', 'f477d597-fae2-4230-b4d9-ece9fdafaa7d', 'Sample Blog Title 73', 'sample-blog-73', 'This is the content of Sample Blog 73. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_73.jpg', 5286, '2024-08-08 14:27:22.645386', '2024-08-08 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '89f92fa0-9ee6-485c-a59b-a3623977489e', '91829ca9-91b2-4586-92d4-3cbdfc515b07', 'Sample Blog Title 74', 'sample-blog-74', 'This is the content of Sample Blog 74. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_74.jpg', 1543, '2024-11-12 14:27:22.645386', '2024-11-13 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '6b039cc9-70f6-4db7-9463-5b48295ad2f3', '4aadc413-3ab0-4dc7-9cec-0c6dd2f04540', 'Sample Blog Title 75', 'sample-blog-75', 'This is the content of Sample Blog 75. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_75.jpg', 8225, '2024-10-27 14:27:22.645386', '2024-11-03 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '5b7224bd-a55d-49dc-ba70-ff96c40a1875', 'f8b36547-801b-49d2-a8bc-5c4d7e766119', 'Sample Blog Title 76', 'sample-blog-76', 'This is the content of Sample Blog 76. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_76.jpg', 8089, '2024-09-22 14:27:22.645386', '2024-09-22 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '17549c78-17aa-480f-b188-774b6694f5b4', '3f3b19f5-ccab-41f5-aea0-9bef9d1da2aa', 'Sample Blog Title 77', 'sample-blog-77', 'This is the content of Sample Blog 77. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_77.jpg', 1629, '2024-06-08 14:27:22.645386', '2024-06-18 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'ec609c6b-670e-4178-87cb-b0162cdf86fc', '572e96a6-e620-4318-88e7-dd75551e9878', 'Sample Blog Title 78', 'sample-blog-78', 'This is the content of Sample Blog 78. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_78.jpg', 1472, '2024-07-05 14:27:22.645386', '2024-07-05 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'fe6f1b49-3f41-443f-bf15-6941933fe6de', 'a1b824e7-ffa2-4deb-a3fa-0aed799703ab', 'Sample Blog Title 79', 'sample-blog-79', 'This is the content of Sample Blog 79. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_79.jpg', 9921, '2024-10-14 14:27:22.645386', '2024-10-16 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '03b4ccc7-a960-40bd-bdf8-36f56abbb2ee', '606ebf50-ffcb-4315-a892-c9f2dafaed32', 'Sample Blog Title 80', 'sample-blog-80', 'This is the content of Sample Blog 80. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_80.jpg', 7093, '2024-10-26 14:27:22.645386', '2024-10-26 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'bcbb8f8e-2222-4ecb-bafa-ec6fb34c0fdd', '0c755f0d-52fa-42f2-bd4d-187d7822e9c9', 'Sample Blog Title 81', 'sample-blog-81', 'This is the content of Sample Blog 81. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_81.jpg', 5783, '2024-06-06 14:27:22.645386', '2024-06-10 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '477f2fa1-8eb8-4c2f-b599-9306f05f7b1e', '8b8bc0e4-8066-4b44-850d-abf220c9b056', 'Sample Blog Title 82', 'sample-blog-82', 'This is the content of Sample Blog 82. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_82.jpg', 7119, '2025-01-14 14:27:22.645386', '2025-01-17 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'ce2d1d63-55b2-4d81-a8dc-a14eb8cde3c2', 'd6a6524f-a0b3-4e39-b3b4-faae23adaf29', 'Sample Blog Title 83', 'sample-blog-83', 'This is the content of Sample Blog 83. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_83.jpg', 1139, '2024-10-01 14:27:22.645386', '2024-10-04 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '277df0d9-1676-4e32-b0fd-1f49243af894', '51e04f09-ce7a-49aa-8892-269a46065300', 'Sample Blog Title 84', 'sample-blog-84', 'This is the content of Sample Blog 84. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_84.jpg', 4199, '2024-11-27 14:27:22.645386', '2024-12-06 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'fa17b600-8c23-4139-913e-b7800bd005e1', '53b658e1-f8fd-4133-99c8-02f2e2ce422d', 'Sample Blog Title 85', 'sample-blog-85', 'This is the content of Sample Blog 85. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_85.jpg', 6945, '2024-07-16 14:27:22.645386', '2024-07-25 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd6bbe8d3-8bd0-4d66-93b0-052e937cb242', 'f783d009-7713-400d-91ef-d0bd454a3201', 'Sample Blog Title 86', 'sample-blog-86', 'This is the content of Sample Blog 86. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_86.jpg', 9258, '2024-03-27 14:27:22.645386', '2024-03-27 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'ba680526-71b8-43cd-b60c-1b3593299df9', '966ccd39-4d29-4318-95be-96f719f8576f', 'Sample Blog Title 87', 'sample-blog-87', 'This is the content of Sample Blog 87. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_87.jpg', 5647, '2024-12-24 14:27:22.645386', '2025-01-03 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'af933547-2bb1-4db5-a43b-3fc4276dfe84', '91829ca9-91b2-4586-92d4-3cbdfc515b07', 'Sample Blog Title 88', 'sample-blog-88', 'This is the content of Sample Blog 88. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_88.jpg', 7061, '2025-02-02 14:27:22.645386', '2025-02-08 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '50bf9425-f350-4e98-a08c-fcc1ff36abaf', 'a1b824e7-ffa2-4deb-a3fa-0aed799703ab', 'Sample Blog Title 89', 'sample-blog-89', 'This is the content of Sample Blog 89. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_89.jpg', 7169, '2024-07-10 14:27:22.645386', '2024-07-19 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'ec491737-547d-40d0-9328-55088ae18395', '714a063a-fcf1-451c-b72a-1a2c27e91f33', 'Sample Blog Title 90', 'sample-blog-90', 'This is the content of Sample Blog 90. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_90.jpg', 8577, '2024-11-20 14:27:22.645386', '2024-11-23 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'a3e24bc3-8059-4d3c-9b48-b5121201fc6e', '26f058a6-7f8a-4e82-aae5-10137c657f5e', 'Sample Blog Title 91', 'sample-blog-91', 'This is the content of Sample Blog 91. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_91.jpg', 3452, '2024-08-02 14:27:22.645386', '2024-08-10 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'cfc0ea92-f288-4e72-b130-76cf73a53e23', '2695ae5a-caf7-4810-b901-625cc6c712ca', 'Sample Blog Title 92', 'sample-blog-92', 'This is the content of Sample Blog 92. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_92.jpg', 9470, '2024-07-10 14:27:22.645386', '2024-07-10 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'ca18c1da-9ae3-49bf-bfc2-041155b9e4ff', 'e013d6b2-262b-4c70-976f-b082b6215570', 'Sample Blog Title 93', 'sample-blog-93', 'This is the content of Sample Blog 93. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_93.jpg', 6342, '2024-07-25 14:27:22.645386', '2024-08-02 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '3921a552-01c9-4e36-8d99-4b5f65b2bb90', 'de7f0e68-e4b5-4d9c-afe6-70a4ea3e0653', 'Sample Blog Title 94', 'sample-blog-94', 'This is the content of Sample Blog 94. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_94.jpg', 7296, '2025-01-13 14:27:22.645386', '2025-01-15 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '3441322c-3504-46c5-91f0-d429fb3e5d50', '103d8eb1-7e4b-4cb1-8daa-5cfa1e3d26ed', 'Sample Blog Title 95', 'sample-blog-95', 'This is the content of Sample Blog 95. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_95.jpg', 6923, '2024-03-04 14:27:22.645386', '2024-03-13 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '782832ca-7aa7-4178-9484-b11b0f02c3b8', '103d8eb1-7e4b-4cb1-8daa-5cfa1e3d26ed', 'Sample Blog Title 96', 'sample-blog-96', 'This is the content of Sample Blog 96. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_96.jpg', 8577, '2024-06-20 14:27:22.645386', '2024-06-24 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '05ea443d-ffcb-47e8-9e41-357b1a118131', 'f8b36547-801b-49d2-a8bc-5c4d7e766119', 'Sample Blog Title 97', 'sample-blog-97', 'This is the content of Sample Blog 97. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_97.jpg', 5891, '2024-07-03 14:27:22.645386', '2024-07-06 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'c97873e4-37f8-4b7c-9900-a271456ab67e', '94d6b67f-87b1-42ee-a177-5e4788b3a5a3', 'Sample Blog Title 98', 'sample-blog-98', 'This is the content of Sample Blog 98. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_98.jpg', 9180, '2024-08-07 14:27:22.645386', '2024-08-08 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e7230abe-3924-4990-b514-6865fd199f94', '5092b13d-a468-407a-a609-da88631cbdc7', 'Sample Blog Title 99', 'sample-blog-99', 'This is the content of Sample Blog 99. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_99.jpg', 4014, '2024-03-22 14:27:22.645386', '2024-03-31 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '71b7b0f3-b3a2-4dde-90e7-a33a00761f78', 'edda8670-c8d9-4fa9-acb0-9d7e69e1bca9', 'Sample Blog Title 100', 'sample-blog-100', 'This is the content of Sample Blog 100. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_100.jpg', 5639, '2024-12-02 14:27:22.645386', '2024-12-03 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '71562f9d-466a-4158-8dbe-fac4a1a24845', '4aadc413-3ab0-4dc7-9cec-0c6dd2f04540', 'Sample Blog Title 101', 'sample-blog-101', 'This is the content of Sample Blog 101. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_101.jpg', 8487, '2024-07-22 14:27:22.645386', '2024-07-30 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'bbd0d33d-8711-4420-9b1a-28b75a7b9252', '5fa7e24b-fcee-48d8-b8b1-1114b9b2094d', 'Sample Blog Title 102', 'sample-blog-102', 'This is the content of Sample Blog 102. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_102.jpg', 3463, '2024-03-25 14:27:22.645386', '2024-03-26 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'be76b84b-6205-409d-90b2-e54ced7d901e', '92f84112-7d4d-448b-818e-b2b74f396858', 'Sample Blog Title 103', 'sample-blog-103', 'This is the content of Sample Blog 103. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_103.jpg', 6728, '2024-05-11 14:27:22.645386', '2024-05-20 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'ad27cffe-f967-4c0a-acdc-b4788e0f7e11', '5fa7e24b-fcee-48d8-b8b1-1114b9b2094d', 'Sample Blog Title 104', 'sample-blog-104', 'This is the content of Sample Blog 104. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_104.jpg', 4025, '2025-01-25 14:27:22.645386', '2025-01-31 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd1ace6bf-a4f0-43f6-a95f-3b3d7cf96ad9', '13d2882b-17c5-47b9-bbe3-736984976985', 'Sample Blog Title 105', 'sample-blog-105', 'This is the content of Sample Blog 105. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_105.jpg', 5366, '2024-06-01 14:27:22.645386', '2024-06-08 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '8bb598a7-f0cb-4100-8293-62939eca36e7', '6129a2ee-fd8d-4a70-b172-0ccd6faf9871', 'Sample Blog Title 106', 'sample-blog-106', 'This is the content of Sample Blog 106. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_106.jpg', 6228, '2024-08-30 14:27:22.645386', '2024-09-08 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '0c168b51-8e4b-4f40-b88e-9ba575d00f59', '6e7a436a-a896-47bf-8160-e81a5107f3ed', 'Sample Blog Title 107', 'sample-blog-107', 'This is the content of Sample Blog 107. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_107.jpg', 1579, '2024-08-08 14:27:22.645386', '2024-08-16 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'f49994c8-74ff-43fd-977d-4349370ef20e', '91829ca9-91b2-4586-92d4-3cbdfc515b07', 'Sample Blog Title 108', 'sample-blog-108', 'This is the content of Sample Blog 108. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_108.jpg', 8240, '2024-06-19 14:27:22.645386', '2024-06-29 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'c17bda73-717e-4997-a55a-f8ae38f482bc', 'ebe43708-3547-4832-91d0-26a62dd6564d', 'Sample Blog Title 109', 'sample-blog-109', 'This is the content of Sample Blog 109. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_109.jpg', 5503, '2024-08-19 14:27:22.645386', '2024-08-22 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'fc65f5f5-7ac5-4f1f-a4dd-b590abbfc4c3', 'fefcc24d-ad0c-4abd-8db3-f143d2aedc13', 'Sample Blog Title 110', 'sample-blog-110', 'This is the content of Sample Blog 110. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_110.jpg', 734, '2024-08-29 14:27:22.645386', '2024-08-31 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'b6d5a9fd-d0c1-4d49-bafd-8b3777045036', '9d78a484-6190-4924-b52b-89a82f840a7f', 'Sample Blog Title 111', 'sample-blog-111', 'This is the content of Sample Blog 111. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_111.jpg', 9375, '2025-01-17 14:27:22.645386', '2025-01-26 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '0181aa8f-d851-4f91-9ab1-8345ff38da1f', '9c2fe57a-858b-4f54-83d1-16dbf396b752', 'Sample Blog Title 112', 'sample-blog-112', 'This is the content of Sample Blog 112. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_112.jpg', 7682, '2024-08-14 14:27:22.645386', '2024-08-18 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '203a0f40-dfaa-4b48-918a-baacae20d6c9', 'f783d009-7713-400d-91ef-d0bd454a3201', 'Sample Blog Title 113', 'sample-blog-113', 'This is the content of Sample Blog 113. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_113.jpg', 6573, '2025-02-10 14:27:22.645386', '2025-02-17 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'fe1c9984-87c4-4f08-806e-57ad285c81be', 'fefcc24d-ad0c-4abd-8db3-f143d2aedc13', 'Sample Blog Title 114', 'sample-blog-114', 'This is the content of Sample Blog 114. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_114.jpg', 4318, '2024-02-22 14:27:22.645386', '2024-03-01 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'f98f37e7-45b9-4266-8f4d-fea86b05d3fb', '5092b13d-a468-407a-a609-da88631cbdc7', 'Sample Blog Title 115', 'sample-blog-115', 'This is the content of Sample Blog 115. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_115.jpg', 1371, '2024-09-01 14:27:22.645386', '2024-09-01 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'ab9cd3f8-7df8-427d-b6fe-27de4862dad4', 'e988e97f-169c-4a2e-ae7d-06d0928a1faa', 'Sample Blog Title 116', 'sample-blog-116', 'This is the content of Sample Blog 116. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_116.jpg', 1114, '2024-09-30 14:27:22.645386', '2024-10-05 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '9469457c-6eb3-48e5-908d-8b3239e19f18', '17cc124f-b752-457d-8447-5cdfffd63a10', 'Sample Blog Title 117', 'sample-blog-117', 'This is the content of Sample Blog 117. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_117.jpg', 4737, '2024-09-13 14:27:22.645386', '2024-09-22 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '49caf46f-1610-4315-9280-8ec52e7892a1', '1288136e-65ae-4cab-96ac-1dcf147f94e4', 'Sample Blog Title 118', 'sample-blog-118', 'This is the content of Sample Blog 118. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_118.jpg', 7787, '2024-05-19 14:27:22.645386', '2024-05-23 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '5cb93f52-1972-4e54-a428-b4bc4727e95c', '71c040a1-4ffd-4e48-8ae9-d1579f39a9fa', 'Sample Blog Title 119', 'sample-blog-119', 'This is the content of Sample Blog 119. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_119.jpg', 1359, '2025-01-04 14:27:22.645386', '2025-01-07 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '735412c1-abc7-4aab-a050-abf8db9b49d9', '011d86ec-2fb8-473d-a0d1-7f8a42a611d3', 'Sample Blog Title 120', 'sample-blog-120', 'This is the content of Sample Blog 120. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_120.jpg', 3463, '2024-10-03 14:27:22.645386', '2024-10-07 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'de5f8eef-b322-400e-8d99-7b6b76333fc6', 'e013d6b2-262b-4c70-976f-b082b6215570', 'Sample Blog Title 121', 'sample-blog-121', 'This is the content of Sample Blog 121. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_121.jpg', 7712, '2024-07-16 14:27:22.645386', '2024-07-22 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '33180c93-060a-49f9-935a-a089cc738581', 'd0d198ab-54e5-4aeb-82df-582201a01e21', 'Sample Blog Title 122', 'sample-blog-122', 'This is the content of Sample Blog 122. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_122.jpg', 4826, '2024-05-12 14:27:22.645386', '2024-05-21 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '4e9263e1-e496-477b-9b36-263a3f65af18', '13d2882b-17c5-47b9-bbe3-736984976985', 'Sample Blog Title 123', 'sample-blog-123', 'This is the content of Sample Blog 123. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_123.jpg', 9003, '2024-07-13 14:27:22.645386', '2024-07-18 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e2177ecd-ad9c-420e-a042-5aecf4441f9e', 'f783d009-7713-400d-91ef-d0bd454a3201', 'Sample Blog Title 124', 'sample-blog-124', 'This is the content of Sample Blog 124. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_124.jpg', 1744, '2024-06-12 14:27:22.645386', '2024-06-14 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'b68b650c-9d19-4023-b30a-b37f58b0a709', '4b750317-7e0b-4986-beb9-1df4ed3ad6f2', 'Sample Blog Title 125', 'sample-blog-125', 'This is the content of Sample Blog 125. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_125.jpg', 3096, '2024-11-07 14:27:22.645386', '2024-11-17 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '25babd11-979e-417e-8e2a-a36256813ad8', 'f8b36547-801b-49d2-a8bc-5c4d7e766119', 'Sample Blog Title 126', 'sample-blog-126', 'This is the content of Sample Blog 126. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_126.jpg', 181, '2024-12-11 14:27:22.645386', '2024-12-11 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '5c52a213-5ca6-4a2f-ae03-49ecf6f2cc13', 'dff097d3-1d58-429f-9261-e0155b99c4e7', 'Sample Blog Title 127', 'sample-blog-127', 'This is the content of Sample Blog 127. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_127.jpg', 5822, '2024-10-15 14:27:22.645386', '2024-10-19 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '13a5c58e-63a8-4bc2-8f23-e00406d84066', '71c040a1-4ffd-4e48-8ae9-d1579f39a9fa', 'Sample Blog Title 128', 'sample-blog-128', 'This is the content of Sample Blog 128. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_128.jpg', 9260, '2024-07-10 14:27:22.645386', '2024-07-14 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '99faf499-a6a4-4e71-b43d-431568f12a21', '5bbebc30-da22-4876-a2f4-04e55c37d11f', 'Sample Blog Title 129', 'sample-blog-129', 'This is the content of Sample Blog 129. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_129.jpg', 9566, '2024-09-29 14:27:22.645386', '2024-10-06 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '0cadedd3-ea6f-4774-905b-ac0a3ed2dd0e', '412d4aec-7bd0-4e29-a237-392d09029ed4', 'Sample Blog Title 130', 'sample-blog-130', 'This is the content of Sample Blog 130. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_130.jpg', 2418, '2024-09-19 14:27:22.645386', '2024-09-22 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '8592d0b3-d8b3-413c-b473-43d6515e0fe0', '26f058a6-7f8a-4e82-aae5-10137c657f5e', 'Sample Blog Title 131', 'sample-blog-131', 'This is the content of Sample Blog 131. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_131.jpg', 4449, '2024-06-03 14:27:22.645386', '2024-06-07 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '13b33721-e927-4307-91d4-46eb463906f3', '7223bd3a-e482-4d14-bd9f-552f60622fee', 'Sample Blog Title 132', 'sample-blog-132', 'This is the content of Sample Blog 132. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_132.jpg', 2858, '2024-08-27 14:27:22.645386', '2024-08-31 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '38fbcb26-9401-4c38-9456-acd6cc5aaa40', '6129a2ee-fd8d-4a70-b172-0ccd6faf9871', 'Sample Blog Title 133', 'sample-blog-133', 'This is the content of Sample Blog 133. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_133.jpg', 6905, '2025-02-11 14:27:22.645386', '2025-02-20 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '3eed0fc7-a896-45ae-bb9a-bb1c48afb25d', '4d132b27-8363-4bb0-8618-360068914d24', 'Sample Blog Title 134', 'sample-blog-134', 'This is the content of Sample Blog 134. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_134.jpg', 9272, '2024-03-25 14:27:22.645386', '2024-03-26 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd5ff6f93-a187-46e3-b8c9-c67db7c9f3c1', 'd6576192-4494-48ec-89bb-1a018450876d', 'Sample Blog Title 135', 'sample-blog-135', 'This is the content of Sample Blog 135. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_135.jpg', 1793, '2024-07-17 14:27:22.645386', '2024-07-26 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '51bfa5cc-64e8-4552-82af-21b8cca4e5d7', 'ebe43708-3547-4832-91d0-26a62dd6564d', 'Sample Blog Title 136', 'sample-blog-136', 'This is the content of Sample Blog 136. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_136.jpg', 4359, '2024-09-23 14:27:22.645386', '2024-09-23 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '81653da9-4d8e-4d8f-8c3f-7c3439258b8f', '0dc230c0-79ed-45ee-b9a0-e06ee7fe34c4', 'Sample Blog Title 137', 'sample-blog-137', 'This is the content of Sample Blog 137. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_137.jpg', 5856, '2024-08-27 14:27:22.645386', '2024-09-02 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '5f9d9fcd-ccff-475c-a208-18b2be05d3c6', '32fd4910-c648-4a50-b86b-9195d25d3461', 'Sample Blog Title 138', 'sample-blog-138', 'This is the content of Sample Blog 138. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_138.jpg', 9429, '2024-04-14 14:27:22.645386', '2024-04-17 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '7f1fd492-ba83-4d9d-87ba-75c3bf15b4a2', 'a1b824e7-ffa2-4deb-a3fa-0aed799703ab', 'Sample Blog Title 139', 'sample-blog-139', 'This is the content of Sample Blog 139. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_139.jpg', 810, '2024-06-20 14:27:22.645386', '2024-06-28 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'aed11acb-ef4f-42e0-a448-cecd5d6de796', '6129a2ee-fd8d-4a70-b172-0ccd6faf9871', 'Sample Blog Title 140', 'sample-blog-140', 'This is the content of Sample Blog 140. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_140.jpg', 2217, '2024-10-09 14:27:22.645386', '2024-10-18 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '97c13efe-375d-4270-b10b-390f68940d24', '53b658e1-f8fd-4133-99c8-02f2e2ce422d', 'Sample Blog Title 141', 'sample-blog-141', 'This is the content of Sample Blog 141. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_141.jpg', 1872, '2024-05-28 14:27:22.645386', '2024-06-05 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '158faf28-f9cc-4c7d-8ffd-7858fe7c727d', '4ae05754-eef2-4aad-82df-794ab3c91930', 'Sample Blog Title 142', 'sample-blog-142', 'This is the content of Sample Blog 142. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_142.jpg', 7836, '2024-12-15 14:27:22.645386', '2024-12-16 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'da3ab9c6-f732-485e-98f8-bcf2a2d7ceb1', '8b36ef5f-2f60-46bd-9ca0-dafe04daaefa', 'Sample Blog Title 143', 'sample-blog-143', 'This is the content of Sample Blog 143. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_143.jpg', 516, '2024-02-28 14:27:22.645386', '2024-03-09 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '78777d1e-3fc4-470b-90f2-9e28eab6d49f', '94d6b67f-87b1-42ee-a177-5e4788b3a5a3', 'Sample Blog Title 144', 'sample-blog-144', 'This is the content of Sample Blog 144. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_144.jpg', 8083, '2024-03-20 14:27:22.645386', '2024-03-27 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '0651af10-1551-484b-aa2a-f999c67a6b11', '5ca62b37-1b6e-4872-8fbd-e6163520ef13', 'Sample Blog Title 145', 'sample-blog-145', 'This is the content of Sample Blog 145. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_145.jpg', 3169, '2024-11-12 14:27:22.645386', '2024-11-22 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '857b5b80-9266-4548-ad1e-071158a2029c', '51e04f09-ce7a-49aa-8892-269a46065300', 'Sample Blog Title 146', 'sample-blog-146', 'This is the content of Sample Blog 146. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_146.jpg', 5034, '2024-05-07 14:27:22.645386', '2024-05-09 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '8cc163f7-71ca-4005-883a-018943e6ebb1', 'f6cda0db-6d4b-4050-bfae-f360427e31ce', 'Sample Blog Title 147', 'sample-blog-147', 'This is the content of Sample Blog 147. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_147.jpg', 2670, '2024-12-31 14:27:22.645386', '2025-01-08 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '3d119e99-62dc-43cf-b632-3863cc27038a', 'a1b824e7-ffa2-4deb-a3fa-0aed799703ab', 'Sample Blog Title 148', 'sample-blog-148', 'This is the content of Sample Blog 148. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_148.jpg', 2012, '2024-09-25 14:27:22.645386', '2024-09-27 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd590f3d8-bb0d-48a7-ace4-d333d81b6582', '94d6b67f-87b1-42ee-a177-5e4788b3a5a3', 'Sample Blog Title 149', 'sample-blog-149', 'This is the content of Sample Blog 149. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_149.jpg', 7045, '2024-11-04 14:27:22.645386', '2024-11-05 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '8e6b7413-61df-4ad3-9f5d-c0e1fba4d2b8', 'bf95245c-cf8f-46e7-8660-08e4e2e3d4a2', 'Sample Blog Title 150', 'sample-blog-150', 'This is the content of Sample Blog 150. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_150.jpg', 2693, '2024-12-30 14:27:22.645386', '2025-01-07 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'b9e062df-6f85-45c0-84e1-b9d470863401', 'f436ba40-ba79-40ae-90d9-1c7cd5cace8d', 'Sample Blog Title 151', 'sample-blog-151', 'This is the content of Sample Blog 151. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_151.jpg', 6836, '2024-12-12 14:27:22.645386', '2024-12-19 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '4633fe0d-b5af-46fc-aa30-e7cf2dbd21d5', '4aadc413-3ab0-4dc7-9cec-0c6dd2f04540', 'Sample Blog Title 152', 'sample-blog-152', 'This is the content of Sample Blog 152. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_152.jpg', 7007, '2024-03-21 14:27:22.645386', '2024-03-24 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'b59be861-99c6-4ba9-86eb-e86b3ef44abf', '9d78a484-6190-4924-b52b-89a82f840a7f', 'Sample Blog Title 153', 'sample-blog-153', 'This is the content of Sample Blog 153. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_153.jpg', 5798, '2024-11-01 14:27:22.645386', '2024-11-04 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'ad9a7dff-61a3-48a2-8a13-cb35a6d03176', 'edda8670-c8d9-4fa9-acb0-9d7e69e1bca9', 'Sample Blog Title 154', 'sample-blog-154', 'This is the content of Sample Blog 154. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_154.jpg', 8067, '2025-01-14 14:27:22.645386', '2025-01-20 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '237eecbb-8741-4f4d-924a-782c6dcf04e3', '51e04f09-ce7a-49aa-8892-269a46065300', 'Sample Blog Title 155', 'sample-blog-155', 'This is the content of Sample Blog 155. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_155.jpg', 460, '2025-01-29 14:27:22.645386', '2025-02-02 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'c40f7334-c15c-4a65-8608-03d13371bac8', 'f391768c-7823-4784-b04d-a38a27b88967', 'Sample Blog Title 156', 'sample-blog-156', 'This is the content of Sample Blog 156. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_156.jpg', 3905, '2024-03-28 14:27:22.645386', '2024-04-04 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '4e95b5d4-0c0d-49a4-866a-485083d7086f', '8ff4183f-8f6e-4ccb-9ab5-2ad2b0878ecb', 'Sample Blog Title 157', 'sample-blog-157', 'This is the content of Sample Blog 157. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_157.jpg', 763, '2024-06-12 14:27:22.645386', '2024-06-17 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'a4d9fb8c-7e57-4323-9770-acb3a42fab48', '6129a2ee-fd8d-4a70-b172-0ccd6faf9871', 'Sample Blog Title 158', 'sample-blog-158', 'This is the content of Sample Blog 158. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_158.jpg', 4595, '2024-05-21 14:27:22.645386', '2024-05-27 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'bdc805df-402c-4c65-85a2-f0bdc3c95820', '6129a2ee-fd8d-4a70-b172-0ccd6faf9871', 'Sample Blog Title 159', 'sample-blog-159', 'This is the content of Sample Blog 159. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_159.jpg', 40, '2024-10-03 14:27:22.645386', '2024-10-08 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'b5949faf-4e33-4808-b959-7c57af922f9c', '40e38c65-c9b3-49bf-98eb-306aa0a7f269', 'Sample Blog Title 160', 'sample-blog-160', 'This is the content of Sample Blog 160. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_160.jpg', 7119, '2024-09-25 14:27:22.645386', '2024-10-05 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'a9b15ece-9a76-4d58-8c8f-ecd1d1e0f752', '5ff32bbc-b5c1-411d-9687-caf3f505df2d', 'Sample Blog Title 161', 'sample-blog-161', 'This is the content of Sample Blog 161. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_161.jpg', 8809, '2024-11-24 14:27:22.645386', '2024-11-28 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '60026be9-82f2-4efe-ac01-40ce8aed1a31', '9c2fe57a-858b-4f54-83d1-16dbf396b752', 'Sample Blog Title 162', 'sample-blog-162', 'This is the content of Sample Blog 162. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_162.jpg', 6042, '2024-03-09 14:27:22.645386', '2024-03-11 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e5766ddb-c90f-4866-ab57-6ee1ad04ca50', 'd6576192-4494-48ec-89bb-1a018450876d', 'Sample Blog Title 163', 'sample-blog-163', 'This is the content of Sample Blog 163. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_163.jpg', 4415, '2024-04-19 14:27:22.645386', '2024-04-26 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd3072432-176a-4ac9-bf0a-099b39aab55d', 'e8579452-e2ab-48f4-8681-50a69c865547', 'Sample Blog Title 164', 'sample-blog-164', 'This is the content of Sample Blog 164. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_164.jpg', 2906, '2024-09-25 14:27:22.645386', '2024-10-02 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '2db2ae87-1508-4497-8085-bc20e194db33', '4ae05754-eef2-4aad-82df-794ab3c91930', 'Sample Blog Title 165', 'sample-blog-165', 'This is the content of Sample Blog 165. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_165.jpg', 178, '2024-10-25 14:27:22.645386', '2024-10-29 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '99a984ba-bdd0-4c42-b4cb-8ec0dd228956', '714a063a-fcf1-451c-b72a-1a2c27e91f33', 'Sample Blog Title 166', 'sample-blog-166', 'This is the content of Sample Blog 166. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_166.jpg', 7849, '2024-03-12 14:27:22.645386', '2024-03-14 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'ced233aa-6bb3-4fef-bd23-fc4ae7523086', 'a556f3dd-12bd-44c4-9a5a-49621b297736', 'Sample Blog Title 167', 'sample-blog-167', 'This is the content of Sample Blog 167. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_167.jpg', 2499, '2024-08-13 14:27:22.645386', '2024-08-23 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '2a984979-89df-4f73-8451-29bb7cd5a732', '8c5a0a04-13ff-412e-9552-6cdcb035bbe9', 'Sample Blog Title 168', 'sample-blog-168', 'This is the content of Sample Blog 168. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_168.jpg', 4168, '2024-08-13 14:27:22.645386', '2024-08-20 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '65d649b2-340d-482d-b00f-90ad7e96c1d8', 'bf95245c-cf8f-46e7-8660-08e4e2e3d4a2', 'Sample Blog Title 169', 'sample-blog-169', 'This is the content of Sample Blog 169. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_169.jpg', 3945, '2024-07-04 14:27:22.645386', '2024-07-05 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '4b66e738-ac77-44ae-a2de-9d71fba4469f', 'bf95245c-cf8f-46e7-8660-08e4e2e3d4a2', 'Sample Blog Title 170', 'sample-blog-170', 'This is the content of Sample Blog 170. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_170.jpg', 1956, '2024-07-13 14:27:22.645386', '2024-07-17 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '899a158e-05d9-4846-a362-cd5b6cd0afd6', 'c98c32d8-a040-4f94-8e06-4d538f89e0dc', 'Sample Blog Title 171', 'sample-blog-171', 'This is the content of Sample Blog 171. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_171.jpg', 3325, '2025-01-05 14:27:22.645386', '2025-01-11 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'eaca12b5-b0d4-42c5-a617-b8dafdd0f8ea', '7f905030-8831-4f16-aeff-ddfae4c4e45b', 'Sample Blog Title 172', 'sample-blog-172', 'This is the content of Sample Blog 172. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_172.jpg', 8897, '2024-12-16 14:27:22.645386', '2024-12-22 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '396fcfb4-a3be-4df3-99b8-a7405dfc5e1a', 'edda8670-c8d9-4fa9-acb0-9d7e69e1bca9', 'Sample Blog Title 173', 'sample-blog-173', 'This is the content of Sample Blog 173. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_173.jpg', 4162, '2024-05-19 14:27:22.645386', '2024-05-27 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'bc0a2b5a-6af4-4f09-aa7e-9434ab970b8d', '572e96a6-e620-4318-88e7-dd75551e9878', 'Sample Blog Title 174', 'sample-blog-174', 'This is the content of Sample Blog 174. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_174.jpg', 9648, '2024-07-21 14:27:22.645386', '2024-07-28 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '83167988-e5ee-4750-9710-280f80ad9239', '4aadc413-3ab0-4dc7-9cec-0c6dd2f04540', 'Sample Blog Title 175', 'sample-blog-175', 'This is the content of Sample Blog 175. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_175.jpg', 476, '2024-03-28 14:27:22.645386', '2024-04-04 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '122e2513-848e-4578-b965-e25ab0cd318b', 'ebe43708-3547-4832-91d0-26a62dd6564d', 'Sample Blog Title 176', 'sample-blog-176', 'This is the content of Sample Blog 176. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_176.jpg', 2159, '2024-06-11 14:27:22.645386', '2024-06-21 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'be201b85-bf07-43f0-bb35-db194cd38ce0', '32fd4910-c648-4a50-b86b-9195d25d3461', 'Sample Blog Title 177', 'sample-blog-177', 'This is the content of Sample Blog 177. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_177.jpg', 6466, '2024-08-17 14:27:22.645386', '2024-08-24 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'ad0d5736-95c4-4c90-a11d-be8820c2652f', '9c2fe57a-858b-4f54-83d1-16dbf396b752', 'Sample Blog Title 178', 'sample-blog-178', 'This is the content of Sample Blog 178. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_178.jpg', 8658, '2024-06-15 14:27:22.645386', '2024-06-18 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '3c9cc217-3994-489c-ad7f-50f063939d52', '5bbebc30-da22-4876-a2f4-04e55c37d11f', 'Sample Blog Title 179', 'sample-blog-179', 'This is the content of Sample Blog 179. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_179.jpg', 1346, '2024-11-20 14:27:22.645386', '2024-11-21 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'da766eb1-55c6-4ca5-8512-2767b07597b3', '92f84112-7d4d-448b-818e-b2b74f396858', 'Sample Blog Title 180', 'sample-blog-180', 'This is the content of Sample Blog 180. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_180.jpg', 3198, '2024-05-28 14:27:22.645386', '2024-06-05 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '82754f2c-470d-4a88-b66a-7e0b57ece632', '6129a2ee-fd8d-4a70-b172-0ccd6faf9871', 'Sample Blog Title 181', 'sample-blog-181', 'This is the content of Sample Blog 181. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_181.jpg', 7629, '2024-07-12 14:27:22.645386', '2024-07-20 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '69509d6f-4a61-49a6-9b3e-3027124c03ef', '1288136e-65ae-4cab-96ac-1dcf147f94e4', 'Sample Blog Title 182', 'sample-blog-182', 'This is the content of Sample Blog 182. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_182.jpg', 6785, '2024-04-14 14:27:22.645386', '2024-04-18 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '9483d3a9-4818-4a52-91e8-7d77ffbcef27', '8b8bc0e4-8066-4b44-850d-abf220c9b056', 'Sample Blog Title 183', 'sample-blog-183', 'This is the content of Sample Blog 183. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_183.jpg', 1247, '2024-11-29 14:27:22.645386', '2024-12-01 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '914edee4-39f1-4579-b3f7-f3f3dc852e61', '040e0ba8-42e8-49b0-b72c-00a29329c22c', 'Sample Blog Title 184', 'sample-blog-184', 'This is the content of Sample Blog 184. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_184.jpg', 9998, '2024-09-11 14:27:22.645386', '2024-09-21 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '51c43b5f-aa62-4ac3-b87e-6f3674c15866', 'e988e97f-169c-4a2e-ae7d-06d0928a1faa', 'Sample Blog Title 185', 'sample-blog-185', 'This is the content of Sample Blog 185. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_185.jpg', 9103, '2024-09-10 14:27:22.645386', '2024-09-12 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '887b738d-3111-4f6a-bdd9-3b0d897b2ed5', '7f905030-8831-4f16-aeff-ddfae4c4e45b', 'Sample Blog Title 186', 'sample-blog-186', 'This is the content of Sample Blog 186. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_186.jpg', 3651, '2024-05-29 14:27:22.645386', '2024-06-08 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'a369e284-b96f-4df0-b6de-9aeda540e3c5', '6129a2ee-fd8d-4a70-b172-0ccd6faf9871', 'Sample Blog Title 187', 'sample-blog-187', 'This is the content of Sample Blog 187. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_187.jpg', 7147, '2024-11-09 14:27:22.645386', '2024-11-12 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '672701ee-b4b1-4979-ac48-07b1a9aa3709', 'c703c511-7208-4166-b68d-f71899018b12', 'Sample Blog Title 188', 'sample-blog-188', 'This is the content of Sample Blog 188. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_188.jpg', 1282, '2024-04-12 14:27:22.645386', '2024-04-13 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '93c9edc0-38ae-458e-a397-d881de978877', '8b36ef5f-2f60-46bd-9ca0-dafe04daaefa', 'Sample Blog Title 189', 'sample-blog-189', 'This is the content of Sample Blog 189. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_189.jpg', 3059, '2025-01-24 14:27:22.645386', '2025-01-29 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '7dd882a2-489f-484d-86b1-552a5a4b10a8', '606ebf50-ffcb-4315-a892-c9f2dafaed32', 'Sample Blog Title 190', 'sample-blog-190', 'This is the content of Sample Blog 190. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_190.jpg', 9288, '2025-01-25 14:27:22.645386', '2025-01-31 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'c6b02ea8-6717-44dd-bcdf-e56107f3d9b6', 'f436ba40-ba79-40ae-90d9-1c7cd5cace8d', 'Sample Blog Title 191', 'sample-blog-191', 'This is the content of Sample Blog 191. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_191.jpg', 4121, '2024-10-03 14:27:22.645386', '2024-10-04 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'eab7d2a4-980a-442d-a430-72fa40d9a039', '92f84112-7d4d-448b-818e-b2b74f396858', 'Sample Blog Title 192', 'sample-blog-192', 'This is the content of Sample Blog 192. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_192.jpg', 6297, '2024-09-04 14:27:22.645386', '2024-09-06 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '721749e0-9022-4395-b9ee-4c19829c3f14', '39c05142-af35-40ae-a9bf-95e0c58a5ef5', 'Sample Blog Title 193', 'sample-blog-193', 'This is the content of Sample Blog 193. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_193.jpg', 1976, '2024-12-17 14:27:22.645386', '2024-12-19 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '414481de-5b39-4548-afa6-967f6260f2f6', 'd6576192-4494-48ec-89bb-1a018450876d', 'Sample Blog Title 194', 'sample-blog-194', 'This is the content of Sample Blog 194. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_194.jpg', 8612, '2024-03-14 14:27:22.645386', '2024-03-15 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '8f00e669-a4f4-48d6-83e9-0bd7cd8125c3', '89139764-3150-4ea5-b980-61e8585f3a41', 'Sample Blog Title 195', 'sample-blog-195', 'This is the content of Sample Blog 195. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_195.jpg', 1223, '2025-02-15 14:27:22.645386', '2025-02-24 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e6c41e1c-c729-4b8d-93f2-93f9f131507d', '714a063a-fcf1-451c-b72a-1a2c27e91f33', 'Sample Blog Title 196', 'sample-blog-196', 'This is the content of Sample Blog 196. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_196.jpg', 1629, '2024-11-18 14:27:22.645386', '2024-11-24 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'a2a5a39a-59dd-482e-8d78-47afeb24ae91', '4ae05754-eef2-4aad-82df-794ab3c91930', 'Sample Blog Title 197', 'sample-blog-197', 'This is the content of Sample Blog 197. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_197.jpg', 9891, '2025-01-31 14:27:22.645386', '2025-02-04 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '5a73af9c-d919-4eba-b852-f4d426a041b5', '40755138-babb-47a6-8353-0cb7ccac2513', 'Sample Blog Title 198', 'sample-blog-198', 'This is the content of Sample Blog 198. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_198.jpg', 8782, '2024-03-20 14:27:22.645386', '2024-03-20 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'a901d5f6-2267-4460-82cb-0b586ae8e5e4', '8cb61520-fd74-4e18-8c82-668c6d088264', 'Sample Blog Title 199', 'sample-blog-199', 'This is the content of Sample Blog 199. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_199.jpg', 9992, '2024-08-17 14:27:22.645386', '2024-08-18 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '9cf702a6-2638-4b74-98e7-0414406772e0', '3f9017fc-ddc0-4467-a609-672bef2ab6e1', 'Sample Blog Title 200', 'sample-blog-200', 'This is the content of Sample Blog 200. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_200.jpg', 4280, '2024-05-11 14:27:22.645386', '2024-05-13 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '5da5aa3c-2605-4bea-a7b8-015121e82fd8', '488cf604-21d2-416d-ad08-71a1a28540f0', 'Sample Blog Title 201', 'sample-blog-201', 'This is the content of Sample Blog 201. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_201.jpg', 8387, '2024-03-05 14:27:22.645386', '2024-03-09 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'f8767f68-ccf4-4ead-8ef2-cce5b89507c7', '488cf604-21d2-416d-ad08-71a1a28540f0', 'Sample Blog Title 202', 'sample-blog-202', 'This is the content of Sample Blog 202. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_202.jpg', 4190, '2024-11-01 14:27:22.645386', '2024-11-09 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '2d835d2f-fd9e-4b85-89c6-7f02c3352f5d', 'b63b3614-0210-41af-a843-9775c3c06121', 'Sample Blog Title 203', 'sample-blog-203', 'This is the content of Sample Blog 203. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_203.jpg', 6867, '2025-01-11 14:27:22.645386', '2025-01-21 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '84c76aae-2209-4613-9d07-b31b4f515b67', '3f9017fc-ddc0-4467-a609-672bef2ab6e1', 'Sample Blog Title 204', 'sample-blog-204', 'This is the content of Sample Blog 204. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_204.jpg', 6351, '2025-01-16 14:27:22.645386', '2025-01-26 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '1c1cb2fc-364d-4211-860a-d931d7a29358', 'c98c32d8-a040-4f94-8e06-4d538f89e0dc', 'Sample Blog Title 205', 'sample-blog-205', 'This is the content of Sample Blog 205. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_205.jpg', 5864, '2024-07-22 14:27:22.645386', '2024-07-27 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '6136f75d-0d1a-4f1a-99c5-f8cd250b6506', '572e96a6-e620-4318-88e7-dd75551e9878', 'Sample Blog Title 206', 'sample-blog-206', 'This is the content of Sample Blog 206. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_206.jpg', 5579, '2025-02-06 14:27:22.645386', '2025-02-16 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '922bbb5e-43ec-49b1-a0f0-f66fa6b01a15', '71812813-de60-483c-8faa-f640965b23f5', 'Sample Blog Title 207', 'sample-blog-207', 'This is the content of Sample Blog 207. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_207.jpg', 51, '2024-08-14 14:27:22.645386', '2024-08-18 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '5ac2a083-7acc-4364-9df2-5ba195399421', 'bcacbd38-6630-44a4-a5de-66d359987f48', 'Sample Blog Title 208', 'sample-blog-208', 'This is the content of Sample Blog 208. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_208.jpg', 3387, '2024-02-28 14:27:22.645386', '2024-02-29 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '0ef38e6e-882a-4fbf-959e-2d6f43869134', '699a0f8c-a70b-4e7c-95da-af2a1a874135', 'Sample Blog Title 209', 'sample-blog-209', 'This is the content of Sample Blog 209. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_209.jpg', 7761, '2024-09-27 14:27:22.645386', '2024-10-07 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '473180d3-0d37-483d-9d08-9014dfa93d85', '58854fc5-18b1-4e2a-8605-4ccdd8950188', 'Sample Blog Title 210', 'sample-blog-210', 'This is the content of Sample Blog 210. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_210.jpg', 230, '2024-04-25 14:27:22.645386', '2024-05-04 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '28e72fb8-5ed5-4a35-bab7-0a8192dfe653', 'f499de7d-995e-4017-928d-b40736f9ea79', 'Sample Blog Title 211', 'sample-blog-211', 'This is the content of Sample Blog 211. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_211.jpg', 8765, '2024-05-19 14:27:22.645386', '2024-05-22 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '43f159a8-7708-46df-af1c-b8775f86e712', '0dc230c0-79ed-45ee-b9a0-e06ee7fe34c4', 'Sample Blog Title 212', 'sample-blog-212', 'This is the content of Sample Blog 212. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_212.jpg', 1914, '2024-07-26 14:27:22.645386', '2024-08-05 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'eac9fbab-1510-4141-9a7a-adbe0154b543', '40d7a621-d8d1-4bcb-9ab2-be3b4fc2d3ab', 'Sample Blog Title 213', 'sample-blog-213', 'This is the content of Sample Blog 213. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_213.jpg', 6835, '2024-03-15 14:27:22.645386', '2024-03-18 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '716a0e4f-5344-415d-9a17-3fec86e32e02', '4ae05754-eef2-4aad-82df-794ab3c91930', 'Sample Blog Title 214', 'sample-blog-214', 'This is the content of Sample Blog 214. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_214.jpg', 3537, '2024-10-02 14:27:22.645386', '2024-10-04 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '822517d4-89dc-4dfb-b79e-14d84204e1fa', 'edda8670-c8d9-4fa9-acb0-9d7e69e1bca9', 'Sample Blog Title 215', 'sample-blog-215', 'This is the content of Sample Blog 215. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_215.jpg', 9558, '2024-09-06 14:27:22.645386', '2024-09-15 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'a5438866-b952-45f0-ae72-b5f339f80fe8', '8b36ef5f-2f60-46bd-9ca0-dafe04daaefa', 'Sample Blog Title 216', 'sample-blog-216', 'This is the content of Sample Blog 216. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_216.jpg', 344, '2024-12-02 14:27:22.645386', '2024-12-07 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '6d840049-83cd-45f1-b1f9-2d9f54808226', '7223bd3a-e482-4d14-bd9f-552f60622fee', 'Sample Blog Title 217', 'sample-blog-217', 'This is the content of Sample Blog 217. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_217.jpg', 8975, '2024-03-05 14:27:22.645386', '2024-03-14 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e74fb9b6-8f79-4976-93d6-268f75fbe3a2', '966ccd39-4d29-4318-95be-96f719f8576f', 'Sample Blog Title 218', 'sample-blog-218', 'This is the content of Sample Blog 218. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_218.jpg', 6307, '2024-07-01 14:27:22.645386', '2024-07-10 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'ca87f3f7-90a5-4968-9e08-3c778d27a7d9', '71812813-de60-483c-8faa-f640965b23f5', 'Sample Blog Title 219', 'sample-blog-219', 'This is the content of Sample Blog 219. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_219.jpg', 8239, '2024-03-07 14:27:22.645386', '2024-03-13 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '3b980068-46bf-44cd-a83a-f6eb68a4d72b', '412d4aec-7bd0-4e29-a237-392d09029ed4', 'Sample Blog Title 220', 'sample-blog-220', 'This is the content of Sample Blog 220. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_220.jpg', 7018, '2024-03-18 14:27:22.645386', '2024-03-22 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'f9d68564-c4cb-450e-a4bd-abd4621fef94', '7223bd3a-e482-4d14-bd9f-552f60622fee', 'Sample Blog Title 221', 'sample-blog-221', 'This is the content of Sample Blog 221. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_221.jpg', 6621, '2025-01-10 14:27:22.645386', '2025-01-11 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '30fc04a0-368e-4747-91d6-8cf7f9417f89', '00504c3d-f629-42f5-b87b-b9014ef5d973', 'Sample Blog Title 222', 'sample-blog-222', 'This is the content of Sample Blog 222. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_222.jpg', 7372, '2024-12-01 14:27:22.645386', '2024-12-06 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '13125446-c594-40ae-bdd4-4b72afe3178f', '5092b13d-a468-407a-a609-da88631cbdc7', 'Sample Blog Title 223', 'sample-blog-223', 'This is the content of Sample Blog 223. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_223.jpg', 3511, '2024-09-05 14:27:22.645386', '2024-09-09 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '7f83c86f-2484-444c-8d81-447be716671c', '4e99bfb6-a958-4f2f-a3b1-402cd84fdf5b', 'Sample Blog Title 224', 'sample-blog-224', 'This is the content of Sample Blog 224. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_224.jpg', 245, '2024-03-05 14:27:22.645386', '2024-03-12 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e68e0103-6de5-435c-93fa-de7b5e3ea045', '17cc124f-b752-457d-8447-5cdfffd63a10', 'Sample Blog Title 225', 'sample-blog-225', 'This is the content of Sample Blog 225. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_225.jpg', 8943, '2025-01-08 14:27:22.645386', '2025-01-12 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '73888d28-72c4-4e72-933d-164db1d20295', '4d132b27-8363-4bb0-8618-360068914d24', 'Sample Blog Title 226', 'sample-blog-226', 'This is the content of Sample Blog 226. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_226.jpg', 9958, '2024-04-01 14:27:22.645386', '2024-04-05 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '31956c35-5107-45c2-b193-ebb6d142ed1f', '4b750317-7e0b-4986-beb9-1df4ed3ad6f2', 'Sample Blog Title 227', 'sample-blog-227', 'This is the content of Sample Blog 227. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_227.jpg', 9648, '2024-10-06 14:27:22.645386', '2024-10-15 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e66e1b14-0a3a-418f-8360-de545866d187', '103d8eb1-7e4b-4cb1-8daa-5cfa1e3d26ed', 'Sample Blog Title 228', 'sample-blog-228', 'This is the content of Sample Blog 228. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_228.jpg', 2630, '2024-05-08 14:27:22.645386', '2024-05-16 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'f6b57f8d-61aa-4af4-817e-5ddf39c2a285', '4b750317-7e0b-4986-beb9-1df4ed3ad6f2', 'Sample Blog Title 229', 'sample-blog-229', 'This is the content of Sample Blog 229. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_229.jpg', 1811, '2024-10-05 14:27:22.645386', '2024-10-15 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '267ac353-b0db-470b-8abb-fbe339188f5a', '39c05142-af35-40ae-a9bf-95e0c58a5ef5', 'Sample Blog Title 230', 'sample-blog-230', 'This is the content of Sample Blog 230. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_230.jpg', 188, '2024-08-09 14:27:22.645386', '2024-08-19 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '0e5ae622-4304-4e7d-95f1-795c59d10281', '94d6b67f-87b1-42ee-a177-5e4788b3a5a3', 'Sample Blog Title 231', 'sample-blog-231', 'This is the content of Sample Blog 231. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_231.jpg', 6896, '2025-01-11 14:27:22.645386', '2025-01-11 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '2e1e26b4-1ec5-4468-8ba9-f44da37f59f2', 'd4ef8972-f69c-40c9-a7d3-bc0ef5868391', 'Sample Blog Title 232', 'sample-blog-232', 'This is the content of Sample Blog 232. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_232.jpg', 9354, '2024-12-17 14:27:22.645386', '2024-12-24 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '662971bc-9420-4a51-82b7-1844832233d2', '39c05142-af35-40ae-a9bf-95e0c58a5ef5', 'Sample Blog Title 233', 'sample-blog-233', 'This is the content of Sample Blog 233. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_233.jpg', 9973, '2024-04-30 14:27:22.645386', '2024-05-07 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd6f4cae9-77a8-4cde-a86b-48ff43cb3da0', 'b63b3614-0210-41af-a843-9775c3c06121', 'Sample Blog Title 234', 'sample-blog-234', 'This is the content of Sample Blog 234. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_234.jpg', 9113, '2025-01-18 14:27:22.645386', '2025-01-19 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '5a0c243f-747e-449d-b55d-5489b168fccb', 'e013d6b2-262b-4c70-976f-b082b6215570', 'Sample Blog Title 235', 'sample-blog-235', 'This is the content of Sample Blog 235. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_235.jpg', 4114, '2024-09-21 14:27:22.645386', '2024-09-29 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'a941cf04-8047-4afb-8ac3-ebe14f5b9658', '89139764-3150-4ea5-b980-61e8585f3a41', 'Sample Blog Title 236', 'sample-blog-236', 'This is the content of Sample Blog 236. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_236.jpg', 7866, '2025-02-07 14:27:22.645386', '2025-02-13 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '55afc0e9-c57d-47e3-a742-74a7385910fd', '0c755f0d-52fa-42f2-bd4d-187d7822e9c9', 'Sample Blog Title 237', 'sample-blog-237', 'This is the content of Sample Blog 237. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_237.jpg', 1165, '2024-03-08 14:27:22.645386', '2024-03-09 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '95aafd4d-4a0f-4ddd-86ba-d49d5d801f8e', '1288136e-65ae-4cab-96ac-1dcf147f94e4', 'Sample Blog Title 238', 'sample-blog-238', 'This is the content of Sample Blog 238. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_238.jpg', 2305, '2025-01-10 14:27:22.645386', '2025-01-14 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '7926ff17-f6ef-4ced-8a82-e2b7522a5ce4', 'f6cda0db-6d4b-4050-bfae-f360427e31ce', 'Sample Blog Title 239', 'sample-blog-239', 'This is the content of Sample Blog 239. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_239.jpg', 7008, '2024-10-20 14:27:22.645386', '2024-10-25 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e6da8406-d0f1-478a-a42b-e0bca69a49db', 'de7f0e68-e4b5-4d9c-afe6-70a4ea3e0653', 'Sample Blog Title 240', 'sample-blog-240', 'This is the content of Sample Blog 240. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_240.jpg', 3827, '2024-10-19 14:27:22.645386', '2024-10-26 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '269738b6-c718-46bf-87fb-f3c77aa3d446', '7f905030-8831-4f16-aeff-ddfae4c4e45b', 'Sample Blog Title 241', 'sample-blog-241', 'This is the content of Sample Blog 241. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_241.jpg', 9243, '2024-04-09 14:27:22.645386', '2024-04-09 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'cba1e2de-df94-476f-8980-38a080556d7c', '6129a2ee-fd8d-4a70-b172-0ccd6faf9871', 'Sample Blog Title 242', 'sample-blog-242', 'This is the content of Sample Blog 242. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_242.jpg', 5711, '2024-07-09 14:27:22.645386', '2024-07-16 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '1a348ede-c372-4b8f-8420-80fb9ce5174d', '4e99bfb6-a958-4f2f-a3b1-402cd84fdf5b', 'Sample Blog Title 243', 'sample-blog-243', 'This is the content of Sample Blog 243. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_243.jpg', 6612, '2024-05-15 14:27:22.645386', '2024-05-15 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'ec67a076-9200-40b5-9c18-bda851ddb77d', 'e8579452-e2ab-48f4-8681-50a69c865547', 'Sample Blog Title 244', 'sample-blog-244', 'This is the content of Sample Blog 244. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_244.jpg', 6816, '2024-07-14 14:27:22.645386', '2024-07-16 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '946f9405-339b-44fa-bbb2-7bc9e4611688', '89139764-3150-4ea5-b980-61e8585f3a41', 'Sample Blog Title 245', 'sample-blog-245', 'This is the content of Sample Blog 245. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_245.jpg', 9186, '2024-06-03 14:27:22.645386', '2024-06-09 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '464b305e-9a50-44e4-a956-68f29730ebff', '17cc124f-b752-457d-8447-5cdfffd63a10', 'Sample Blog Title 246', 'sample-blog-246', 'This is the content of Sample Blog 246. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_246.jpg', 7536, '2024-04-01 14:27:22.645386', '2024-04-11 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'b507ae1c-2c5b-4b16-bb9a-5b1c3c2924a0', '488cf604-21d2-416d-ad08-71a1a28540f0', 'Sample Blog Title 247', 'sample-blog-247', 'This is the content of Sample Blog 247. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_247.jpg', 6980, '2024-09-30 14:27:22.645386', '2024-10-04 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '160a7c76-d3b0-484a-a057-897cc376efe5', 'f499de7d-995e-4017-928d-b40736f9ea79', 'Sample Blog Title 248', 'sample-blog-248', 'This is the content of Sample Blog 248. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_248.jpg', 2860, '2024-12-11 14:27:22.645386', '2024-12-14 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '3e8ce52b-243d-4028-bf40-b89a7397bb04', '412d4aec-7bd0-4e29-a237-392d09029ed4', 'Sample Blog Title 249', 'sample-blog-249', 'This is the content of Sample Blog 249. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_249.jpg', 6791, '2024-11-30 14:27:22.645386', '2024-12-10 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '907518cf-bb4a-4cb8-ac4d-2f4494de29af', 'd9588d50-5f13-4b66-a531-e4e290f9ac0f', 'Sample Blog Title 250', 'sample-blog-250', 'This is the content of Sample Blog 250. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_250.jpg', 750, '2024-02-26 14:27:22.645386', '2024-03-05 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '525f9910-85ae-482c-83b8-d39841515f85', 'dff097d3-1d58-429f-9261-e0155b99c4e7', 'Sample Blog Title 251', 'sample-blog-251', 'This is the content of Sample Blog 251. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_251.jpg', 7170, '2024-03-09 14:27:22.645386', '2024-03-12 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e05cf527-ffe9-4bd0-91fd-a0d78d2fb3ef', '71812813-de60-483c-8faa-f640965b23f5', 'Sample Blog Title 252', 'sample-blog-252', 'This is the content of Sample Blog 252. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_252.jpg', 6284, '2024-07-29 14:27:22.645386', '2024-08-04 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e7218c82-56ec-48ab-808d-5c10586c3795', '58854fc5-18b1-4e2a-8605-4ccdd8950188', 'Sample Blog Title 253', 'sample-blog-253', 'This is the content of Sample Blog 253. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_253.jpg', 2536, '2024-09-05 14:27:22.645386', '2024-09-11 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '2aa63a2d-b0e6-484c-86ae-c0e8edde26ec', '103d8eb1-7e4b-4cb1-8daa-5cfa1e3d26ed', 'Sample Blog Title 254', 'sample-blog-254', 'This is the content of Sample Blog 254. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_254.jpg', 9300, '2024-07-16 14:27:22.645386', '2024-07-25 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '934a6180-2098-417b-859a-faec04b8e2e1', '103d8eb1-7e4b-4cb1-8daa-5cfa1e3d26ed', 'Sample Blog Title 255', 'sample-blog-255', 'This is the content of Sample Blog 255. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_255.jpg', 4610, '2025-02-02 14:27:22.645386', '2025-02-08 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e8ffe968-6050-4285-85ce-a967820234f8', 'd6576192-4494-48ec-89bb-1a018450876d', 'Sample Blog Title 256', 'sample-blog-256', 'This is the content of Sample Blog 256. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_256.jpg', 1652, '2024-10-11 14:27:22.645386', '2024-10-15 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '99327e00-effb-486a-83f4-487fc95deafc', '8acd47d7-c6ef-440c-b929-de39d9e1e0c7', 'Sample Blog Title 257', 'sample-blog-257', 'This is the content of Sample Blog 257. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_257.jpg', 4600, '2024-08-10 14:27:22.645386', '2024-08-12 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '00ae9096-cbd2-4088-aea8-e5af82c46b18', 'bf95245c-cf8f-46e7-8660-08e4e2e3d4a2', 'Sample Blog Title 258', 'sample-blog-258', 'This is the content of Sample Blog 258. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_258.jpg', 9162, '2024-12-27 14:27:22.645386', '2025-01-05 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '56025ca5-7682-4096-be64-b6d7a35a5594', '71812813-de60-483c-8faa-f640965b23f5', 'Sample Blog Title 259', 'sample-blog-259', 'This is the content of Sample Blog 259. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_259.jpg', 2499, '2024-07-29 14:27:22.645386', '2024-08-08 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '3393196b-6275-4134-b955-78b4ce0c320b', '3f3b19f5-ccab-41f5-aea0-9bef9d1da2aa', 'Sample Blog Title 260', 'sample-blog-260', 'This is the content of Sample Blog 260. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_260.jpg', 6102, '2024-03-04 14:27:22.645386', '2024-03-05 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd2f74a30-6d70-4b2d-95e0-0da5ac861669', '8ff4183f-8f6e-4ccb-9ab5-2ad2b0878ecb', 'Sample Blog Title 261', 'sample-blog-261', 'This is the content of Sample Blog 261. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_261.jpg', 9445, '2024-03-29 14:27:22.645386', '2024-04-05 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'a220c4ef-7ff3-4f9f-9700-ef6b61229a16', 'ce8329db-2b4a-48fd-94cc-767f8fba7c91', 'Sample Blog Title 262', 'sample-blog-262', 'This is the content of Sample Blog 262. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_262.jpg', 2632, '2024-09-05 14:27:22.645386', '2024-09-14 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '358a40f3-d59f-41b2-9ab9-e52413d587a9', '4b750317-7e0b-4986-beb9-1df4ed3ad6f2', 'Sample Blog Title 263', 'sample-blog-263', 'This is the content of Sample Blog 263. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_263.jpg', 1710, '2024-04-12 14:27:22.645386', '2024-04-13 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd558b50d-89a8-4bb4-aeb4-68fc29ff693c', '5fa7e24b-fcee-48d8-b8b1-1114b9b2094d', 'Sample Blog Title 264', 'sample-blog-264', 'This is the content of Sample Blog 264. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_264.jpg', 8914, '2024-10-06 14:27:22.645386', '2024-10-14 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '6e9a2e37-65b5-4043-b7b7-5a798598a4f4', '5ff32bbc-b5c1-411d-9687-caf3f505df2d', 'Sample Blog Title 265', 'sample-blog-265', 'This is the content of Sample Blog 265. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_265.jpg', 9672, '2024-09-26 14:27:22.645386', '2024-10-02 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '3f321b06-829e-48e2-ac70-790345f3f79a', '4b750317-7e0b-4986-beb9-1df4ed3ad6f2', 'Sample Blog Title 266', 'sample-blog-266', 'This is the content of Sample Blog 266. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_266.jpg', 9378, '2024-08-24 14:27:22.645386', '2024-08-26 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '1f427218-e74f-4ede-aa4f-e72835b048f8', '8c5a0a04-13ff-412e-9552-6cdcb035bbe9', 'Sample Blog Title 267', 'sample-blog-267', 'This is the content of Sample Blog 267. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_267.jpg', 6732, '2024-07-08 14:27:22.645386', '2024-07-18 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '97e0e44c-e03b-4ed3-807b-628a1e541f3e', '10919c49-5177-4a73-a703-03835738f105', 'Sample Blog Title 268', 'sample-blog-268', 'This is the content of Sample Blog 268. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_268.jpg', 8168, '2024-06-17 14:27:22.645386', '2024-06-25 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '298fb9e3-e0df-4606-873f-f051aa5c0edc', '4aadc413-3ab0-4dc7-9cec-0c6dd2f04540', 'Sample Blog Title 269', 'sample-blog-269', 'This is the content of Sample Blog 269. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_269.jpg', 7036, '2025-01-31 14:27:22.645386', '2025-02-01 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'cde6a2ca-0b39-4b19-9b2a-6e45cd9f75fa', '6e7a436a-a896-47bf-8160-e81a5107f3ed', 'Sample Blog Title 270', 'sample-blog-270', 'This is the content of Sample Blog 270. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_270.jpg', 2732, '2024-04-13 14:27:22.645386', '2024-04-13 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'a1a73d7b-2534-4032-a2c8-d161bef68749', '40d7a621-d8d1-4bcb-9ab2-be3b4fc2d3ab', 'Sample Blog Title 271', 'sample-blog-271', 'This is the content of Sample Blog 271. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_271.jpg', 197, '2025-01-02 14:27:22.645386', '2025-01-03 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '243afcd7-f90c-4d6f-b8c3-02e527026b51', '5fa7e24b-fcee-48d8-b8b1-1114b9b2094d', 'Sample Blog Title 272', 'sample-blog-272', 'This is the content of Sample Blog 272. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_272.jpg', 6112, '2024-03-13 14:27:22.645386', '2024-03-22 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '5a42f847-b055-44a9-b7b5-0461c3d0f631', '8cb61520-fd74-4e18-8c82-668c6d088264', 'Sample Blog Title 273', 'sample-blog-273', 'This is the content of Sample Blog 273. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_273.jpg', 9650, '2024-10-01 14:27:22.645386', '2024-10-01 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'ccb018c2-ec74-4f9a-b25d-eb846f95c7eb', 'f499de7d-995e-4017-928d-b40736f9ea79', 'Sample Blog Title 274', 'sample-blog-274', 'This is the content of Sample Blog 274. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_274.jpg', 8896, '2024-05-31 14:27:22.645386', '2024-06-03 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd198b52e-5445-41b0-a04c-c237ee844add', 'f391768c-7823-4784-b04d-a38a27b88967', 'Sample Blog Title 275', 'sample-blog-275', 'This is the content of Sample Blog 275. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_275.jpg', 1255, '2024-12-07 14:27:22.645386', '2024-12-14 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '7a5ac3fd-e578-47f2-909c-5c50fb53fdc9', '9c2fe57a-858b-4f54-83d1-16dbf396b752', 'Sample Blog Title 276', 'sample-blog-276', 'This is the content of Sample Blog 276. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_276.jpg', 2583, '2024-03-14 14:27:22.645386', '2024-03-19 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e01c4191-277b-49a4-9daf-c9115b403771', '9c2fe57a-858b-4f54-83d1-16dbf396b752', 'Sample Blog Title 277', 'sample-blog-277', 'This is the content of Sample Blog 277. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_277.jpg', 8010, '2024-03-29 14:27:22.645386', '2024-03-30 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'b9279f65-272f-4782-8b4d-0a85fe38b767', 'b63b3614-0210-41af-a843-9775c3c06121', 'Sample Blog Title 278', 'sample-blog-278', 'This is the content of Sample Blog 278. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_278.jpg', 7087, '2024-10-16 14:27:22.645386', '2024-10-21 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '375c364a-fada-4143-a467-25db193523ca', 'd4ef8972-f69c-40c9-a7d3-bc0ef5868391', 'Sample Blog Title 279', 'sample-blog-279', 'This is the content of Sample Blog 279. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_279.jpg', 1336, '2024-10-21 14:27:22.645386', '2024-10-31 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '13d94072-58e1-4cb8-887a-f3cdd719b6ca', '103d8eb1-7e4b-4cb1-8daa-5cfa1e3d26ed', 'Sample Blog Title 280', 'sample-blog-280', 'This is the content of Sample Blog 280. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_280.jpg', 2325, '2024-03-22 14:27:22.645386', '2024-04-01 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '26a6ca91-7b11-4e43-897d-2fb7063f79c3', 'd6a6524f-a0b3-4e39-b3b4-faae23adaf29', 'Sample Blog Title 281', 'sample-blog-281', 'This is the content of Sample Blog 281. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_281.jpg', 7703, '2024-03-31 14:27:22.645386', '2024-04-08 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '072adb36-e70d-4141-a828-7655392c02c8', '2695ae5a-caf7-4810-b901-625cc6c712ca', 'Sample Blog Title 282', 'sample-blog-282', 'This is the content of Sample Blog 282. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_282.jpg', 9023, '2024-04-24 14:27:22.645386', '2024-05-03 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '6374a74c-d52f-4d9d-b2e0-c59ae1d60625', '92f84112-7d4d-448b-818e-b2b74f396858', 'Sample Blog Title 283', 'sample-blog-283', 'This is the content of Sample Blog 283. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_283.jpg', 4725, '2024-05-04 14:27:22.645386', '2024-05-14 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '95a49845-6c24-40b7-a449-8fd4e678191c', '011d86ec-2fb8-473d-a0d1-7f8a42a611d3', 'Sample Blog Title 284', 'sample-blog-284', 'This is the content of Sample Blog 284. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_284.jpg', 7651, '2024-09-06 14:27:22.645386', '2024-09-09 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'b78e3e01-0439-4c59-be15-06e1c014cc75', 'd4ef8972-f69c-40c9-a7d3-bc0ef5868391', 'Sample Blog Title 285', 'sample-blog-285', 'This is the content of Sample Blog 285. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_285.jpg', 7907, '2024-09-15 14:27:22.645386', '2024-09-17 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'f9e8f081-6f3f-4ed7-8b0d-5ba27468c00c', 'd9588d50-5f13-4b66-a531-e4e290f9ac0f', 'Sample Blog Title 286', 'sample-blog-286', 'This is the content of Sample Blog 286. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_286.jpg', 4115, '2024-08-21 14:27:22.645386', '2024-08-22 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '330f9355-d743-42bd-9b16-35be66759d05', 'f6cda0db-6d4b-4050-bfae-f360427e31ce', 'Sample Blog Title 287', 'sample-blog-287', 'This is the content of Sample Blog 287. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_287.jpg', 601, '2024-07-14 14:27:22.645386', '2024-07-22 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '08d0c829-6445-4302-9041-d9342746fbc0', '8cb61520-fd74-4e18-8c82-668c6d088264', 'Sample Blog Title 288', 'sample-blog-288', 'This is the content of Sample Blog 288. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_288.jpg', 9031, '2024-09-23 14:27:22.645386', '2024-09-29 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'aa37ae3d-1d52-4144-ac76-79e58d55b100', 'f8b36547-801b-49d2-a8bc-5c4d7e766119', 'Sample Blog Title 289', 'sample-blog-289', 'This is the content of Sample Blog 289. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_289.jpg', 773, '2024-07-15 14:27:22.645386', '2024-07-15 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'b2f4139f-fd83-43d8-b3f6-caf55ee96b8b', 'a556f3dd-12bd-44c4-9a5a-49621b297736', 'Sample Blog Title 290', 'sample-blog-290', 'This is the content of Sample Blog 290. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_290.jpg', 9707, '2024-08-14 14:27:22.645386', '2024-08-19 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'aec20b48-598e-463f-b232-27f0998f95a4', 'dff097d3-1d58-429f-9261-e0155b99c4e7', 'Sample Blog Title 291', 'sample-blog-291', 'This is the content of Sample Blog 291. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_291.jpg', 9264, '2025-01-22 14:27:22.645386', '2025-01-28 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '83a6e2ac-5f7f-48fc-a906-93ef81dbf16e', 'b697998f-4712-46b5-8532-4f4c68e4927c', 'Sample Blog Title 292', 'sample-blog-292', 'This is the content of Sample Blog 292. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_292.jpg', 7561, '2024-08-12 14:27:22.645386', '2024-08-12 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'b5ae06df-1f39-4dc9-a5e8-82041dada46b', '8c5a0a04-13ff-412e-9552-6cdcb035bbe9', 'Sample Blog Title 293', 'sample-blog-293', 'This is the content of Sample Blog 293. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_293.jpg', 3129, '2025-01-15 14:27:22.645386', '2025-01-22 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '21ca385a-5f2d-47a5-92ce-7990003cea7a', '714a063a-fcf1-451c-b72a-1a2c27e91f33', 'Sample Blog Title 294', 'sample-blog-294', 'This is the content of Sample Blog 294. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_294.jpg', 4242, '2025-02-08 14:27:22.645386', '2025-02-14 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'aacb75be-199e-4c21-b5a2-463dbf764659', 'd6a6524f-a0b3-4e39-b3b4-faae23adaf29', 'Sample Blog Title 295', 'sample-blog-295', 'This is the content of Sample Blog 295. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_295.jpg', 7563, '2024-06-03 14:27:22.645386', '2024-06-07 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '120e2e92-63b7-461e-a5b5-ce8a4b7ed927', '51e04f09-ce7a-49aa-8892-269a46065300', 'Sample Blog Title 296', 'sample-blog-296', 'This is the content of Sample Blog 296. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_296.jpg', 1767, '2024-09-17 14:27:22.645386', '2024-09-24 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '80f34afd-5572-46c0-aff6-eb0056ff7112', '6d9d30fd-e2ed-4a2f-9034-8531d7723e11', 'Sample Blog Title 297', 'sample-blog-297', 'This is the content of Sample Blog 297. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_297.jpg', 3131, '2024-11-30 14:27:22.645386', '2024-12-01 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '2e76cf0d-f191-4869-99eb-85476614f092', '2695ae5a-caf7-4810-b901-625cc6c712ca', 'Sample Blog Title 298', 'sample-blog-298', 'This is the content of Sample Blog 298. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_298.jpg', 2043, '2024-12-23 14:27:22.645386', '2025-01-02 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'ed7f7ebd-5e37-4717-ae9b-fbeb0ef59982', '71c040a1-4ffd-4e48-8ae9-d1579f39a9fa', 'Sample Blog Title 299', 'sample-blog-299', 'This is the content of Sample Blog 299. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_299.jpg', 431, '2024-06-08 14:27:22.645386', '2024-06-14 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '3a0af467-1caf-4ea0-a981-7c45be6a6fdd', 'd07a734b-df00-4d1d-a15f-fbfe418fe807', 'Sample Blog Title 300', 'sample-blog-300', 'This is the content of Sample Blog 300. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_300.jpg', 8809, '2025-02-01 14:27:22.645386', '2025-02-10 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '65b60a11-8bb0-41f7-9faf-d99262d627e2', 'f499de7d-995e-4017-928d-b40736f9ea79', 'Sample Blog Title 301', 'sample-blog-301', 'This is the content of Sample Blog 301. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_301.jpg', 5607, '2024-04-28 14:27:22.645386', '2024-05-04 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'f872ff9e-03da-4a45-bedc-95adf18e61ec', '8b8bc0e4-8066-4b44-850d-abf220c9b056', 'Sample Blog Title 302', 'sample-blog-302', 'This is the content of Sample Blog 302. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_302.jpg', 8201, '2024-10-24 14:27:22.645386', '2024-10-25 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd75c892d-8287-4991-aa32-a09593a4acc0', '488cf604-21d2-416d-ad08-71a1a28540f0', 'Sample Blog Title 303', 'sample-blog-303', 'This is the content of Sample Blog 303. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_303.jpg', 6955, '2025-01-05 14:27:22.645386', '2025-01-11 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'b42e029a-e3ff-4fb9-b796-4e309bf3d296', '03481f97-cfe7-468e-b355-116bba4e8051', 'Sample Blog Title 304', 'sample-blog-304', 'This is the content of Sample Blog 304. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_304.jpg', 6030, '2024-05-04 14:27:22.645386', '2024-05-09 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd058f0bd-50a9-437f-8935-316e98aa4de1', '10919c49-5177-4a73-a703-03835738f105', 'Sample Blog Title 305', 'sample-blog-305', 'This is the content of Sample Blog 305. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_305.jpg', 2550, '2024-04-18 14:27:22.645386', '2024-04-28 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '91d7fd20-b884-4bf6-bf19-5dedcf17286b', '26f058a6-7f8a-4e82-aae5-10137c657f5e', 'Sample Blog Title 306', 'sample-blog-306', 'This is the content of Sample Blog 306. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_306.jpg', 8741, '2024-06-05 14:27:22.645386', '2024-06-09 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '43fe1de0-1181-4189-8956-3c38310e4a12', 'dff097d3-1d58-429f-9261-e0155b99c4e7', 'Sample Blog Title 307', 'sample-blog-307', 'This is the content of Sample Blog 307. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_307.jpg', 1837, '2025-01-03 14:27:22.645386', '2025-01-06 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '5629d7e2-5d6d-41a9-830e-1e874d800faf', '4aadc413-3ab0-4dc7-9cec-0c6dd2f04540', 'Sample Blog Title 308', 'sample-blog-308', 'This is the content of Sample Blog 308. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_308.jpg', 1309, '2024-04-23 14:27:22.645386', '2024-05-03 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd15ec827-8411-4829-beca-f2c6f76f7c81', '39c05142-af35-40ae-a9bf-95e0c58a5ef5', 'Sample Blog Title 309', 'sample-blog-309', 'This is the content of Sample Blog 309. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_309.jpg', 7970, '2024-08-23 14:27:22.645386', '2024-08-31 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '0ac79616-dfdb-4697-b282-8a1eee8fa1b6', '7f905030-8831-4f16-aeff-ddfae4c4e45b', 'Sample Blog Title 310', 'sample-blog-310', 'This is the content of Sample Blog 310. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_310.jpg', 1454, '2024-08-21 14:27:22.645386', '2024-08-27 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'a5be0c1a-15b7-4254-90a2-2951e8201ffd', 'c98c32d8-a040-4f94-8e06-4d538f89e0dc', 'Sample Blog Title 311', 'sample-blog-311', 'This is the content of Sample Blog 311. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_311.jpg', 8867, '2024-10-29 14:27:22.645386', '2024-10-29 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'be887eab-5594-4271-85bb-52b3084bf858', '94d6b67f-87b1-42ee-a177-5e4788b3a5a3', 'Sample Blog Title 312', 'sample-blog-312', 'This is the content of Sample Blog 312. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_312.jpg', 3173, '2024-07-21 14:27:22.645386', '2024-07-28 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '88f39f15-2477-415a-a6ed-966b45a17169', '5bbebc30-da22-4876-a2f4-04e55c37d11f', 'Sample Blog Title 313', 'sample-blog-313', 'This is the content of Sample Blog 313. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_313.jpg', 3662, '2024-11-07 14:27:22.645386', '2024-11-14 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '79fc07a0-3d47-49db-abaf-f500a97cdca6', '572e96a6-e620-4318-88e7-dd75551e9878', 'Sample Blog Title 314', 'sample-blog-314', 'This is the content of Sample Blog 314. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_314.jpg', 7894, '2024-07-02 14:27:22.645386', '2024-07-02 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd0fd9757-03c5-46b7-af38-69fbf558c07b', '13d2882b-17c5-47b9-bbe3-736984976985', 'Sample Blog Title 315', 'sample-blog-315', 'This is the content of Sample Blog 315. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_315.jpg', 4218, '2024-06-08 14:27:22.645386', '2024-06-14 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'da7074d1-2461-4705-ac4d-187f5fd72549', '53b658e1-f8fd-4133-99c8-02f2e2ce422d', 'Sample Blog Title 316', 'sample-blog-316', 'This is the content of Sample Blog 316. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_316.jpg', 3300, '2024-07-15 14:27:22.645386', '2024-07-20 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'de8dfb45-0872-44af-9351-a92b0df31e1f', '89139764-3150-4ea5-b980-61e8585f3a41', 'Sample Blog Title 317', 'sample-blog-317', 'This is the content of Sample Blog 317. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_317.jpg', 3115, '2024-05-06 14:27:22.645386', '2024-05-07 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '47a1d840-f7d2-4776-8d8f-8df1550e45be', '781ec698-ba4b-4723-a3c9-8b0694842e54', 'Sample Blog Title 318', 'sample-blog-318', 'This is the content of Sample Blog 318. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_318.jpg', 461, '2024-03-07 14:27:22.645386', '2024-03-15 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '1fc42337-6eee-417c-b57b-e7971c018c00', '3f9017fc-ddc0-4467-a609-672bef2ab6e1', 'Sample Blog Title 319', 'sample-blog-319', 'This is the content of Sample Blog 319. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_319.jpg', 9816, '2024-03-09 14:27:22.645386', '2024-03-16 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'bef770f3-1811-4367-acbc-f53eb4476d27', '5bbebc30-da22-4876-a2f4-04e55c37d11f', 'Sample Blog Title 320', 'sample-blog-320', 'This is the content of Sample Blog 320. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_320.jpg', 7863, '2024-05-08 14:27:22.645386', '2024-05-17 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '406d1f03-60b7-4a39-89aa-abb02548e6aa', '89139764-3150-4ea5-b980-61e8585f3a41', 'Sample Blog Title 321', 'sample-blog-321', 'This is the content of Sample Blog 321. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_321.jpg', 6764, '2025-01-14 14:27:22.645386', '2025-01-15 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'b2faf7ee-715b-4236-9d60-55b7529862f1', '13d2882b-17c5-47b9-bbe3-736984976985', 'Sample Blog Title 322', 'sample-blog-322', 'This is the content of Sample Blog 322. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_322.jpg', 4198, '2024-12-18 14:27:22.645386', '2024-12-20 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '90f05e95-7d80-4781-bffd-ed20af218d69', '606ebf50-ffcb-4315-a892-c9f2dafaed32', 'Sample Blog Title 323', 'sample-blog-323', 'This is the content of Sample Blog 323. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_323.jpg', 1675, '2024-08-18 14:27:22.645386', '2024-08-19 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '321fda3b-87af-4993-b4d3-9974c8bd49a4', '2038934d-d590-4e9f-bd2b-f46cc1acf46d', 'Sample Blog Title 324', 'sample-blog-324', 'This is the content of Sample Blog 324. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_324.jpg', 3951, '2024-05-10 14:27:22.645386', '2024-05-20 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '9e060023-c037-4641-89d1-87bc5f4d3dcc', '1288136e-65ae-4cab-96ac-1dcf147f94e4', 'Sample Blog Title 325', 'sample-blog-325', 'This is the content of Sample Blog 325. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_325.jpg', 274, '2024-05-10 14:27:22.645386', '2024-05-12 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e52ac314-1110-415c-843d-148467bc911f', '53b658e1-f8fd-4133-99c8-02f2e2ce422d', 'Sample Blog Title 326', 'sample-blog-326', 'This is the content of Sample Blog 326. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_326.jpg', 1693, '2024-12-16 14:27:22.645386', '2024-12-21 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'f268be81-afc5-4b1f-9948-f5521e26efd8', '26f058a6-7f8a-4e82-aae5-10137c657f5e', 'Sample Blog Title 327', 'sample-blog-327', 'This is the content of Sample Blog 327. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_327.jpg', 9498, '2024-07-12 14:27:22.645386', '2024-07-17 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '9bcb5681-3351-421f-b0b3-d8e8e0749142', '4d132b27-8363-4bb0-8618-360068914d24', 'Sample Blog Title 328', 'sample-blog-328', 'This is the content of Sample Blog 328. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_328.jpg', 640, '2024-09-01 14:27:22.645386', '2024-09-08 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '4f64df6d-35cf-4d2a-932d-b69f36bd707d', '572e96a6-e620-4318-88e7-dd75551e9878', 'Sample Blog Title 329', 'sample-blog-329', 'This is the content of Sample Blog 329. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_329.jpg', 2338, '2024-09-03 14:27:22.645386', '2024-09-04 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '3a720481-1bac-4a49-9fee-fab8f1b9c270', 'e8579452-e2ab-48f4-8681-50a69c865547', 'Sample Blog Title 330', 'sample-blog-330', 'This is the content of Sample Blog 330. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_330.jpg', 1426, '2024-02-22 14:27:22.645386', '2024-03-03 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '860176e2-c82d-4d1c-9bc7-bd74522efe1f', '6129a2ee-fd8d-4a70-b172-0ccd6faf9871', 'Sample Blog Title 331', 'sample-blog-331', 'This is the content of Sample Blog 331. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_331.jpg', 1278, '2024-04-19 14:27:22.645386', '2024-04-27 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '02df85b2-2ea7-4e49-86be-027b1eb69378', 'd4ef8972-f69c-40c9-a7d3-bc0ef5868391', 'Sample Blog Title 332', 'sample-blog-332', 'This is the content of Sample Blog 332. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_332.jpg', 2836, '2024-08-07 14:27:22.645386', '2024-08-17 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '254d4665-a248-4663-9d48-815498bc5066', '39c05142-af35-40ae-a9bf-95e0c58a5ef5', 'Sample Blog Title 333', 'sample-blog-333', 'This is the content of Sample Blog 333. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_333.jpg', 4954, '2024-06-15 14:27:22.645386', '2024-06-18 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'ec0b09ee-6837-47c2-b257-f4d3b675e449', '40e38c65-c9b3-49bf-98eb-306aa0a7f269', 'Sample Blog Title 334', 'sample-blog-334', 'This is the content of Sample Blog 334. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_334.jpg', 6541, '2024-07-07 14:27:22.645386', '2024-07-08 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '9a79bb47-5b58-4dae-ad13-60af1989c8c5', '412d4aec-7bd0-4e29-a237-392d09029ed4', 'Sample Blog Title 335', 'sample-blog-335', 'This is the content of Sample Blog 335. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_335.jpg', 9877, '2024-03-16 14:27:22.645386', '2024-03-17 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'c9210c4a-6331-4774-bc37-e73a06799cc1', '040e0ba8-42e8-49b0-b72c-00a29329c22c', 'Sample Blog Title 336', 'sample-blog-336', 'This is the content of Sample Blog 336. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_336.jpg', 7514, '2024-10-19 14:27:22.645386', '2024-10-24 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '0c2b935c-8ff4-4536-bfad-5fec8a1606b8', 'f499de7d-995e-4017-928d-b40736f9ea79', 'Sample Blog Title 337', 'sample-blog-337', 'This is the content of Sample Blog 337. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_337.jpg', 6621, '2024-07-10 14:27:22.645386', '2024-07-18 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'dc5569ff-779b-4d8e-9186-89586052a42b', '2e8bc313-676a-43bd-be66-01e8e88dcbb7', 'Sample Blog Title 338', 'sample-blog-338', 'This is the content of Sample Blog 338. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_338.jpg', 8700, '2024-06-25 14:27:22.645386', '2024-06-27 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'a88c74be-37ca-4f65-8d0e-e593d6c60b5f', '2e8bc313-676a-43bd-be66-01e8e88dcbb7', 'Sample Blog Title 339', 'sample-blog-339', 'This is the content of Sample Blog 339. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_339.jpg', 4459, '2024-11-23 14:27:22.645386', '2024-12-02 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'f25ae683-2b2c-4703-90bf-47a464dd1740', 'c703c511-7208-4166-b68d-f71899018b12', 'Sample Blog Title 340', 'sample-blog-340', 'This is the content of Sample Blog 340. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_340.jpg', 103, '2024-10-10 14:27:22.645386', '2024-10-19 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'cdeb2ece-7910-4164-bb7b-2f74f472a22a', '8c5a0a04-13ff-412e-9552-6cdcb035bbe9', 'Sample Blog Title 341', 'sample-blog-341', 'This is the content of Sample Blog 341. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_341.jpg', 6645, '2024-07-20 14:27:22.645386', '2024-07-28 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'b5dcdeed-fdc5-496d-a436-3de3293e2617', '4e99bfb6-a958-4f2f-a3b1-402cd84fdf5b', 'Sample Blog Title 342', 'sample-blog-342', 'This is the content of Sample Blog 342. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_342.jpg', 2943, '2024-08-28 14:27:22.645386', '2024-09-02 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '1bc8b8bb-fdd7-467c-8eed-49f97bfa4a0a', 'fefcc24d-ad0c-4abd-8db3-f143d2aedc13', 'Sample Blog Title 343', 'sample-blog-343', 'This is the content of Sample Blog 343. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_343.jpg', 7826, '2024-03-11 14:27:22.645386', '2024-03-15 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '2d655a1d-a270-4833-8025-ac2aaeb7d7ef', 'bcacbd38-6630-44a4-a5de-66d359987f48', 'Sample Blog Title 344', 'sample-blog-344', 'This is the content of Sample Blog 344. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_344.jpg', 8802, '2024-03-02 14:27:22.645386', '2024-03-06 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '80299fe6-54e1-430a-b533-cbf9649c4ea9', '40d7a621-d8d1-4bcb-9ab2-be3b4fc2d3ab', 'Sample Blog Title 345', 'sample-blog-345', 'This is the content of Sample Blog 345. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_345.jpg', 6943, '2024-03-31 14:27:22.645386', '2024-04-06 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'de2adff8-eee4-4889-b351-1b78a27e42c5', '91e6c97a-83d2-4550-b5d6-09c10568cc92', 'Sample Blog Title 346', 'sample-blog-346', 'This is the content of Sample Blog 346. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_346.jpg', 9239, '2024-02-23 14:27:22.645386', '2024-02-29 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '044b7d36-74ec-4167-8290-6a8c15f55ba3', '91e6c97a-83d2-4550-b5d6-09c10568cc92', 'Sample Blog Title 347', 'sample-blog-347', 'This is the content of Sample Blog 347. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_347.jpg', 2659, '2024-03-05 14:27:22.645386', '2024-03-11 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '5c4e74d5-6f47-4d2d-a174-f4b62408d926', '8cb78e82-a9c9-4550-9861-a28a3b4c0342', 'Sample Blog Title 348', 'sample-blog-348', 'This is the content of Sample Blog 348. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_348.jpg', 8486, '2024-11-25 14:27:22.645386', '2024-11-30 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '73a6635a-4c22-4a56-9f3b-1e1f1e51d990', '7f905030-8831-4f16-aeff-ddfae4c4e45b', 'Sample Blog Title 349', 'sample-blog-349', 'This is the content of Sample Blog 349. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_349.jpg', 8951, '2024-07-30 14:27:22.645386', '2024-07-31 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd1ee2b50-b6c0-4a54-a3a0-5a93cc85bb23', '40d7a621-d8d1-4bcb-9ab2-be3b4fc2d3ab', 'Sample Blog Title 350', 'sample-blog-350', 'This is the content of Sample Blog 350. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_350.jpg', 4575, '2024-08-15 14:27:22.645386', '2024-08-15 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'ac952b9a-e684-4785-933e-ffb43d171414', '699a0f8c-a70b-4e7c-95da-af2a1a874135', 'Sample Blog Title 351', 'sample-blog-351', 'This is the content of Sample Blog 351. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_351.jpg', 6033, '2024-05-03 14:27:22.645386', '2024-05-11 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '00bd5300-58d7-42f4-a914-59d121435b55', '6129a2ee-fd8d-4a70-b172-0ccd6faf9871', 'Sample Blog Title 352', 'sample-blog-352', 'This is the content of Sample Blog 352. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_352.jpg', 9446, '2024-06-05 14:27:22.645386', '2024-06-11 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '76612519-d493-48dd-8cd8-dedd2e7d550b', '7223bd3a-e482-4d14-bd9f-552f60622fee', 'Sample Blog Title 353', 'sample-blog-353', 'This is the content of Sample Blog 353. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_353.jpg', 3861, '2024-07-05 14:27:22.645386', '2024-07-09 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'a3863b57-42a2-4094-9b3f-2a1a1c5dddcd', 'f391768c-7823-4784-b04d-a38a27b88967', 'Sample Blog Title 354', 'sample-blog-354', 'This is the content of Sample Blog 354. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_354.jpg', 9143, '2024-06-29 14:27:22.645386', '2024-06-29 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'a8d923f7-c732-4064-b2c7-70ca799f025c', '03481f97-cfe7-468e-b355-116bba4e8051', 'Sample Blog Title 355', 'sample-blog-355', 'This is the content of Sample Blog 355. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_355.jpg', 1511, '2024-06-21 14:27:22.645386', '2024-06-23 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '6337786a-4ba3-4d85-9d91-d782a948a48a', '488cf604-21d2-416d-ad08-71a1a28540f0', 'Sample Blog Title 356', 'sample-blog-356', 'This is the content of Sample Blog 356. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_356.jpg', 762, '2025-01-09 14:27:22.645386', '2025-01-19 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '0e011026-cf79-41b3-8f55-b682cab34edc', 'b63b3614-0210-41af-a843-9775c3c06121', 'Sample Blog Title 357', 'sample-blog-357', 'This is the content of Sample Blog 357. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_357.jpg', 1627, '2024-04-03 14:27:22.645386', '2024-04-05 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '2e86a723-f117-40cc-a0f5-ce62893c934f', 'd6a6524f-a0b3-4e39-b3b4-faae23adaf29', 'Sample Blog Title 358', 'sample-blog-358', 'This is the content of Sample Blog 358. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_358.jpg', 2792, '2024-06-17 14:27:22.645386', '2024-06-22 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '636d1aea-dd48-465d-a391-6f6493580e9c', '6e7a436a-a896-47bf-8160-e81a5107f3ed', 'Sample Blog Title 359', 'sample-blog-359', 'This is the content of Sample Blog 359. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_359.jpg', 7962, '2024-06-05 14:27:22.645386', '2024-06-11 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'dc733176-8089-42c4-a173-dd8bc95a2345', 'c98c32d8-a040-4f94-8e06-4d538f89e0dc', 'Sample Blog Title 360', 'sample-blog-360', 'This is the content of Sample Blog 360. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_360.jpg', 3929, '2024-07-12 14:27:22.645386', '2024-07-19 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'eceb6981-678c-48eb-b23e-4354027b531d', '03481f97-cfe7-468e-b355-116bba4e8051', 'Sample Blog Title 361', 'sample-blog-361', 'This is the content of Sample Blog 361. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_361.jpg', 7145, '2025-02-07 14:27:22.645386', '2025-02-15 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'f4d6dd0c-9bff-4b82-acb1-f97e7657d09f', 'b63b3614-0210-41af-a843-9775c3c06121', 'Sample Blog Title 362', 'sample-blog-362', 'This is the content of Sample Blog 362. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_362.jpg', 5806, '2024-03-05 14:27:22.645386', '2024-03-07 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '24dd3c61-6a75-47a8-96d9-2bf4b0ac2aab', '781ec698-ba4b-4723-a3c9-8b0694842e54', 'Sample Blog Title 363', 'sample-blog-363', 'This is the content of Sample Blog 363. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_363.jpg', 2613, '2024-12-02 14:27:22.645386', '2024-12-08 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '1f6c7c07-6ef9-45be-ac28-396dc0d42a3e', '4e99bfb6-a958-4f2f-a3b1-402cd84fdf5b', 'Sample Blog Title 364', 'sample-blog-364', 'This is the content of Sample Blog 364. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_364.jpg', 7403, '2024-04-04 14:27:22.645386', '2024-04-09 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'bc179d14-93ae-4fd1-81fe-b74ec8eaa84f', '40755138-babb-47a6-8353-0cb7ccac2513', 'Sample Blog Title 365', 'sample-blog-365', 'This is the content of Sample Blog 365. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_365.jpg', 1503, '2024-04-29 14:27:22.645386', '2024-05-08 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '9473f306-b353-475b-9e6b-096b082e4668', '51e04f09-ce7a-49aa-8892-269a46065300', 'Sample Blog Title 366', 'sample-blog-366', 'This is the content of Sample Blog 366. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_366.jpg', 8081, '2024-06-15 14:27:22.645386', '2024-06-23 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '3135bff0-ef26-45f3-9adb-f947c8b900f9', '8ff4183f-8f6e-4ccb-9ab5-2ad2b0878ecb', 'Sample Blog Title 367', 'sample-blog-367', 'This is the content of Sample Blog 367. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_367.jpg', 5929, '2024-12-26 14:27:22.645386', '2025-01-05 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'a9ec516b-669a-4ee6-a505-27b8bc209ccf', 'c2791e81-4b59-4fc5-bb30-d92815d98716', 'Sample Blog Title 368', 'sample-blog-368', 'This is the content of Sample Blog 368. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_368.jpg', 1510, '2024-04-25 14:27:22.645386', '2024-04-28 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'cdab6109-88a9-467d-b842-a3a2a978181b', '781ec698-ba4b-4723-a3c9-8b0694842e54', 'Sample Blog Title 369', 'sample-blog-369', 'This is the content of Sample Blog 369. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_369.jpg', 4546, '2024-09-18 14:27:22.645386', '2024-09-20 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'c0f79b16-9c74-4b16-9b4e-5246075b7069', '6d9d30fd-e2ed-4a2f-9034-8531d7723e11', 'Sample Blog Title 370', 'sample-blog-370', 'This is the content of Sample Blog 370. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_370.jpg', 8928, '2024-06-14 14:27:22.645386', '2024-06-23 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '6a08b9c9-8422-4ac1-babc-ffed7e875451', '71c040a1-4ffd-4e48-8ae9-d1579f39a9fa', 'Sample Blog Title 371', 'sample-blog-371', 'This is the content of Sample Blog 371. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_371.jpg', 9336, '2024-03-29 14:27:22.645386', '2024-04-07 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '33890e20-41bf-4cda-b655-c86c4cd91f97', '714a063a-fcf1-451c-b72a-1a2c27e91f33', 'Sample Blog Title 372', 'sample-blog-372', 'This is the content of Sample Blog 372. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_372.jpg', 9649, '2024-05-03 14:27:22.645386', '2024-05-11 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '6a5f4588-198d-489b-9ec2-1ad6f0980595', '781ec698-ba4b-4723-a3c9-8b0694842e54', 'Sample Blog Title 373', 'sample-blog-373', 'This is the content of Sample Blog 373. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_373.jpg', 4400, '2024-08-21 14:27:22.645386', '2024-08-28 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '51af3fd0-3acd-416e-bcbe-3f9717c45272', 'bf95245c-cf8f-46e7-8660-08e4e2e3d4a2', 'Sample Blog Title 374', 'sample-blog-374', 'This is the content of Sample Blog 374. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_374.jpg', 9371, '2024-04-26 14:27:22.645386', '2024-04-26 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '2aa3e8cb-6199-4262-a568-c16a7b001ead', '4ae05754-eef2-4aad-82df-794ab3c91930', 'Sample Blog Title 375', 'sample-blog-375', 'This is the content of Sample Blog 375. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_375.jpg', 9979, '2024-02-21 14:27:22.645386', '2024-03-02 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '852dc637-cd93-493a-9877-f4dc9eb8b33d', '10919c49-5177-4a73-a703-03835738f105', 'Sample Blog Title 376', 'sample-blog-376', 'This is the content of Sample Blog 376. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_376.jpg', 5704, '2024-05-03 14:27:22.645386', '2024-05-09 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '1aa9a441-7d6d-4c7a-a557-a3e72ea3b341', '6129a2ee-fd8d-4a70-b172-0ccd6faf9871', 'Sample Blog Title 377', 'sample-blog-377', 'This is the content of Sample Blog 377. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_377.jpg', 6851, '2024-07-30 14:27:22.645386', '2024-08-03 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'cb71aa28-8702-42f6-8813-22fa2f8f126f', 'd9588d50-5f13-4b66-a531-e4e290f9ac0f', 'Sample Blog Title 378', 'sample-blog-378', 'This is the content of Sample Blog 378. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_378.jpg', 9460, '2024-03-15 14:27:22.645386', '2024-03-25 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '13249558-306a-4729-b555-a43b7806b5d8', '714a063a-fcf1-451c-b72a-1a2c27e91f33', 'Sample Blog Title 379', 'sample-blog-379', 'This is the content of Sample Blog 379. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_379.jpg', 5434, '2024-04-19 14:27:22.645386', '2024-04-23 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd24f9c61-b3d9-4da1-9699-ca794f919a87', '4aadc413-3ab0-4dc7-9cec-0c6dd2f04540', 'Sample Blog Title 380', 'sample-blog-380', 'This is the content of Sample Blog 380. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_380.jpg', 3521, '2024-05-06 14:27:22.645386', '2024-05-10 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '2b28b414-114e-4b84-8333-57c38142b98c', 'f391768c-7823-4784-b04d-a38a27b88967', 'Sample Blog Title 381', 'sample-blog-381', 'This is the content of Sample Blog 381. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_381.jpg', 2987, '2024-02-28 14:27:22.645386', '2024-03-09 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '8bc06fbc-750b-468a-b61f-86d5341e1962', '5092b13d-a468-407a-a609-da88631cbdc7', 'Sample Blog Title 382', 'sample-blog-382', 'This is the content of Sample Blog 382. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_382.jpg', 926, '2024-11-06 14:27:22.645386', '2024-11-15 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '28e57309-031a-4446-ac4f-0bac73f89c32', 'b9208830-774a-4676-852a-9019cf3e5c63', 'Sample Blog Title 383', 'sample-blog-383', 'This is the content of Sample Blog 383. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_383.jpg', 7960, '2024-03-05 14:27:22.645386', '2024-03-06 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '837a3ec2-8e5d-48da-8e9e-896efaf316cb', '53b658e1-f8fd-4133-99c8-02f2e2ce422d', 'Sample Blog Title 384', 'sample-blog-384', 'This is the content of Sample Blog 384. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_384.jpg', 8336, '2024-05-08 14:27:22.645386', '2024-05-13 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '5883beb7-30fa-4867-b26d-029cbb2cf9e9', '412d4aec-7bd0-4e29-a237-392d09029ed4', 'Sample Blog Title 385', 'sample-blog-385', 'This is the content of Sample Blog 385. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_385.jpg', 7146, '2024-03-02 14:27:22.645386', '2024-03-09 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'f6a090fb-0130-4bc1-8226-cb733a4dfc8d', '103d8eb1-7e4b-4cb1-8daa-5cfa1e3d26ed', 'Sample Blog Title 386', 'sample-blog-386', 'This is the content of Sample Blog 386. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_386.jpg', 5701, '2024-11-14 14:27:22.645386', '2024-11-16 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '6c63cc53-ca0d-4867-9925-d4f1fc323623', '2e8bc313-676a-43bd-be66-01e8e88dcbb7', 'Sample Blog Title 387', 'sample-blog-387', 'This is the content of Sample Blog 387. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_387.jpg', 8721, '2024-07-01 14:27:22.645386', '2024-07-05 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'a1252f49-6321-4846-bed6-d668bfc852ff', '8b36ef5f-2f60-46bd-9ca0-dafe04daaefa', 'Sample Blog Title 388', 'sample-blog-388', 'This is the content of Sample Blog 388. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_388.jpg', 7926, '2024-11-01 14:27:22.645386', '2024-11-10 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e7520d39-86f4-49e9-8cab-d8c4c060a481', 'e988e97f-169c-4a2e-ae7d-06d0928a1faa', 'Sample Blog Title 389', 'sample-blog-389', 'This is the content of Sample Blog 389. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_389.jpg', 8573, '2024-12-27 14:27:22.645386', '2024-12-28 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'f4e59794-5f88-4958-b97a-1de678fb40ab', '6d9d30fd-e2ed-4a2f-9034-8531d7723e11', 'Sample Blog Title 390', 'sample-blog-390', 'This is the content of Sample Blog 390. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_390.jpg', 9819, '2024-04-10 14:27:22.645386', '2024-04-19 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd1e7511f-3e80-41e3-9b27-7bc79753a9b0', 'e8579452-e2ab-48f4-8681-50a69c865547', 'Sample Blog Title 391', 'sample-blog-391', 'This is the content of Sample Blog 391. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_391.jpg', 257, '2024-05-15 14:27:22.645386', '2024-05-15 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'fbc443a7-4d4c-4481-8a64-4ddbba74a025', 'b63b3614-0210-41af-a843-9775c3c06121', 'Sample Blog Title 392', 'sample-blog-392', 'This is the content of Sample Blog 392. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_392.jpg', 7809, '2024-05-16 14:27:22.645386', '2024-05-26 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '976fc226-2a04-462a-b6d3-454434691e10', '1288136e-65ae-4cab-96ac-1dcf147f94e4', 'Sample Blog Title 393', 'sample-blog-393', 'This is the content of Sample Blog 393. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_393.jpg', 9732, '2025-01-03 14:27:22.645386', '2025-01-06 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'aadf2a34-4fa6-4308-8cd5-1aaede530e93', 'f783d009-7713-400d-91ef-d0bd454a3201', 'Sample Blog Title 394', 'sample-blog-394', 'This is the content of Sample Blog 394. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_394.jpg', 6899, '2024-11-03 14:27:22.645386', '2024-11-05 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'ddede1ea-3835-4c71-bbea-985df53ddc38', 'f391768c-7823-4784-b04d-a38a27b88967', 'Sample Blog Title 395', 'sample-blog-395', 'This is the content of Sample Blog 395. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_395.jpg', 4430, '2024-02-27 14:27:22.645386', '2024-03-02 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'c1d2b456-6827-4685-89dd-ae65b990d7e3', 'd07a734b-df00-4d1d-a15f-fbfe418fe807', 'Sample Blog Title 396', 'sample-blog-396', 'This is the content of Sample Blog 396. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_396.jpg', 288, '2025-01-15 14:27:22.645386', '2025-01-22 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '0a805fb8-d562-44b7-971f-7cce7cb4788f', '9c2fe57a-858b-4f54-83d1-16dbf396b752', 'Sample Blog Title 397', 'sample-blog-397', 'This is the content of Sample Blog 397. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_397.jpg', 7344, '2025-02-09 14:27:22.645386', '2025-02-18 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '31b08c1a-9b24-4eca-a64d-dad91c899374', 'bcacbd38-6630-44a4-a5de-66d359987f48', 'Sample Blog Title 398', 'sample-blog-398', 'This is the content of Sample Blog 398. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_398.jpg', 856, '2024-11-04 14:27:22.645386', '2024-11-10 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '15d21619-2797-4196-bd3e-204775ba710d', '40755138-babb-47a6-8353-0cb7ccac2513', 'Sample Blog Title 399', 'sample-blog-399', 'This is the content of Sample Blog 399. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_399.jpg', 8120, '2024-11-14 14:27:22.645386', '2024-11-18 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '450853db-76e9-4565-9e2b-3d70176e2859', '71c040a1-4ffd-4e48-8ae9-d1579f39a9fa', 'Sample Blog Title 400', 'sample-blog-400', 'This is the content of Sample Blog 400. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_400.jpg', 5595, '2024-09-23 14:27:22.645386', '2024-10-01 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '02ded67c-1fd8-4a31-9e87-41c45138605c', '103d8eb1-7e4b-4cb1-8daa-5cfa1e3d26ed', 'Sample Blog Title 401', 'sample-blog-401', 'This is the content of Sample Blog 401. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_401.jpg', 4968, '2024-03-24 14:27:22.645386', '2024-03-26 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'c670efab-542b-4372-ad17-83edb746cbfd', 'b63b3614-0210-41af-a843-9775c3c06121', 'Sample Blog Title 402', 'sample-blog-402', 'This is the content of Sample Blog 402. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_402.jpg', 3283, '2024-12-22 14:27:22.645386', '2024-12-24 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'eec2bbcb-ed36-4f56-a488-c285a3aaead4', '781ec698-ba4b-4723-a3c9-8b0694842e54', 'Sample Blog Title 403', 'sample-blog-403', 'This is the content of Sample Blog 403. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_403.jpg', 414, '2024-06-16 14:27:22.645386', '2024-06-18 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '30de688d-d50c-4cef-84c5-3cf744a89ac4', '13d2882b-17c5-47b9-bbe3-736984976985', 'Sample Blog Title 404', 'sample-blog-404', 'This is the content of Sample Blog 404. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_404.jpg', 9504, '2024-05-18 14:27:22.645386', '2024-05-26 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '5286b977-12f1-4717-a74b-1231083c0ac0', 'a1b824e7-ffa2-4deb-a3fa-0aed799703ab', 'Sample Blog Title 405', 'sample-blog-405', 'This is the content of Sample Blog 405. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_405.jpg', 3446, '2024-03-07 14:27:22.645386', '2024-03-07 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '41cd027a-211b-4228-8e9d-ccb4e9d0705d', '94d6b67f-87b1-42ee-a177-5e4788b3a5a3', 'Sample Blog Title 406', 'sample-blog-406', 'This is the content of Sample Blog 406. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_406.jpg', 4493, '2025-01-27 14:27:22.645386', '2025-02-02 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'c1e252f3-e29f-422d-8d35-99fdd1f8de6e', '2695ae5a-caf7-4810-b901-625cc6c712ca', 'Sample Blog Title 407', 'sample-blog-407', 'This is the content of Sample Blog 407. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_407.jpg', 6614, '2024-07-16 14:27:22.645386', '2024-07-16 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '8f0cf90b-7a64-41b6-808a-5ba0f450d075', '606ebf50-ffcb-4315-a892-c9f2dafaed32', 'Sample Blog Title 408', 'sample-blog-408', 'This is the content of Sample Blog 408. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_408.jpg', 5192, '2024-06-21 14:27:22.645386', '2024-06-23 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'b3291123-5d5b-4040-8cc1-9aa25956140c', 'f8b36547-801b-49d2-a8bc-5c4d7e766119', 'Sample Blog Title 409', 'sample-blog-409', 'This is the content of Sample Blog 409. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_409.jpg', 9614, '2025-02-15 14:27:22.645386', '2025-02-20 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '40c04c88-585a-4118-9962-f305c8e7b600', 'd6576192-4494-48ec-89bb-1a018450876d', 'Sample Blog Title 410', 'sample-blog-410', 'This is the content of Sample Blog 410. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_410.jpg', 7681, '2024-03-22 14:27:22.645386', '2024-03-27 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'b76b8749-5a3b-4474-b933-7b8c53291034', '3f3b19f5-ccab-41f5-aea0-9bef9d1da2aa', 'Sample Blog Title 411', 'sample-blog-411', 'This is the content of Sample Blog 411. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_411.jpg', 6544, '2024-06-28 14:27:22.645386', '2024-07-07 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '8737396f-25f0-4b69-bd20-b82ccb33493c', '2038934d-d590-4e9f-bd2b-f46cc1acf46d', 'Sample Blog Title 412', 'sample-blog-412', 'This is the content of Sample Blog 412. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_412.jpg', 8871, '2025-01-05 14:27:22.645386', '2025-01-11 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e8ce0962-1a11-4cca-8505-a759d1034b0e', '488cf604-21d2-416d-ad08-71a1a28540f0', 'Sample Blog Title 413', 'sample-blog-413', 'This is the content of Sample Blog 413. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_413.jpg', 3118, '2025-01-05 14:27:22.645386', '2025-01-06 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '53830c2a-2a0d-44b7-9879-5b581f995eb8', 'fefcc24d-ad0c-4abd-8db3-f143d2aedc13', 'Sample Blog Title 414', 'sample-blog-414', 'This is the content of Sample Blog 414. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_414.jpg', 9363, '2024-10-21 14:27:22.645386', '2024-10-23 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e9150b47-e93a-4177-af2f-c7c1ae20fb7a', '89139764-3150-4ea5-b980-61e8585f3a41', 'Sample Blog Title 415', 'sample-blog-415', 'This is the content of Sample Blog 415. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_415.jpg', 7935, '2025-01-21 14:27:22.645386', '2025-01-30 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'a575e0ac-c9a1-4eff-8f8c-0981540be395', 'a1b824e7-ffa2-4deb-a3fa-0aed799703ab', 'Sample Blog Title 416', 'sample-blog-416', 'This is the content of Sample Blog 416. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_416.jpg', 2506, '2024-10-28 14:27:22.645386', '2024-10-29 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '78e8b334-cb91-4cfa-85c6-c0d89cf309d1', 'a556f3dd-12bd-44c4-9a5a-49621b297736', 'Sample Blog Title 417', 'sample-blog-417', 'This is the content of Sample Blog 417. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_417.jpg', 1251, '2024-11-25 14:27:22.645386', '2024-11-27 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '53db9716-93e6-4858-a9a3-7105fc09422b', 'f6cda0db-6d4b-4050-bfae-f360427e31ce', 'Sample Blog Title 418', 'sample-blog-418', 'This is the content of Sample Blog 418. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_418.jpg', 2786, '2024-02-26 14:27:22.645386', '2024-03-03 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'f8de7634-92cb-4827-8241-d4be61ca5af1', '5fa7e24b-fcee-48d8-b8b1-1114b9b2094d', 'Sample Blog Title 419', 'sample-blog-419', 'This is the content of Sample Blog 419. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_419.jpg', 953, '2024-08-31 14:27:22.645386', '2024-09-07 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'bb743351-b7be-4ba8-960f-ed1506e3526a', 'ce8329db-2b4a-48fd-94cc-767f8fba7c91', 'Sample Blog Title 420', 'sample-blog-420', 'This is the content of Sample Blog 420. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_420.jpg', 4269, '2024-11-06 14:27:22.645386', '2024-11-09 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '0850cfa4-363d-427c-9c3f-f49de3124c38', '92f84112-7d4d-448b-818e-b2b74f396858', 'Sample Blog Title 421', 'sample-blog-421', 'This is the content of Sample Blog 421. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_421.jpg', 1906, '2024-10-15 14:27:22.645386', '2024-10-25 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '793af18b-205e-419c-9ad9-ad9098abb297', 'dff097d3-1d58-429f-9261-e0155b99c4e7', 'Sample Blog Title 422', 'sample-blog-422', 'This is the content of Sample Blog 422. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_422.jpg', 2483, '2025-01-22 14:27:22.645386', '2025-01-23 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'fe61391d-04db-4e36-8f38-400378a83544', 'edda8670-c8d9-4fa9-acb0-9d7e69e1bca9', 'Sample Blog Title 423', 'sample-blog-423', 'This is the content of Sample Blog 423. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_423.jpg', 9292, '2024-08-15 14:27:22.645386', '2024-08-18 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '08671407-46de-4c63-954e-c33e3508d05a', '32fd4910-c648-4a50-b86b-9195d25d3461', 'Sample Blog Title 424', 'sample-blog-424', 'This is the content of Sample Blog 424. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_424.jpg', 2076, '2024-12-05 14:27:22.645386', '2024-12-11 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd7683f36-ae37-40be-ae88-011db8c6cc52', 'dff097d3-1d58-429f-9261-e0155b99c4e7', 'Sample Blog Title 425', 'sample-blog-425', 'This is the content of Sample Blog 425. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_425.jpg', 7479, '2024-07-18 14:27:22.645386', '2024-07-26 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd661272a-9113-448e-8da8-a617de878837', 'f391768c-7823-4784-b04d-a38a27b88967', 'Sample Blog Title 426', 'sample-blog-426', 'This is the content of Sample Blog 426. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_426.jpg', 7378, '2025-01-14 14:27:22.645386', '2025-01-15 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '785a06c8-3574-4d69-b661-741f338b7cfb', '13d2882b-17c5-47b9-bbe3-736984976985', 'Sample Blog Title 427', 'sample-blog-427', 'This is the content of Sample Blog 427. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_427.jpg', 4277, '2024-11-17 14:27:22.645386', '2024-11-25 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '27b133d3-e779-43b0-9198-2ad586e67020', '572e96a6-e620-4318-88e7-dd75551e9878', 'Sample Blog Title 428', 'sample-blog-428', 'This is the content of Sample Blog 428. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_428.jpg', 996, '2025-02-15 14:27:22.645386', '2025-02-16 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '8ea65650-9116-45a2-8585-b6fb9e9245f7', '2695ae5a-caf7-4810-b901-625cc6c712ca', 'Sample Blog Title 429', 'sample-blog-429', 'This is the content of Sample Blog 429. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_429.jpg', 6878, '2024-09-03 14:27:22.645386', '2024-09-11 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd91c95a1-b7e7-4eba-91bd-b38eec9e941d', '606ebf50-ffcb-4315-a892-c9f2dafaed32', 'Sample Blog Title 430', 'sample-blog-430', 'This is the content of Sample Blog 430. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_430.jpg', 6154, '2024-04-18 14:27:22.645386', '2024-04-19 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '147c2b51-cafe-4247-9a5e-18bec2c8fc2f', 'd6d495d6-719f-4d8a-9237-9a823d1728b3', 'Sample Blog Title 431', 'sample-blog-431', 'This is the content of Sample Blog 431. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_431.jpg', 3067, '2024-10-12 14:27:22.645386', '2024-10-17 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e75cdab2-027c-4c85-8d1e-43c5de9cebf5', 'dff097d3-1d58-429f-9261-e0155b99c4e7', 'Sample Blog Title 432', 'sample-blog-432', 'This is the content of Sample Blog 432. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_432.jpg', 7118, '2024-09-11 14:27:22.645386', '2024-09-13 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '6e4964dd-e288-4cf3-ba03-1e061d05d5cd', '8b36ef5f-2f60-46bd-9ca0-dafe04daaefa', 'Sample Blog Title 433', 'sample-blog-433', 'This is the content of Sample Blog 433. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_433.jpg', 2870, '2025-02-07 14:27:22.645386', '2025-02-11 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '16834a62-2e3e-4ae6-9e0a-4618edec6727', '39c05142-af35-40ae-a9bf-95e0c58a5ef5', 'Sample Blog Title 434', 'sample-blog-434', 'This is the content of Sample Blog 434. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_434.jpg', 230, '2024-11-25 14:27:22.645386', '2024-12-05 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'b12477f0-4005-4292-a358-cb292747319d', '5fa7e24b-fcee-48d8-b8b1-1114b9b2094d', 'Sample Blog Title 435', 'sample-blog-435', 'This is the content of Sample Blog 435. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_435.jpg', 6801, '2024-03-06 14:27:22.645386', '2024-03-08 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e617a082-246b-4b22-8bfa-55c24f28ffb5', '4e99bfb6-a958-4f2f-a3b1-402cd84fdf5b', 'Sample Blog Title 436', 'sample-blog-436', 'This is the content of Sample Blog 436. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_436.jpg', 7498, '2024-04-05 14:27:22.645386', '2024-04-11 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '902ddf09-7879-40bd-96da-4898c10be26b', '2695ae5a-caf7-4810-b901-625cc6c712ca', 'Sample Blog Title 437', 'sample-blog-437', 'This is the content of Sample Blog 437. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_437.jpg', 2401, '2024-05-28 14:27:22.645386', '2024-06-01 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'ffb09231-ca8c-4747-ba36-975ae53dd194', '040e0ba8-42e8-49b0-b72c-00a29329c22c', 'Sample Blog Title 438', 'sample-blog-438', 'This is the content of Sample Blog 438. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_438.jpg', 1392, '2025-02-02 14:27:22.645386', '2025-02-10 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'cfb6569f-9faf-4645-973d-38dcde98eee9', '8cb61520-fd74-4e18-8c82-668c6d088264', 'Sample Blog Title 439', 'sample-blog-439', 'This is the content of Sample Blog 439. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_439.jpg', 7788, '2024-04-14 14:27:22.645386', '2024-04-20 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'fc32b9db-595e-40cc-966f-7c97fb87604e', '91829ca9-91b2-4586-92d4-3cbdfc515b07', 'Sample Blog Title 440', 'sample-blog-440', 'This is the content of Sample Blog 440. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_440.jpg', 3012, '2024-12-06 14:27:22.645386', '2024-12-10 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '51b25a70-3c94-47ba-83b8-20d4d10ee71f', '488cf604-21d2-416d-ad08-71a1a28540f0', 'Sample Blog Title 441', 'sample-blog-441', 'This is the content of Sample Blog 441. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_441.jpg', 1069, '2024-06-16 14:27:22.645386', '2024-06-18 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '547b9067-be53-4485-8425-9cc1b5bb61c7', 'a556f3dd-12bd-44c4-9a5a-49621b297736', 'Sample Blog Title 442', 'sample-blog-442', 'This is the content of Sample Blog 442. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_442.jpg', 1513, '2024-11-23 14:27:22.645386', '2024-12-01 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '21ce2d9e-54ce-41e0-9451-a5f66f35a915', '71812813-de60-483c-8faa-f640965b23f5', 'Sample Blog Title 443', 'sample-blog-443', 'This is the content of Sample Blog 443. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_443.jpg', 3425, '2024-09-05 14:27:22.645386', '2024-09-08 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '2f94a886-5e5b-4a36-a7cd-2c3ca77678b8', '39c05142-af35-40ae-a9bf-95e0c58a5ef5', 'Sample Blog Title 444', 'sample-blog-444', 'This is the content of Sample Blog 444. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_444.jpg', 412, '2025-01-06 14:27:22.645386', '2025-01-15 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '84f6676a-2b4d-40da-94b6-2d11054dc49e', 'b697998f-4712-46b5-8532-4f4c68e4927c', 'Sample Blog Title 445', 'sample-blog-445', 'This is the content of Sample Blog 445. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_445.jpg', 1630, '2024-03-01 14:27:22.645386', '2024-03-07 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '9abe67e7-b643-41a6-a3a0-d716229e0d75', '4ae05754-eef2-4aad-82df-794ab3c91930', 'Sample Blog Title 446', 'sample-blog-446', 'This is the content of Sample Blog 446. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_446.jpg', 9985, '2024-10-05 14:27:22.645386', '2024-10-06 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '49ea8657-b165-47da-a7cb-8dfccdb09d9c', '4b750317-7e0b-4986-beb9-1df4ed3ad6f2', 'Sample Blog Title 447', 'sample-blog-447', 'This is the content of Sample Blog 447. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_447.jpg', 5793, '2024-11-29 14:27:22.645386', '2024-11-30 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '1bf82d26-12fc-4b59-a35e-02a4b2b3462c', '5fa7e24b-fcee-48d8-b8b1-1114b9b2094d', 'Sample Blog Title 448', 'sample-blog-448', 'This is the content of Sample Blog 448. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_448.jpg', 8884, '2024-07-31 14:27:22.645386', '2024-08-06 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'dcf22966-2f80-4efa-a381-4816e90575fb', '699a0f8c-a70b-4e7c-95da-af2a1a874135', 'Sample Blog Title 449', 'sample-blog-449', 'This is the content of Sample Blog 449. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_449.jpg', 5953, '2024-08-27 14:27:22.645386', '2024-09-01 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'eddcf94b-9b88-4f46-a2cc-f50d83a32116', '91e6c97a-83d2-4550-b5d6-09c10568cc92', 'Sample Blog Title 450', 'sample-blog-450', 'This is the content of Sample Blog 450. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_450.jpg', 1439, '2024-11-18 14:27:22.645386', '2024-11-18 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '7c9867ac-6ff9-4ee0-b114-fe7222a05de4', 'f783d009-7713-400d-91ef-d0bd454a3201', 'Sample Blog Title 451', 'sample-blog-451', 'This is the content of Sample Blog 451. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_451.jpg', 1820, '2024-06-23 14:27:22.645386', '2024-06-23 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '2dbddadc-ac05-4e61-a003-ae32f3bf9565', '3f3b19f5-ccab-41f5-aea0-9bef9d1da2aa', 'Sample Blog Title 452', 'sample-blog-452', 'This is the content of Sample Blog 452. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_452.jpg', 6271, '2024-06-29 14:27:22.645386', '2024-07-08 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd0a4028c-eb89-476e-ad01-d84d456a543d', '5ca62b37-1b6e-4872-8fbd-e6163520ef13', 'Sample Blog Title 453', 'sample-blog-453', 'This is the content of Sample Blog 453. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_453.jpg', 4799, '2024-07-28 14:27:22.645386', '2024-08-06 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '64bf04ac-d2b0-4844-823e-b7860bbec4ba', 'c703c511-7208-4166-b68d-f71899018b12', 'Sample Blog Title 454', 'sample-blog-454', 'This is the content of Sample Blog 454. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_454.jpg', 1320, '2024-10-01 14:27:22.645386', '2024-10-01 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '216720db-93d9-40e2-abc6-eac3667a8d92', '7223bd3a-e482-4d14-bd9f-552f60622fee', 'Sample Blog Title 455', 'sample-blog-455', 'This is the content of Sample Blog 455. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_455.jpg', 1321, '2025-01-18 14:27:22.645386', '2025-01-21 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'bf0b8e86-4be1-402e-b654-775a08998cdd', '2695ae5a-caf7-4810-b901-625cc6c712ca', 'Sample Blog Title 456', 'sample-blog-456', 'This is the content of Sample Blog 456. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_456.jpg', 468, '2024-09-05 14:27:22.645386', '2024-09-08 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd13992db-bc2e-492b-9aef-4fafb5eb1d3e', '7223bd3a-e482-4d14-bd9f-552f60622fee', 'Sample Blog Title 457', 'sample-blog-457', 'This is the content of Sample Blog 457. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_457.jpg', 7181, '2024-03-27 14:27:22.645386', '2024-03-27 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'cecfc972-75a7-41b6-85d1-a0257ce6ea5b', '5ff32bbc-b5c1-411d-9687-caf3f505df2d', 'Sample Blog Title 458', 'sample-blog-458', 'This is the content of Sample Blog 458. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_458.jpg', 3052, '2024-07-31 14:27:22.645386', '2024-08-08 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '8f91b74e-7306-486e-9e61-5d329dfa5e24', 'f6cda0db-6d4b-4050-bfae-f360427e31ce', 'Sample Blog Title 459', 'sample-blog-459', 'This is the content of Sample Blog 459. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_459.jpg', 5439, '2024-04-30 14:27:22.645386', '2024-05-04 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '4aa60939-a719-4059-9508-44a4a03f89f3', '699a0f8c-a70b-4e7c-95da-af2a1a874135', 'Sample Blog Title 460', 'sample-blog-460', 'This is the content of Sample Blog 460. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_460.jpg', 6748, '2024-11-04 14:27:22.645386', '2024-11-12 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'ad410af8-8f98-4fc1-bbd8-8744ac836cae', 'd4ef8972-f69c-40c9-a7d3-bc0ef5868391', 'Sample Blog Title 461', 'sample-blog-461', 'This is the content of Sample Blog 461. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_461.jpg', 9290, '2024-08-26 14:27:22.645386', '2024-09-01 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '36a24417-5a0f-4ea6-8580-261df2583c73', '89139764-3150-4ea5-b980-61e8585f3a41', 'Sample Blog Title 462', 'sample-blog-462', 'This is the content of Sample Blog 462. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_462.jpg', 9192, '2024-09-22 14:27:22.645386', '2024-09-27 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '4c7cc0dc-dccb-4ff2-ab30-bc437904a2a7', 'de7f0e68-e4b5-4d9c-afe6-70a4ea3e0653', 'Sample Blog Title 463', 'sample-blog-463', 'This is the content of Sample Blog 463. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_463.jpg', 8846, '2024-04-12 14:27:22.645386', '2024-04-16 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '31fae816-7375-4b1b-9206-32bb475b3577', '0dc230c0-79ed-45ee-b9a0-e06ee7fe34c4', 'Sample Blog Title 464', 'sample-blog-464', 'This is the content of Sample Blog 464. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_464.jpg', 1073, '2024-12-12 14:27:22.645386', '2024-12-22 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'de1077b9-9222-48be-9b14-706cd859e427', '94d6b67f-87b1-42ee-a177-5e4788b3a5a3', 'Sample Blog Title 465', 'sample-blog-465', 'This is the content of Sample Blog 465. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_465.jpg', 7394, '2025-01-24 14:27:22.645386', '2025-01-26 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '086364ce-1a86-4e9e-8862-2051d993fc4c', 'f436ba40-ba79-40ae-90d9-1c7cd5cace8d', 'Sample Blog Title 466', 'sample-blog-466', 'This is the content of Sample Blog 466. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_466.jpg', 2848, '2024-06-26 14:27:22.645386', '2024-06-30 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '40032052-f175-49fb-b399-8545a895f1f4', 'f6cda0db-6d4b-4050-bfae-f360427e31ce', 'Sample Blog Title 467', 'sample-blog-467', 'This is the content of Sample Blog 467. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_467.jpg', 376, '2025-02-09 14:27:22.645386', '2025-02-13 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e8614812-506a-42a7-9df7-f38359d84f6e', '8c5a0a04-13ff-412e-9552-6cdcb035bbe9', 'Sample Blog Title 468', 'sample-blog-468', 'This is the content of Sample Blog 468. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_468.jpg', 1264, '2024-04-22 14:27:22.645386', '2024-04-22 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '4c02abb6-a53e-4f35-9e05-19ada2ed040a', '5fa7e24b-fcee-48d8-b8b1-1114b9b2094d', 'Sample Blog Title 469', 'sample-blog-469', 'This is the content of Sample Blog 469. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_469.jpg', 4197, '2024-12-12 14:27:22.645386', '2024-12-22 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '96334343-39e5-4c46-adec-0f58e294b5da', 'a556f3dd-12bd-44c4-9a5a-49621b297736', 'Sample Blog Title 470', 'sample-blog-470', 'This is the content of Sample Blog 470. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_470.jpg', 5506, '2024-03-09 14:27:22.645386', '2024-03-13 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '4db61f13-448f-4adf-9ba3-5f4dcd7cc218', 'bcacbd38-6630-44a4-a5de-66d359987f48', 'Sample Blog Title 471', 'sample-blog-471', 'This is the content of Sample Blog 471. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_471.jpg', 3882, '2024-09-13 14:27:22.645386', '2024-09-22 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '7c6b5433-9d50-4ff5-badf-6f23db542825', '5092b13d-a468-407a-a609-da88631cbdc7', 'Sample Blog Title 472', 'sample-blog-472', 'This is the content of Sample Blog 472. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_472.jpg', 2463, '2024-07-16 14:27:22.645386', '2024-07-16 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '76786027-c0e2-4565-9a74-a93f63e65c62', '94d6b67f-87b1-42ee-a177-5e4788b3a5a3', 'Sample Blog Title 473', 'sample-blog-473', 'This is the content of Sample Blog 473. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_473.jpg', 696, '2024-06-20 14:27:22.645386', '2024-06-29 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'c831813d-d280-4a82-a10c-b4a4863793c7', '488cf604-21d2-416d-ad08-71a1a28540f0', 'Sample Blog Title 474', 'sample-blog-474', 'This is the content of Sample Blog 474. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_474.jpg', 4968, '2024-10-04 14:27:22.645386', '2024-10-14 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '2334d72d-54ca-4ef4-a521-a682cb8c876a', '91829ca9-91b2-4586-92d4-3cbdfc515b07', 'Sample Blog Title 475', 'sample-blog-475', 'This is the content of Sample Blog 475. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_475.jpg', 1309, '2024-07-08 14:27:22.645386', '2024-07-14 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '84cdbfdf-7a69-43cf-bbc8-c697196cdc30', '13d2882b-17c5-47b9-bbe3-736984976985', 'Sample Blog Title 476', 'sample-blog-476', 'This is the content of Sample Blog 476. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_476.jpg', 9084, '2024-02-22 14:27:22.645386', '2024-03-01 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd525dfdd-5da7-436b-9378-6522ba532cae', '9c2fe57a-858b-4f54-83d1-16dbf396b752', 'Sample Blog Title 477', 'sample-blog-477', 'This is the content of Sample Blog 477. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_477.jpg', 7903, '2024-02-28 14:27:22.645386', '2024-03-09 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '550f077d-c957-4b22-8ba5-4c3537b78698', '10919c49-5177-4a73-a703-03835738f105', 'Sample Blog Title 478', 'sample-blog-478', 'This is the content of Sample Blog 478. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_478.jpg', 1613, '2024-09-14 14:27:22.645386', '2024-09-22 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '33d85bbd-b8c4-428f-b2f0-30ff40b58b93', '13d2882b-17c5-47b9-bbe3-736984976985', 'Sample Blog Title 479', 'sample-blog-479', 'This is the content of Sample Blog 479. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_479.jpg', 9692, '2024-09-03 14:27:22.645386', '2024-09-04 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd2bcc3fd-4f83-433d-8053-be5984220fff', '5ff32bbc-b5c1-411d-9687-caf3f505df2d', 'Sample Blog Title 480', 'sample-blog-480', 'This is the content of Sample Blog 480. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_480.jpg', 7639, '2024-08-05 14:27:22.645386', '2024-08-06 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '75e6c661-40d2-4a76-8726-0e43cc2d3315', '39c05142-af35-40ae-a9bf-95e0c58a5ef5', 'Sample Blog Title 481', 'sample-blog-481', 'This is the content of Sample Blog 481. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_481.jpg', 8475, '2024-07-05 14:27:22.645386', '2024-07-13 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '18b69152-f960-4931-9f1d-d99f9f6db1a5', '4d132b27-8363-4bb0-8618-360068914d24', 'Sample Blog Title 482', 'sample-blog-482', 'This is the content of Sample Blog 482. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_482.jpg', 9134, '2024-03-17 14:27:22.645386', '2024-03-18 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'ca9e2e25-e50c-4248-92b8-95caebf31479', '2038934d-d590-4e9f-bd2b-f46cc1acf46d', 'Sample Blog Title 483', 'sample-blog-483', 'This is the content of Sample Blog 483. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_483.jpg', 2720, '2024-10-15 14:27:22.645386', '2024-10-24 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '4a7866a9-0489-4e52-8794-e8366e640e58', 'c703c511-7208-4166-b68d-f71899018b12', 'Sample Blog Title 484', 'sample-blog-484', 'This is the content of Sample Blog 484. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_484.jpg', 2202, '2024-11-18 14:27:22.645386', '2024-11-22 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '2f258753-4560-47ae-bbca-b1d1c05f3e0c', '5ca62b37-1b6e-4872-8fbd-e6163520ef13', 'Sample Blog Title 485', 'sample-blog-485', 'This is the content of Sample Blog 485. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_485.jpg', 6976, '2024-09-29 14:27:22.645386', '2024-10-01 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '0e3a28ff-04d7-4adc-a99d-7dba9100abb2', 'de7f0e68-e4b5-4d9c-afe6-70a4ea3e0653', 'Sample Blog Title 486', 'sample-blog-486', 'This is the content of Sample Blog 486. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_486.jpg', 217, '2024-06-03 14:27:22.645386', '2024-06-12 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '51279d9f-ecba-45f0-a640-be5f539a87f8', '011d86ec-2fb8-473d-a0d1-7f8a42a611d3', 'Sample Blog Title 487', 'sample-blog-487', 'This is the content of Sample Blog 487. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_487.jpg', 6221, '2024-06-28 14:27:22.645386', '2024-07-08 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '8d2b9b12-b608-49ac-b27d-db33ecc45bf5', '4b750317-7e0b-4986-beb9-1df4ed3ad6f2', 'Sample Blog Title 488', 'sample-blog-488', 'This is the content of Sample Blog 488. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_488.jpg', 2401, '2024-12-02 14:27:22.645386', '2024-12-10 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '7b3c8c27-d9c9-456e-a9a7-9364afca468a', 'ce8329db-2b4a-48fd-94cc-767f8fba7c91', 'Sample Blog Title 489', 'sample-blog-489', 'This is the content of Sample Blog 489. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_489.jpg', 1974, '2024-03-14 14:27:22.645386', '2024-03-14 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '79eac21f-1411-4da9-99c8-4a8e79e8e050', '011d86ec-2fb8-473d-a0d1-7f8a42a611d3', 'Sample Blog Title 490', 'sample-blog-490', 'This is the content of Sample Blog 490. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_490.jpg', 2149, '2024-06-01 14:27:22.645386', '2024-06-01 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '21a97d3c-40d3-4381-b514-1181ca8250e0', 'bcacbd38-6630-44a4-a5de-66d359987f48', 'Sample Blog Title 491', 'sample-blog-491', 'This is the content of Sample Blog 491. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_491.jpg', 4308, '2024-08-10 14:27:22.645386', '2024-08-17 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'a653e49a-1303-44eb-b3b5-e757bd819f78', 'd07a734b-df00-4d1d-a15f-fbfe418fe807', 'Sample Blog Title 492', 'sample-blog-492', 'This is the content of Sample Blog 492. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_492.jpg', 9871, '2024-09-10 14:27:22.645386', '2024-09-19 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '1ad1b8e1-7694-4c80-a2c7-332dcc9f4d73', '5fa7e24b-fcee-48d8-b8b1-1114b9b2094d', 'Sample Blog Title 493', 'sample-blog-493', 'This is the content of Sample Blog 493. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_493.jpg', 1584, '2024-07-08 14:27:22.645386', '2024-07-11 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'bc168c15-f8a2-452d-ba63-ec9b4465e5ad', '4e99bfb6-a958-4f2f-a3b1-402cd84fdf5b', 'Sample Blog Title 494', 'sample-blog-494', 'This is the content of Sample Blog 494. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_494.jpg', 4536, '2025-02-15 14:27:22.645386', '2025-02-21 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '252f978e-da57-4870-96ca-a83114edc1e0', '17cc124f-b752-457d-8447-5cdfffd63a10', 'Sample Blog Title 495', 'sample-blog-495', 'This is the content of Sample Blog 495. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_495.jpg', 7260, '2024-03-22 14:27:22.645386', '2024-03-25 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'ad8d3e09-7928-4246-89d4-ac496eedd41e', '40d7a621-d8d1-4bcb-9ab2-be3b4fc2d3ab', 'Sample Blog Title 496', 'sample-blog-496', 'This is the content of Sample Blog 496. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_496.jpg', 108, '2024-06-04 14:27:22.645386', '2024-06-12 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '503ff96e-c53d-46af-907d-91c5904d0fbb', '488cf604-21d2-416d-ad08-71a1a28540f0', 'Sample Blog Title 497', 'sample-blog-497', 'This is the content of Sample Blog 497. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_497.jpg', 2826, '2024-12-01 14:27:22.645386', '2024-12-04 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e6563b23-3bc2-4067-9c2e-9d4b31c81bf3', 'f499de7d-995e-4017-928d-b40736f9ea79', 'Sample Blog Title 498', 'sample-blog-498', 'This is the content of Sample Blog 498. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_498.jpg', 3602, '2025-02-11 14:27:22.645386', '2025-02-13 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '1b85cdec-c72d-4c24-8e7f-dae8fd9e14e3', 'e8579452-e2ab-48f4-8681-50a69c865547', 'Sample Blog Title 499', 'sample-blog-499', 'This is the content of Sample Blog 499. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_499.jpg', 3718, '2024-03-01 14:27:22.645386', '2024-03-07 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '50530879-1ce3-4c06-a8fd-9201fbcb469b', '714a063a-fcf1-451c-b72a-1a2c27e91f33', 'Sample Blog Title 500', 'sample-blog-500', 'This is the content of Sample Blog 500. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_500.jpg', 2732, '2024-09-06 14:27:22.645386', '2024-09-08 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'fb43dd90-94fa-42a5-99f2-0c63d6dfe85d', '2695ae5a-caf7-4810-b901-625cc6c712ca', 'Sample Blog Title 501', 'sample-blog-501', 'This is the content of Sample Blog 501. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_501.jpg', 7649, '2024-12-22 14:27:22.645386', '2024-12-22 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '39f170c0-4fb6-4d07-a149-1b7110ed2416', '91829ca9-91b2-4586-92d4-3cbdfc515b07', 'Sample Blog Title 502', 'sample-blog-502', 'This is the content of Sample Blog 502. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_502.jpg', 5000, '2024-08-29 14:27:22.645386', '2024-08-31 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '210dbe37-384f-4a19-8ed2-3b57c6df2987', '4b750317-7e0b-4986-beb9-1df4ed3ad6f2', 'Sample Blog Title 503', 'sample-blog-503', 'This is the content of Sample Blog 503. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_503.jpg', 7423, '2025-01-25 14:27:22.645386', '2025-01-30 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '1d551c01-15b9-4ee1-b7e1-0b56cfd85ab6', '7223bd3a-e482-4d14-bd9f-552f60622fee', 'Sample Blog Title 504', 'sample-blog-504', 'This is the content of Sample Blog 504. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_504.jpg', 6634, '2024-06-16 14:27:22.645386', '2024-06-26 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '2f88eacf-b59c-4eb9-9522-78bd00837c9c', 'e8579452-e2ab-48f4-8681-50a69c865547', 'Sample Blog Title 505', 'sample-blog-505', 'This is the content of Sample Blog 505. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_505.jpg', 8626, '2024-06-20 14:27:22.645386', '2024-06-26 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '4890e07c-b353-41df-9991-8b6f67494af0', 'dff097d3-1d58-429f-9261-e0155b99c4e7', 'Sample Blog Title 506', 'sample-blog-506', 'This is the content of Sample Blog 506. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_506.jpg', 2025, '2024-10-01 14:27:22.645386', '2024-10-11 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'cb49f75b-3fc8-4764-aee3-6c9b17c415f0', 'b697998f-4712-46b5-8532-4f4c68e4927c', 'Sample Blog Title 507', 'sample-blog-507', 'This is the content of Sample Blog 507. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_507.jpg', 7190, '2024-06-10 14:27:22.645386', '2024-06-10 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'ab339c9f-b396-4540-b70d-5fce86aac3c3', '13d2882b-17c5-47b9-bbe3-736984976985', 'Sample Blog Title 508', 'sample-blog-508', 'This is the content of Sample Blog 508. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_508.jpg', 9339, '2024-04-15 14:27:22.645386', '2024-04-18 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'abaebf86-73f3-4a5c-a8a4-32e1a0d15964', '488cf604-21d2-416d-ad08-71a1a28540f0', 'Sample Blog Title 509', 'sample-blog-509', 'This is the content of Sample Blog 509. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_509.jpg', 9310, '2024-04-28 14:27:22.645386', '2024-04-29 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '2f0ccab2-ab2e-40b6-883b-5eb74e86420c', '0dc230c0-79ed-45ee-b9a0-e06ee7fe34c4', 'Sample Blog Title 510', 'sample-blog-510', 'This is the content of Sample Blog 510. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_510.jpg', 1223, '2024-03-11 14:27:22.645386', '2024-03-19 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '559967f4-a368-4a60-bfea-d78151c8c1d7', 'c98c32d8-a040-4f94-8e06-4d538f89e0dc', 'Sample Blog Title 511', 'sample-blog-511', 'This is the content of Sample Blog 511. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_511.jpg', 3177, '2024-03-19 14:27:22.645386', '2024-03-27 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '09bdf5ee-68f7-4a23-ac65-140b6bf0a1cf', '5fa7e24b-fcee-48d8-b8b1-1114b9b2094d', 'Sample Blog Title 512', 'sample-blog-512', 'This is the content of Sample Blog 512. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_512.jpg', 1442, '2024-02-26 14:27:22.645386', '2024-02-27 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'b5cf2c30-af51-447c-97e2-8376835313d8', 'c703c511-7208-4166-b68d-f71899018b12', 'Sample Blog Title 513', 'sample-blog-513', 'This is the content of Sample Blog 513. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_513.jpg', 910, '2024-08-17 14:27:22.645386', '2024-08-20 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '7e3f661a-61b3-4aa2-ab54-c1178173b8f0', 'c2791e81-4b59-4fc5-bb30-d92815d98716', 'Sample Blog Title 514', 'sample-blog-514', 'This is the content of Sample Blog 514. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_514.jpg', 1685, '2024-09-08 14:27:22.645386', '2024-09-18 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '5cca7031-f7ec-499f-9d3b-a951317562a4', '8cb61520-fd74-4e18-8c82-668c6d088264', 'Sample Blog Title 515', 'sample-blog-515', 'This is the content of Sample Blog 515. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_515.jpg', 3805, '2024-03-02 14:27:22.645386', '2024-03-07 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '98dca7bb-08b4-417c-b287-281557cae25c', '17cc124f-b752-457d-8447-5cdfffd63a10', 'Sample Blog Title 516', 'sample-blog-516', 'This is the content of Sample Blog 516. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_516.jpg', 2310, '2024-10-04 14:27:22.645386', '2024-10-05 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'a37475e4-62d5-47a7-ad13-c2ea8282dadf', 'bcacbd38-6630-44a4-a5de-66d359987f48', 'Sample Blog Title 517', 'sample-blog-517', 'This is the content of Sample Blog 517. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_517.jpg', 230, '2024-07-22 14:27:22.645386', '2024-07-28 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '660fc024-4a4b-43b7-8e1f-b6c907918964', '39c05142-af35-40ae-a9bf-95e0c58a5ef5', 'Sample Blog Title 518', 'sample-blog-518', 'This is the content of Sample Blog 518. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_518.jpg', 4743, '2024-07-14 14:27:22.645386', '2024-07-16 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '5b5a1554-a660-4575-8170-1072a57414f6', '7223bd3a-e482-4d14-bd9f-552f60622fee', 'Sample Blog Title 519', 'sample-blog-519', 'This is the content of Sample Blog 519. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_519.jpg', 4147, '2024-04-01 14:27:22.645386', '2024-04-08 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '487d0162-ab0d-4dfe-ad15-4502551ffad1', '103d8eb1-7e4b-4cb1-8daa-5cfa1e3d26ed', 'Sample Blog Title 520', 'sample-blog-520', 'This is the content of Sample Blog 520. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_520.jpg', 4091, '2024-09-05 14:27:22.645386', '2024-09-13 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '5a557d66-19c9-4b16-826f-9029bac3e113', '699a0f8c-a70b-4e7c-95da-af2a1a874135', 'Sample Blog Title 521', 'sample-blog-521', 'This is the content of Sample Blog 521. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_521.jpg', 7478, '2024-05-03 14:27:22.645386', '2024-05-09 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '8d40165f-7ad2-4889-ad62-f3221a6e865f', '011d86ec-2fb8-473d-a0d1-7f8a42a611d3', 'Sample Blog Title 522', 'sample-blog-522', 'This is the content of Sample Blog 522. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_522.jpg', 3577, '2024-05-29 14:27:22.645386', '2024-06-01 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'b6dc5271-d52c-439f-8aa9-c33e530171a1', '011d86ec-2fb8-473d-a0d1-7f8a42a611d3', 'Sample Blog Title 523', 'sample-blog-523', 'This is the content of Sample Blog 523. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_523.jpg', 5018, '2024-07-20 14:27:22.645386', '2024-07-30 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '47ee279f-27f0-4bfd-8a59-310507f67222', 'ce8329db-2b4a-48fd-94cc-767f8fba7c91', 'Sample Blog Title 524', 'sample-blog-524', 'This is the content of Sample Blog 524. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_524.jpg', 5795, '2024-10-21 14:27:22.645386', '2024-10-30 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '86d98ae0-1bc1-433c-a680-fb35dd7a3652', '8cb78e82-a9c9-4550-9861-a28a3b4c0342', 'Sample Blog Title 525', 'sample-blog-525', 'This is the content of Sample Blog 525. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_525.jpg', 2614, '2024-05-10 14:27:22.645386', '2024-05-15 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '0e966eff-d7cc-4ed6-a143-0b2b6839058c', '32fd4910-c648-4a50-b86b-9195d25d3461', 'Sample Blog Title 526', 'sample-blog-526', 'This is the content of Sample Blog 526. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_526.jpg', 3593, '2024-10-25 14:27:22.645386', '2024-10-25 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '2ab2c7c3-3407-4935-bf38-50fef4ed939f', 'e988e97f-169c-4a2e-ae7d-06d0928a1faa', 'Sample Blog Title 527', 'sample-blog-527', 'This is the content of Sample Blog 527. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_527.jpg', 1012, '2024-11-29 14:27:22.645386', '2024-12-05 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '20926fc3-a6c6-4a44-8c5c-62dcddd27170', '4d132b27-8363-4bb0-8618-360068914d24', 'Sample Blog Title 528', 'sample-blog-528', 'This is the content of Sample Blog 528. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_528.jpg', 9164, '2024-08-27 14:27:22.645386', '2024-08-30 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'de4318c5-5477-4340-9909-864f90d65689', '6129a2ee-fd8d-4a70-b172-0ccd6faf9871', 'Sample Blog Title 529', 'sample-blog-529', 'This is the content of Sample Blog 529. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_529.jpg', 7223, '2024-12-23 14:27:22.645386', '2024-12-24 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'df5ad846-acbe-4474-a049-948995809c95', 'de7f0e68-e4b5-4d9c-afe6-70a4ea3e0653', 'Sample Blog Title 530', 'sample-blog-530', 'This is the content of Sample Blog 530. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_530.jpg', 6242, '2024-03-03 14:27:22.645386', '2024-03-06 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'dfba8b20-7693-471b-9579-a9815db93ec3', '8b36ef5f-2f60-46bd-9ca0-dafe04daaefa', 'Sample Blog Title 531', 'sample-blog-531', 'This is the content of Sample Blog 531. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_531.jpg', 9399, '2025-01-27 14:27:22.645386', '2025-01-30 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '0e0dc314-702b-4d0b-8885-ad26ecd69dcd', '9d78a484-6190-4924-b52b-89a82f840a7f', 'Sample Blog Title 532', 'sample-blog-532', 'This is the content of Sample Blog 532. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_532.jpg', 2165, '2024-05-25 14:27:22.645386', '2024-05-28 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '9a9f2426-575d-437c-8aa4-0b4c637ea66b', '89139764-3150-4ea5-b980-61e8585f3a41', 'Sample Blog Title 533', 'sample-blog-533', 'This is the content of Sample Blog 533. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_533.jpg', 4470, '2024-12-24 14:27:22.645386', '2024-12-29 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd2bdbbdb-a730-434a-b6a0-2f5164455147', '699a0f8c-a70b-4e7c-95da-af2a1a874135', 'Sample Blog Title 534', 'sample-blog-534', 'This is the content of Sample Blog 534. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_534.jpg', 8431, '2024-06-21 14:27:22.645386', '2024-07-01 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '71806cff-e032-40cf-95f0-f2c5441c498a', '7f905030-8831-4f16-aeff-ddfae4c4e45b', 'Sample Blog Title 535', 'sample-blog-535', 'This is the content of Sample Blog 535. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_535.jpg', 7784, '2024-04-03 14:27:22.645386', '2024-04-06 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '9600f034-ef46-471f-8c75-f79ec1fba6b8', '92f84112-7d4d-448b-818e-b2b74f396858', 'Sample Blog Title 536', 'sample-blog-536', 'This is the content of Sample Blog 536. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_536.jpg', 407, '2024-04-12 14:27:22.645386', '2024-04-19 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '4dd44bc2-04b8-41f1-bdb0-a4c7e0b267be', '0dc230c0-79ed-45ee-b9a0-e06ee7fe34c4', 'Sample Blog Title 537', 'sample-blog-537', 'This is the content of Sample Blog 537. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_537.jpg', 7242, '2024-12-05 14:27:22.645386', '2024-12-08 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '8af73427-7e47-4732-ab92-61a29939aecb', 'c98c32d8-a040-4f94-8e06-4d538f89e0dc', 'Sample Blog Title 538', 'sample-blog-538', 'This is the content of Sample Blog 538. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_538.jpg', 5289, '2024-12-20 14:27:22.645386', '2024-12-21 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'dc75ef16-462f-418c-aaeb-0af2c8850a70', '00504c3d-f629-42f5-b87b-b9014ef5d973', 'Sample Blog Title 539', 'sample-blog-539', 'This is the content of Sample Blog 539. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_539.jpg', 2155, '2024-04-02 14:27:22.645386', '2024-04-03 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '3dd121a9-79f5-41cf-82d5-6dabf7b07980', 'e013d6b2-262b-4c70-976f-b082b6215570', 'Sample Blog Title 540', 'sample-blog-540', 'This is the content of Sample Blog 540. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_540.jpg', 2733, '2024-05-15 14:27:22.645386', '2024-05-16 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '1047c77d-5320-4289-84c7-30953908e08c', '1288136e-65ae-4cab-96ac-1dcf147f94e4', 'Sample Blog Title 541', 'sample-blog-541', 'This is the content of Sample Blog 541. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_541.jpg', 6088, '2024-09-07 14:27:22.645386', '2024-09-16 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '493704a2-247b-47f0-be1b-21c49863b5e2', 'dff097d3-1d58-429f-9261-e0155b99c4e7', 'Sample Blog Title 542', 'sample-blog-542', 'This is the content of Sample Blog 542. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_542.jpg', 9502, '2024-04-16 14:27:22.645386', '2024-04-25 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '5aff619a-26f5-45d7-b340-512da63f12db', '10919c49-5177-4a73-a703-03835738f105', 'Sample Blog Title 543', 'sample-blog-543', 'This is the content of Sample Blog 543. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_543.jpg', 4812, '2024-09-25 14:27:22.645386', '2024-10-02 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '369d7d2a-43af-4549-a4e5-3505a43fb289', 'c2791e81-4b59-4fc5-bb30-d92815d98716', 'Sample Blog Title 544', 'sample-blog-544', 'This is the content of Sample Blog 544. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_544.jpg', 5844, '2024-08-05 14:27:22.645386', '2024-08-05 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'c03b2204-893b-4ac1-a669-8dff5f052227', 'f783d009-7713-400d-91ef-d0bd454a3201', 'Sample Blog Title 545', 'sample-blog-545', 'This is the content of Sample Blog 545. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_545.jpg', 8940, '2024-06-30 14:27:22.645386', '2024-07-04 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'f9fb071e-4eac-4a58-9ea7-dc6254e752d9', '488cf604-21d2-416d-ad08-71a1a28540f0', 'Sample Blog Title 546', 'sample-blog-546', 'This is the content of Sample Blog 546. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_546.jpg', 9932, '2024-12-22 14:27:22.645386', '2024-12-29 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '0b2adf87-c44b-43a8-8a0f-d3d04f86032c', '4ae05754-eef2-4aad-82df-794ab3c91930', 'Sample Blog Title 547', 'sample-blog-547', 'This is the content of Sample Blog 547. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_547.jpg', 1210, '2024-10-26 14:27:22.645386', '2024-11-02 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '02ef7bed-a76d-42e9-b6ff-2f8fe37f23ad', '332ca334-80c2-49b3-b742-c7f12d99dfba', 'Sample Blog Title 548', 'sample-blog-548', 'This is the content of Sample Blog 548. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_548.jpg', 1601, '2024-08-03 14:27:22.645386', '2024-08-11 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '733b47b0-47aa-4b9f-b907-0dc95c72c07a', 'bf95245c-cf8f-46e7-8660-08e4e2e3d4a2', 'Sample Blog Title 549', 'sample-blog-549', 'This is the content of Sample Blog 549. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_549.jpg', 7389, '2024-12-15 14:27:22.645386', '2024-12-22 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '3fc5fbd9-e911-4688-bf99-04bd932b2217', '13d2882b-17c5-47b9-bbe3-736984976985', 'Sample Blog Title 550', 'sample-blog-550', 'This is the content of Sample Blog 550. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_550.jpg', 6932, '2024-03-29 14:27:22.645386', '2024-04-08 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e02848d5-f4be-4293-84c4-00389ecee898', 'f391768c-7823-4784-b04d-a38a27b88967', 'Sample Blog Title 551', 'sample-blog-551', 'This is the content of Sample Blog 551. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_551.jpg', 6268, '2024-02-22 14:27:22.645386', '2024-02-24 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '4de4e065-a487-4b00-a9a2-ae0614e2ffa6', 'e8579452-e2ab-48f4-8681-50a69c865547', 'Sample Blog Title 552', 'sample-blog-552', 'This is the content of Sample Blog 552. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_552.jpg', 4053, '2024-12-21 14:27:22.645386', '2024-12-24 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '8a21bc32-a53d-4637-8c94-4117354b9863', '8c5a0a04-13ff-412e-9552-6cdcb035bbe9', 'Sample Blog Title 553', 'sample-blog-553', 'This is the content of Sample Blog 553. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_553.jpg', 5156, '2024-06-08 14:27:22.645386', '2024-06-09 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd564d5ab-b788-4678-b566-31c8e74c3f5b', 'd6576192-4494-48ec-89bb-1a018450876d', 'Sample Blog Title 554', 'sample-blog-554', 'This is the content of Sample Blog 554. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_554.jpg', 9663, '2025-01-15 14:27:22.645386', '2025-01-25 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'ad51ce50-9618-4698-90a6-ff225cc5fff5', '0c755f0d-52fa-42f2-bd4d-187d7822e9c9', 'Sample Blog Title 555', 'sample-blog-555', 'This is the content of Sample Blog 555. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_555.jpg', 5616, '2024-09-28 14:27:22.645386', '2024-09-29 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd74c04d7-b13c-4247-b9e3-8976feb3d3fe', '606ebf50-ffcb-4315-a892-c9f2dafaed32', 'Sample Blog Title 556', 'sample-blog-556', 'This is the content of Sample Blog 556. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_556.jpg', 1284, '2024-07-21 14:27:22.645386', '2024-07-30 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '1b22bfa1-4b07-4227-830a-5a829bd9a7e1', '4d132b27-8363-4bb0-8618-360068914d24', 'Sample Blog Title 557', 'sample-blog-557', 'This is the content of Sample Blog 557. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_557.jpg', 507, '2024-10-29 14:27:22.645386', '2024-11-06 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e49f42aa-6ace-4465-a16d-2cb3a38894e8', '9c2fe57a-858b-4f54-83d1-16dbf396b752', 'Sample Blog Title 558', 'sample-blog-558', 'This is the content of Sample Blog 558. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_558.jpg', 6641, '2024-08-22 14:27:22.645386', '2024-08-23 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '626a6086-8685-4e4e-8d9f-f7d70e684b0e', 'bf95245c-cf8f-46e7-8660-08e4e2e3d4a2', 'Sample Blog Title 559', 'sample-blog-559', 'This is the content of Sample Blog 559. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_559.jpg', 9116, '2024-10-07 14:27:22.645386', '2024-10-12 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '98aa496c-2cf1-43a2-89db-4c04aa78909d', '5ca62b37-1b6e-4872-8fbd-e6163520ef13', 'Sample Blog Title 560', 'sample-blog-560', 'This is the content of Sample Blog 560. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_560.jpg', 8797, '2024-12-05 14:27:22.645386', '2024-12-09 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '78432538-c5fa-4885-bfb2-d21d66964f8e', '5ca62b37-1b6e-4872-8fbd-e6163520ef13', 'Sample Blog Title 561', 'sample-blog-561', 'This is the content of Sample Blog 561. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_561.jpg', 8589, '2024-07-03 14:27:22.645386', '2024-07-07 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'af70d240-5972-4baa-850b-7f03c15f7ebe', 'bf95245c-cf8f-46e7-8660-08e4e2e3d4a2', 'Sample Blog Title 562', 'sample-blog-562', 'This is the content of Sample Blog 562. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_562.jpg', 710, '2025-01-05 14:27:22.645386', '2025-01-06 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '008a822f-00b3-4a4d-9f24-99c14085c1d5', '699a0f8c-a70b-4e7c-95da-af2a1a874135', 'Sample Blog Title 563', 'sample-blog-563', 'This is the content of Sample Blog 563. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_563.jpg', 5856, '2024-10-14 14:27:22.645386', '2024-10-14 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'edc138cb-a842-4768-b3c0-13cdb1b3c14c', '966ccd39-4d29-4318-95be-96f719f8576f', 'Sample Blog Title 564', 'sample-blog-564', 'This is the content of Sample Blog 564. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_564.jpg', 239, '2024-09-02 14:27:22.645386', '2024-09-09 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '82808f1d-c9ec-40bc-9dcc-688821e3509f', 'b697998f-4712-46b5-8532-4f4c68e4927c', 'Sample Blog Title 565', 'sample-blog-565', 'This is the content of Sample Blog 565. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_565.jpg', 9823, '2024-08-02 14:27:22.645386', '2024-08-09 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '1c5e621d-5b27-4e65-997f-7523bd78886d', '572e96a6-e620-4318-88e7-dd75551e9878', 'Sample Blog Title 566', 'sample-blog-566', 'This is the content of Sample Blog 566. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_566.jpg', 7263, '2024-05-08 14:27:22.645386', '2024-05-18 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '09b07187-ca5e-4650-b29e-fafca00dc8ed', '5fa7e24b-fcee-48d8-b8b1-1114b9b2094d', 'Sample Blog Title 567', 'sample-blog-567', 'This is the content of Sample Blog 567. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_567.jpg', 9633, '2024-10-01 14:27:22.645386', '2024-10-04 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '5c069854-1f0f-40ba-b122-ed00bc3e06ec', '0c755f0d-52fa-42f2-bd4d-187d7822e9c9', 'Sample Blog Title 568', 'sample-blog-568', 'This is the content of Sample Blog 568. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_568.jpg', 9649, '2024-05-13 14:27:22.645386', '2024-05-21 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '17c7628e-9686-4102-810b-76cf30f56ca7', '0dc230c0-79ed-45ee-b9a0-e06ee7fe34c4', 'Sample Blog Title 569', 'sample-blog-569', 'This is the content of Sample Blog 569. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_569.jpg', 1476, '2024-11-30 14:27:22.645386', '2024-12-10 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '510653de-42ad-4b5a-9fc5-0fe354c13940', '71c040a1-4ffd-4e48-8ae9-d1579f39a9fa', 'Sample Blog Title 570', 'sample-blog-570', 'This is the content of Sample Blog 570. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_570.jpg', 506, '2024-06-03 14:27:22.645386', '2024-06-10 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'bad678a5-54a6-4183-b4ff-320a810c4fd3', 'f477d597-fae2-4230-b4d9-ece9fdafaa7d', 'Sample Blog Title 571', 'sample-blog-571', 'This is the content of Sample Blog 571. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_571.jpg', 2375, '2024-09-06 14:27:22.645386', '2024-09-16 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '7e1422bb-5618-41fc-9a6d-776fe75bd4cd', '17cc124f-b752-457d-8447-5cdfffd63a10', 'Sample Blog Title 572', 'sample-blog-572', 'This is the content of Sample Blog 572. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_572.jpg', 7824, '2024-09-09 14:27:22.645386', '2024-09-18 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'c7b09cc8-a106-4a71-8643-09eec386545c', '8cb61520-fd74-4e18-8c82-668c6d088264', 'Sample Blog Title 573', 'sample-blog-573', 'This is the content of Sample Blog 573. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_573.jpg', 8436, '2025-01-04 14:27:22.645386', '2025-01-10 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '67b786ad-7e32-4940-a3ad-c4450bb1a020', 'd6d495d6-719f-4d8a-9237-9a823d1728b3', 'Sample Blog Title 574', 'sample-blog-574', 'This is the content of Sample Blog 574. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_574.jpg', 9688, '2025-01-02 14:27:22.645386', '2025-01-11 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '8afe90d7-3d07-470e-9942-cdb0b49f4143', 'd07a734b-df00-4d1d-a15f-fbfe418fe807', 'Sample Blog Title 575', 'sample-blog-575', 'This is the content of Sample Blog 575. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_575.jpg', 740, '2024-09-04 14:27:22.645386', '2024-09-07 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '58d1f466-2e47-4b11-8d40-aa1711d0729c', 'f6cda0db-6d4b-4050-bfae-f360427e31ce', 'Sample Blog Title 576', 'sample-blog-576', 'This is the content of Sample Blog 576. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_576.jpg', 1221, '2024-03-09 14:27:22.645386', '2024-03-11 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd6ae11d0-42df-428e-b468-c917bc97f190', 'd0d198ab-54e5-4aeb-82df-582201a01e21', 'Sample Blog Title 577', 'sample-blog-577', 'This is the content of Sample Blog 577. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_577.jpg', 5423, '2024-03-16 14:27:22.645386', '2024-03-23 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '8af9d7ae-82b0-404d-9433-bd75e999aef8', '966ccd39-4d29-4318-95be-96f719f8576f', 'Sample Blog Title 578', 'sample-blog-578', 'This is the content of Sample Blog 578. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_578.jpg', 7606, '2024-12-29 14:27:22.645386', '2024-12-30 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'ac541ee5-9609-4ab9-9b7e-06130516b6bf', '3f9017fc-ddc0-4467-a609-672bef2ab6e1', 'Sample Blog Title 579', 'sample-blog-579', 'This is the content of Sample Blog 579. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_579.jpg', 24, '2024-09-24 14:27:22.645386', '2024-09-29 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'b7f36213-289b-46f0-ab2f-e5a2587e1ef1', '71812813-de60-483c-8faa-f640965b23f5', 'Sample Blog Title 580', 'sample-blog-580', 'This is the content of Sample Blog 580. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_580.jpg', 6195, '2024-06-23 14:27:22.645386', '2024-07-02 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '1774eb8d-3c99-43fa-b5c6-a261d5bcb356', '011d86ec-2fb8-473d-a0d1-7f8a42a611d3', 'Sample Blog Title 581', 'sample-blog-581', 'This is the content of Sample Blog 581. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_581.jpg', 5754, '2024-09-01 14:27:22.645386', '2024-09-07 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'aad84255-751d-425e-8445-4a97534bfc68', '8cb61520-fd74-4e18-8c82-668c6d088264', 'Sample Blog Title 582', 'sample-blog-582', 'This is the content of Sample Blog 582. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_582.jpg', 391, '2024-03-06 14:27:22.645386', '2024-03-10 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '04eb4b9f-5dc7-4d73-bf21-d3060acabd01', '2038934d-d590-4e9f-bd2b-f46cc1acf46d', 'Sample Blog Title 583', 'sample-blog-583', 'This is the content of Sample Blog 583. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_583.jpg', 1557, '2024-06-01 14:27:22.645386', '2024-06-08 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '4337b210-f234-4878-9a20-f057d3db8a8c', 'c98c32d8-a040-4f94-8e06-4d538f89e0dc', 'Sample Blog Title 584', 'sample-blog-584', 'This is the content of Sample Blog 584. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_584.jpg', 1110, '2024-11-27 14:27:22.645386', '2024-11-30 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'f69fcea6-6007-4c84-98d2-19353eed60b8', '8b8bc0e4-8066-4b44-850d-abf220c9b056', 'Sample Blog Title 585', 'sample-blog-585', 'This is the content of Sample Blog 585. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_585.jpg', 4142, '2024-10-16 14:27:22.645386', '2024-10-20 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '3d66a825-61e0-4566-b4f4-64b54c3e720a', '2e8bc313-676a-43bd-be66-01e8e88dcbb7', 'Sample Blog Title 586', 'sample-blog-586', 'This is the content of Sample Blog 586. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_586.jpg', 2136, '2025-01-01 14:27:22.645386', '2025-01-10 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'ab572778-cb9a-481c-b264-ad34be906905', '40d7a621-d8d1-4bcb-9ab2-be3b4fc2d3ab', 'Sample Blog Title 587', 'sample-blog-587', 'This is the content of Sample Blog 587. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_587.jpg', 8342, '2024-08-19 14:27:22.645386', '2024-08-25 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '6637cf8e-c408-435f-9f5f-47182db023ac', '92f84112-7d4d-448b-818e-b2b74f396858', 'Sample Blog Title 588', 'sample-blog-588', 'This is the content of Sample Blog 588. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_588.jpg', 2288, '2024-09-14 14:27:22.645386', '2024-09-15 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e1d22078-c7a4-4fed-8038-3fe13975a051', 'd4ef8972-f69c-40c9-a7d3-bc0ef5868391', 'Sample Blog Title 589', 'sample-blog-589', 'This is the content of Sample Blog 589. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_589.jpg', 7960, '2024-12-06 14:27:22.645386', '2024-12-16 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '260eb07d-8575-4494-a81d-77c2c33fb613', '5bbebc30-da22-4876-a2f4-04e55c37d11f', 'Sample Blog Title 590', 'sample-blog-590', 'This is the content of Sample Blog 590. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_590.jpg', 9868, '2025-01-11 14:27:22.645386', '2025-01-15 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd40d37e6-d693-4f8c-bcaf-1335702a8399', '6129a2ee-fd8d-4a70-b172-0ccd6faf9871', 'Sample Blog Title 591', 'sample-blog-591', 'This is the content of Sample Blog 591. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_591.jpg', 4915, '2024-03-27 14:27:22.645386', '2024-03-31 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'b3ae78ea-47f9-477f-990b-b1fdf1b943e4', 'd0d198ab-54e5-4aeb-82df-582201a01e21', 'Sample Blog Title 592', 'sample-blog-592', 'This is the content of Sample Blog 592. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_592.jpg', 6991, '2024-04-30 14:27:22.645386', '2024-05-04 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'a0f0e1ec-81e0-45f6-95ae-5dfbe8528897', 'd07a734b-df00-4d1d-a15f-fbfe418fe807', 'Sample Blog Title 593', 'sample-blog-593', 'This is the content of Sample Blog 593. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_593.jpg', 2891, '2025-01-15 14:27:22.645386', '2025-01-21 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '68668f86-a41a-4e2c-8628-ed8c20151fd5', '26f058a6-7f8a-4e82-aae5-10137c657f5e', 'Sample Blog Title 594', 'sample-blog-594', 'This is the content of Sample Blog 594. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_594.jpg', 6185, '2024-07-04 14:27:22.645386', '2024-07-09 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e3276e29-0550-48de-9f59-cbe2a26c29ab', '3f3b19f5-ccab-41f5-aea0-9bef9d1da2aa', 'Sample Blog Title 595', 'sample-blog-595', 'This is the content of Sample Blog 595. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_595.jpg', 1266, '2024-07-02 14:27:22.645386', '2024-07-11 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'aec2cc20-c8f7-404d-b57b-24b61c017a84', '91829ca9-91b2-4586-92d4-3cbdfc515b07', 'Sample Blog Title 596', 'sample-blog-596', 'This is the content of Sample Blog 596. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_596.jpg', 5708, '2024-06-03 14:27:22.645386', '2024-06-12 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'c5bf57b7-b146-44d7-8e2e-0e58517c904d', '7f905030-8831-4f16-aeff-ddfae4c4e45b', 'Sample Blog Title 597', 'sample-blog-597', 'This is the content of Sample Blog 597. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_597.jpg', 6635, '2024-02-27 14:27:22.645386', '2024-02-28 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '50bc9f3a-ad47-45c4-9bc1-e14ef4ee263d', '71c040a1-4ffd-4e48-8ae9-d1579f39a9fa', 'Sample Blog Title 598', 'sample-blog-598', 'This is the content of Sample Blog 598. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_598.jpg', 6469, '2024-09-12 14:27:22.645386', '2024-09-16 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e1dc49a1-ead2-4a14-813f-9fdf5257b5cd', '7f905030-8831-4f16-aeff-ddfae4c4e45b', 'Sample Blog Title 599', 'sample-blog-599', 'This is the content of Sample Blog 599. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_599.jpg', 4493, '2024-09-22 14:27:22.645386', '2024-09-25 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '0cdd41d5-2736-4891-b77c-28048da01703', '8ff4183f-8f6e-4ccb-9ab5-2ad2b0878ecb', 'Sample Blog Title 600', 'sample-blog-600', 'This is the content of Sample Blog 600. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_600.jpg', 8176, '2024-11-19 14:27:22.645386', '2024-11-21 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '1030eac5-bf07-46f6-8a33-ff432be98756', '10919c49-5177-4a73-a703-03835738f105', 'Sample Blog Title 601', 'sample-blog-601', 'This is the content of Sample Blog 601. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_601.jpg', 8050, '2024-11-16 14:27:22.645386', '2024-11-21 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '2305620c-f6cd-42c0-961b-93063606575a', '91829ca9-91b2-4586-92d4-3cbdfc515b07', 'Sample Blog Title 602', 'sample-blog-602', 'This is the content of Sample Blog 602. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_602.jpg', 609, '2024-02-22 14:27:22.645386', '2024-03-02 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '41301330-c9dc-4e05-854c-8cc667665bbd', 'c703c511-7208-4166-b68d-f71899018b12', 'Sample Blog Title 603', 'sample-blog-603', 'This is the content of Sample Blog 603. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_603.jpg', 6321, '2025-01-18 14:27:22.645386', '2025-01-22 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '76ea05c9-a02e-425e-95fd-bbde8b073a14', 'de7f0e68-e4b5-4d9c-afe6-70a4ea3e0653', 'Sample Blog Title 604', 'sample-blog-604', 'This is the content of Sample Blog 604. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_604.jpg', 582, '2024-07-26 14:27:22.645386', '2024-08-02 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'c6314769-6867-476d-bb5d-f85b80427e7e', '03481f97-cfe7-468e-b355-116bba4e8051', 'Sample Blog Title 605', 'sample-blog-605', 'This is the content of Sample Blog 605. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_605.jpg', 9573, '2024-03-20 14:27:22.645386', '2024-03-29 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'fb234b98-13d2-43ad-992d-40f5756f09e3', 'd4ef8972-f69c-40c9-a7d3-bc0ef5868391', 'Sample Blog Title 606', 'sample-blog-606', 'This is the content of Sample Blog 606. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_606.jpg', 6077, '2024-10-15 14:27:22.645386', '2024-10-25 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '6e6f9217-12d9-4de9-b6bf-2b96307f5dfb', '26f058a6-7f8a-4e82-aae5-10137c657f5e', 'Sample Blog Title 607', 'sample-blog-607', 'This is the content of Sample Blog 607. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_607.jpg', 1608, '2024-08-28 14:27:22.645386', '2024-09-05 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '4c97d9d8-f5aa-436e-a5ca-5f4b8b054791', '4ae05754-eef2-4aad-82df-794ab3c91930', 'Sample Blog Title 608', 'sample-blog-608', 'This is the content of Sample Blog 608. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_608.jpg', 1844, '2024-05-30 14:27:22.645386', '2024-06-06 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '1844bd7b-5a8f-44f1-a7c0-3665cdc22a70', 'ebe43708-3547-4832-91d0-26a62dd6564d', 'Sample Blog Title 609', 'sample-blog-609', 'This is the content of Sample Blog 609. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_609.jpg', 2362, '2024-11-04 14:27:22.645386', '2024-11-13 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '4a145a51-c2a5-4156-a948-7d0b130bb6fe', '8c5a0a04-13ff-412e-9552-6cdcb035bbe9', 'Sample Blog Title 610', 'sample-blog-610', 'This is the content of Sample Blog 610. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_610.jpg', 6129, '2024-11-06 14:27:22.645386', '2024-11-12 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd8072b7b-fd6b-4a77-b857-532a05630dea', '2e8bc313-676a-43bd-be66-01e8e88dcbb7', 'Sample Blog Title 611', 'sample-blog-611', 'This is the content of Sample Blog 611. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_611.jpg', 4931, '2024-09-16 14:27:22.645386', '2024-09-17 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '45c9ccd7-b8ed-4821-b768-75c1ec8fef8b', '2695ae5a-caf7-4810-b901-625cc6c712ca', 'Sample Blog Title 612', 'sample-blog-612', 'This is the content of Sample Blog 612. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_612.jpg', 1128, '2025-02-10 14:27:22.645386', '2025-02-16 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'cef0c858-088d-4afd-97cf-ae5e495d878d', 'f8b36547-801b-49d2-a8bc-5c4d7e766119', 'Sample Blog Title 613', 'sample-blog-613', 'This is the content of Sample Blog 613. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_613.jpg', 708, '2024-12-28 14:27:22.645386', '2024-12-30 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '1c684408-fafd-41ba-9455-864347cd2c2c', 'edda8670-c8d9-4fa9-acb0-9d7e69e1bca9', 'Sample Blog Title 614', 'sample-blog-614', 'This is the content of Sample Blog 614. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_614.jpg', 7106, '2024-11-02 14:27:22.645386', '2024-11-06 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '3ace44ad-014a-4a2a-90bc-9d43c416c9a1', '2e8bc313-676a-43bd-be66-01e8e88dcbb7', 'Sample Blog Title 615', 'sample-blog-615', 'This is the content of Sample Blog 615. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_615.jpg', 3361, '2024-12-30 14:27:22.645386', '2025-01-02 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '84ab984d-ab82-430d-8e5f-d999f5f622c8', 'e8579452-e2ab-48f4-8681-50a69c865547', 'Sample Blog Title 616', 'sample-blog-616', 'This is the content of Sample Blog 616. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_616.jpg', 5829, '2024-12-08 14:27:22.645386', '2024-12-14 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '2e7b8806-b9ca-419e-97bb-88b71fd01c58', 'd9588d50-5f13-4b66-a531-e4e290f9ac0f', 'Sample Blog Title 617', 'sample-blog-617', 'This is the content of Sample Blog 617. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_617.jpg', 3291, '2024-06-14 14:27:22.645386', '2024-06-19 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'f80ff5de-c48c-4148-a66f-b39945415877', '6e7a436a-a896-47bf-8160-e81a5107f3ed', 'Sample Blog Title 618', 'sample-blog-618', 'This is the content of Sample Blog 618. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_618.jpg', 6812, '2025-01-25 14:27:22.645386', '2025-01-30 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd23fbc8f-4142-47ba-873c-23309bc17650', '966ccd39-4d29-4318-95be-96f719f8576f', 'Sample Blog Title 619', 'sample-blog-619', 'This is the content of Sample Blog 619. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_619.jpg', 5744, '2024-06-30 14:27:22.645386', '2024-07-09 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '1a59b055-1d73-4de1-ae49-69b1d253c478', 'd6d495d6-719f-4d8a-9237-9a823d1728b3', 'Sample Blog Title 620', 'sample-blog-620', 'This is the content of Sample Blog 620. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_620.jpg', 6942, '2024-08-29 14:27:22.645386', '2024-08-31 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'af7bd004-f9ba-49b3-bec0-9e42f29f7e09', '2f2d6fcf-e873-4f1f-98ca-c55d51df6ef9', 'Sample Blog Title 621', 'sample-blog-621', 'This is the content of Sample Blog 621. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_621.jpg', 7908, '2024-12-01 14:27:22.645386', '2024-12-11 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '351e89b6-733c-43a9-ab0c-ad9ca328a416', '040e0ba8-42e8-49b0-b72c-00a29329c22c', 'Sample Blog Title 622', 'sample-blog-622', 'This is the content of Sample Blog 622. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_622.jpg', 5878, '2024-08-30 14:27:22.645386', '2024-09-03 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '138e2617-dbfd-49b4-9183-969df1f81252', 'fefcc24d-ad0c-4abd-8db3-f143d2aedc13', 'Sample Blog Title 623', 'sample-blog-623', 'This is the content of Sample Blog 623. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_623.jpg', 3939, '2025-01-03 14:27:22.645386', '2025-01-13 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '2d2d6aee-aa25-4057-a4a0-edd6fab1d379', '32fd4910-c648-4a50-b86b-9195d25d3461', 'Sample Blog Title 624', 'sample-blog-624', 'This is the content of Sample Blog 624. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_624.jpg', 5669, '2024-06-13 14:27:22.645386', '2024-06-23 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'da3ba21f-ebca-4387-8db8-8339421a2cff', '714a063a-fcf1-451c-b72a-1a2c27e91f33', 'Sample Blog Title 625', 'sample-blog-625', 'This is the content of Sample Blog 625. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_625.jpg', 1809, '2024-10-10 14:27:22.645386', '2024-10-18 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'c3fca508-ab6b-4c93-a98f-e4514292a56a', 'de7f0e68-e4b5-4d9c-afe6-70a4ea3e0653', 'Sample Blog Title 626', 'sample-blog-626', 'This is the content of Sample Blog 626. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_626.jpg', 4023, '2024-06-23 14:27:22.645386', '2024-07-02 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '7101c07c-417a-4230-ac3b-ef9d14df74d5', '103d8eb1-7e4b-4cb1-8daa-5cfa1e3d26ed', 'Sample Blog Title 627', 'sample-blog-627', 'This is the content of Sample Blog 627. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_627.jpg', 5168, '2024-07-20 14:27:22.645386', '2024-07-24 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '4125b3ce-7c4c-4583-bc0d-b6c98e8b0251', '2038934d-d590-4e9f-bd2b-f46cc1acf46d', 'Sample Blog Title 628', 'sample-blog-628', 'This is the content of Sample Blog 628. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_628.jpg', 2853, '2024-03-22 14:27:22.645386', '2024-03-26 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '30885706-e179-4ee4-95a9-84550667a56f', '714a063a-fcf1-451c-b72a-1a2c27e91f33', 'Sample Blog Title 629', 'sample-blog-629', 'This is the content of Sample Blog 629. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_629.jpg', 8832, '2024-04-22 14:27:22.645386', '2024-04-28 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '352d8f3e-5269-40dd-aeca-bc0ba4b83042', '17cc124f-b752-457d-8447-5cdfffd63a10', 'Sample Blog Title 630', 'sample-blog-630', 'This is the content of Sample Blog 630. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_630.jpg', 8854, '2024-11-04 14:27:22.645386', '2024-11-14 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '292a06a6-402e-458f-a29b-38baf56a413f', '94d6b67f-87b1-42ee-a177-5e4788b3a5a3', 'Sample Blog Title 631', 'sample-blog-631', 'This is the content of Sample Blog 631. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_631.jpg', 3294, '2024-10-21 14:27:22.645386', '2024-10-24 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '27c807b5-c309-4cd9-bab2-4392bad99366', 'dff097d3-1d58-429f-9261-e0155b99c4e7', 'Sample Blog Title 632', 'sample-blog-632', 'This is the content of Sample Blog 632. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_632.jpg', 301, '2025-01-16 14:27:22.645386', '2025-01-16 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'df92ab3a-4361-438c-b123-61d8a1bfaa7f', '8cb78e82-a9c9-4550-9861-a28a3b4c0342', 'Sample Blog Title 633', 'sample-blog-633', 'This is the content of Sample Blog 633. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_633.jpg', 8441, '2024-06-25 14:27:22.645386', '2024-06-25 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '1da6bb74-1169-4e8b-baa6-cf2d8aac38e3', 'dff097d3-1d58-429f-9261-e0155b99c4e7', 'Sample Blog Title 634', 'sample-blog-634', 'This is the content of Sample Blog 634. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_634.jpg', 8202, '2024-09-27 14:27:22.645386', '2024-10-05 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'a155e0d7-deec-4649-be56-859339f8a0b0', '39c05142-af35-40ae-a9bf-95e0c58a5ef5', 'Sample Blog Title 635', 'sample-blog-635', 'This is the content of Sample Blog 635. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_635.jpg', 795, '2024-04-07 14:27:22.645386', '2024-04-14 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd9395257-3cb2-454c-b8af-33df18c52fd7', '4ae05754-eef2-4aad-82df-794ab3c91930', 'Sample Blog Title 636', 'sample-blog-636', 'This is the content of Sample Blog 636. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_636.jpg', 6039, '2024-05-29 14:27:22.645386', '2024-06-04 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '0eaf958a-eda6-43eb-a4a6-139240c91871', '4d132b27-8363-4bb0-8618-360068914d24', 'Sample Blog Title 637', 'sample-blog-637', 'This is the content of Sample Blog 637. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_637.jpg', 9193, '2024-07-12 14:27:22.645386', '2024-07-16 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '61051d42-913c-4faa-b490-33ffd92a7c65', '011d86ec-2fb8-473d-a0d1-7f8a42a611d3', 'Sample Blog Title 638', 'sample-blog-638', 'This is the content of Sample Blog 638. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_638.jpg', 1533, '2024-09-04 14:27:22.645386', '2024-09-14 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e81833c1-380b-44f4-ad3b-178850e3d077', '58854fc5-18b1-4e2a-8605-4ccdd8950188', 'Sample Blog Title 639', 'sample-blog-639', 'This is the content of Sample Blog 639. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_639.jpg', 9122, '2024-04-27 14:27:22.645386', '2024-04-27 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '8df37b08-9390-4c77-a8e3-e7894cbda1e6', 'fefcc24d-ad0c-4abd-8db3-f143d2aedc13', 'Sample Blog Title 640', 'sample-blog-640', 'This is the content of Sample Blog 640. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_640.jpg', 968, '2024-09-30 14:27:22.645386', '2024-10-10 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '9ea0e6ee-bae2-422a-abb0-295ae15949e1', '10919c49-5177-4a73-a703-03835738f105', 'Sample Blog Title 641', 'sample-blog-641', 'This is the content of Sample Blog 641. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_641.jpg', 569, '2024-10-18 14:27:22.645386', '2024-10-18 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '5de7e136-aaba-438f-8661-37304a0b9e17', '4d132b27-8363-4bb0-8618-360068914d24', 'Sample Blog Title 642', 'sample-blog-642', 'This is the content of Sample Blog 642. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_642.jpg', 4080, '2024-07-08 14:27:22.645386', '2024-07-09 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '5c725d40-836c-4a42-bb2c-15897d709deb', '2e8bc313-676a-43bd-be66-01e8e88dcbb7', 'Sample Blog Title 643', 'sample-blog-643', 'This is the content of Sample Blog 643. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_643.jpg', 1955, '2025-01-23 14:27:22.645386', '2025-01-28 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '88a3a2c0-94fc-4323-a8e0-a34ef3b92fae', 'edda8670-c8d9-4fa9-acb0-9d7e69e1bca9', 'Sample Blog Title 644', 'sample-blog-644', 'This is the content of Sample Blog 644. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_644.jpg', 6328, '2024-09-29 14:27:22.645386', '2024-10-08 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '42e779b7-f5ea-4b43-a343-c36dfe1de6d1', '92f84112-7d4d-448b-818e-b2b74f396858', 'Sample Blog Title 645', 'sample-blog-645', 'This is the content of Sample Blog 645. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_645.jpg', 3484, '2024-11-09 14:27:22.645386', '2024-11-12 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '3e5d6340-a139-4746-9d7b-f718829c28c5', '4d132b27-8363-4bb0-8618-360068914d24', 'Sample Blog Title 646', 'sample-blog-646', 'This is the content of Sample Blog 646. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_646.jpg', 8122, '2024-04-11 14:27:22.645386', '2024-04-11 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '9c20a07e-16b1-48b3-aff0-cc02179b13ff', '4e99bfb6-a958-4f2f-a3b1-402cd84fdf5b', 'Sample Blog Title 647', 'sample-blog-647', 'This is the content of Sample Blog 647. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_647.jpg', 3593, '2024-08-10 14:27:22.645386', '2024-08-19 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '430963b6-210b-4ed2-b3ff-ef500820af78', 'edda8670-c8d9-4fa9-acb0-9d7e69e1bca9', 'Sample Blog Title 648', 'sample-blog-648', 'This is the content of Sample Blog 648. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_648.jpg', 901, '2024-11-03 14:27:22.645386', '2024-11-10 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '90bb43b0-0269-4863-8f63-2a37df7e74d2', '6e7a436a-a896-47bf-8160-e81a5107f3ed', 'Sample Blog Title 649', 'sample-blog-649', 'This is the content of Sample Blog 649. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_649.jpg', 8054, '2024-12-20 14:27:22.645386', '2024-12-27 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '4d086f84-e270-4de4-863e-36c48239d798', '26f058a6-7f8a-4e82-aae5-10137c657f5e', 'Sample Blog Title 650', 'sample-blog-650', 'This is the content of Sample Blog 650. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_650.jpg', 4505, '2024-04-14 14:27:22.645386', '2024-04-17 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'bf59aea4-9f7d-4636-9629-0096be4639ca', '6129a2ee-fd8d-4a70-b172-0ccd6faf9871', 'Sample Blog Title 651', 'sample-blog-651', 'This is the content of Sample Blog 651. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_651.jpg', 4512, '2024-10-15 14:27:22.645386', '2024-10-20 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e1865c77-7b75-445d-8c43-bc00c3c02ee9', 'd9588d50-5f13-4b66-a531-e4e290f9ac0f', 'Sample Blog Title 652', 'sample-blog-652', 'This is the content of Sample Blog 652. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_652.jpg', 4277, '2024-05-27 14:27:22.645386', '2024-06-01 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '9000cd55-f33d-4f37-92b2-ac9f9f7146eb', '8cb78e82-a9c9-4550-9861-a28a3b4c0342', 'Sample Blog Title 653', 'sample-blog-653', 'This is the content of Sample Blog 653. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_653.jpg', 6127, '2024-11-13 14:27:22.645386', '2024-11-15 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'ecc1810e-d5af-4973-96b7-59e1e1e64a3b', 'ce8329db-2b4a-48fd-94cc-767f8fba7c91', 'Sample Blog Title 654', 'sample-blog-654', 'This is the content of Sample Blog 654. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_654.jpg', 6516, '2024-10-02 14:27:22.645386', '2024-10-10 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'a356fd22-5579-4628-ba02-9f523a6fc335', '32fd4910-c648-4a50-b86b-9195d25d3461', 'Sample Blog Title 655', 'sample-blog-655', 'This is the content of Sample Blog 655. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_655.jpg', 4782, '2024-07-22 14:27:22.645386', '2024-07-23 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'bc471786-4df0-4c6d-b0d7-1c0d19bb9fce', '6129a2ee-fd8d-4a70-b172-0ccd6faf9871', 'Sample Blog Title 656', 'sample-blog-656', 'This is the content of Sample Blog 656. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_656.jpg', 1240, '2024-10-07 14:27:22.645386', '2024-10-15 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '1ad15a9e-bb25-44c4-9d11-f6786ac6000b', '6e7a436a-a896-47bf-8160-e81a5107f3ed', 'Sample Blog Title 657', 'sample-blog-657', 'This is the content of Sample Blog 657. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_657.jpg', 8349, '2024-05-20 14:27:22.645386', '2024-05-25 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '2076a9dc-8dd7-4458-be68-1bd27f241538', 'fefcc24d-ad0c-4abd-8db3-f143d2aedc13', 'Sample Blog Title 658', 'sample-blog-658', 'This is the content of Sample Blog 658. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_658.jpg', 3558, '2024-05-15 14:27:22.645386', '2024-05-17 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'aac058bd-74ae-4659-8fb1-bac9281524bf', 'd07a734b-df00-4d1d-a15f-fbfe418fe807', 'Sample Blog Title 659', 'sample-blog-659', 'This is the content of Sample Blog 659. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_659.jpg', 7347, '2024-11-12 14:27:22.645386', '2024-11-12 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '151a225e-57b4-414f-9f68-31acaf27407f', '71c040a1-4ffd-4e48-8ae9-d1579f39a9fa', 'Sample Blog Title 660', 'sample-blog-660', 'This is the content of Sample Blog 660. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_660.jpg', 5205, '2024-08-11 14:27:22.645386', '2024-08-14 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '004e5d9e-91df-4fd6-be28-bc3640c56e61', 'fefcc24d-ad0c-4abd-8db3-f143d2aedc13', 'Sample Blog Title 661', 'sample-blog-661', 'This is the content of Sample Blog 661. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_661.jpg', 5183, '2024-09-07 14:27:22.645386', '2024-09-15 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '6f205bf6-34d0-4e3b-ab4b-72d621920cdf', 'a1b824e7-ffa2-4deb-a3fa-0aed799703ab', 'Sample Blog Title 662', 'sample-blog-662', 'This is the content of Sample Blog 662. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_662.jpg', 4167, '2025-02-11 14:27:22.645386', '2025-02-20 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '9d5502f1-ba5d-4d9c-a7c9-2260c63de205', '53b658e1-f8fd-4133-99c8-02f2e2ce422d', 'Sample Blog Title 663', 'sample-blog-663', 'This is the content of Sample Blog 663. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_663.jpg', 1649, '2024-08-24 14:27:22.645386', '2024-08-31 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '9ca6ecbe-da70-4d7c-96d9-d914433635f4', '0dc230c0-79ed-45ee-b9a0-e06ee7fe34c4', 'Sample Blog Title 664', 'sample-blog-664', 'This is the content of Sample Blog 664. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_664.jpg', 522, '2024-10-02 14:27:22.645386', '2024-10-10 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'c596b298-5412-4df8-8efd-6e75e7a58b0e', '3f9017fc-ddc0-4467-a609-672bef2ab6e1', 'Sample Blog Title 665', 'sample-blog-665', 'This is the content of Sample Blog 665. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_665.jpg', 8269, '2025-01-28 14:27:22.645386', '2025-01-31 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'ecca50e1-1e5d-4470-be3b-a25e0c977f1d', '5bbebc30-da22-4876-a2f4-04e55c37d11f', 'Sample Blog Title 666', 'sample-blog-666', 'This is the content of Sample Blog 666. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_666.jpg', 3881, '2024-10-31 14:27:22.645386', '2024-11-02 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '51d55366-67f0-4caa-8cb1-510f0f8ecd3a', '4b750317-7e0b-4986-beb9-1df4ed3ad6f2', 'Sample Blog Title 667', 'sample-blog-667', 'This is the content of Sample Blog 667. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_667.jpg', 8278, '2024-04-08 14:27:22.645386', '2024-04-10 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '0b5b3891-3388-452e-bea6-be23c91302c9', 'd9588d50-5f13-4b66-a531-e4e290f9ac0f', 'Sample Blog Title 668', 'sample-blog-668', 'This is the content of Sample Blog 668. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_668.jpg', 7711, '2024-07-31 14:27:22.645386', '2024-08-04 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '6ff4eb86-b162-407e-97d1-7494ad6d5444', '8cb78e82-a9c9-4550-9861-a28a3b4c0342', 'Sample Blog Title 669', 'sample-blog-669', 'This is the content of Sample Blog 669. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_669.jpg', 9243, '2024-04-19 14:27:22.645386', '2024-04-25 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '5e1e3f85-1dc7-4cd5-bb99-d46798faa760', '572e96a6-e620-4318-88e7-dd75551e9878', 'Sample Blog Title 670', 'sample-blog-670', 'This is the content of Sample Blog 670. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_670.jpg', 6180, '2024-04-01 14:27:22.645386', '2024-04-03 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '89a6ae58-8186-40a0-987a-5f6add43e99d', '488cf604-21d2-416d-ad08-71a1a28540f0', 'Sample Blog Title 671', 'sample-blog-671', 'This is the content of Sample Blog 671. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_671.jpg', 3427, '2024-08-28 14:27:22.645386', '2024-08-30 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '24af9d8b-b454-483e-a69b-f3c9b8b8bb66', '2038934d-d590-4e9f-bd2b-f46cc1acf46d', 'Sample Blog Title 672', 'sample-blog-672', 'This is the content of Sample Blog 672. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_672.jpg', 8408, '2024-04-02 14:27:22.645386', '2024-04-02 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '83a9f06f-9621-4c5e-8e4e-0e54988c18e3', '8cb78e82-a9c9-4550-9861-a28a3b4c0342', 'Sample Blog Title 673', 'sample-blog-673', 'This is the content of Sample Blog 673. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_673.jpg', 1442, '2024-12-11 14:27:22.645386', '2024-12-21 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'ba1e7d25-c701-4801-b6ee-8adb851fabf3', '91829ca9-91b2-4586-92d4-3cbdfc515b07', 'Sample Blog Title 674', 'sample-blog-674', 'This is the content of Sample Blog 674. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_674.jpg', 5740, '2024-11-06 14:27:22.645386', '2024-11-13 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '174a8213-1438-4e88-b628-08e436c89bf6', '53b658e1-f8fd-4133-99c8-02f2e2ce422d', 'Sample Blog Title 675', 'sample-blog-675', 'This is the content of Sample Blog 675. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_675.jpg', 257, '2024-09-11 14:27:22.645386', '2024-09-18 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '04438eff-765a-47cc-8763-1155ac69e9c5', '94d6b67f-87b1-42ee-a177-5e4788b3a5a3', 'Sample Blog Title 676', 'sample-blog-676', 'This is the content of Sample Blog 676. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_676.jpg', 2033, '2024-10-04 14:27:22.645386', '2024-10-10 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '9a26738c-dbe8-425e-b8fb-09d48bc7ed6d', '332ca334-80c2-49b3-b742-c7f12d99dfba', 'Sample Blog Title 677', 'sample-blog-677', 'This is the content of Sample Blog 677. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_677.jpg', 9257, '2024-03-11 14:27:22.645386', '2024-03-11 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'bff30c8a-db8d-44a4-99ed-c5788ba1e2b3', '4b750317-7e0b-4986-beb9-1df4ed3ad6f2', 'Sample Blog Title 678', 'sample-blog-678', 'This is the content of Sample Blog 678. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_678.jpg', 7991, '2024-08-11 14:27:22.645386', '2024-08-12 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'c4333bd8-5d22-4030-9bfd-86499969f47a', '2f2d6fcf-e873-4f1f-98ca-c55d51df6ef9', 'Sample Blog Title 679', 'sample-blog-679', 'This is the content of Sample Blog 679. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_679.jpg', 1176, '2024-11-06 14:27:22.645386', '2024-11-10 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'fb697030-fe64-44f0-8ad0-13ba239f1a54', 'd4ef8972-f69c-40c9-a7d3-bc0ef5868391', 'Sample Blog Title 680', 'sample-blog-680', 'This is the content of Sample Blog 680. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_680.jpg', 3214, '2024-12-05 14:27:22.645386', '2024-12-06 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '4e1301ae-a570-40af-a33f-25e1cb1cfb72', '7223bd3a-e482-4d14-bd9f-552f60622fee', 'Sample Blog Title 681', 'sample-blog-681', 'This is the content of Sample Blog 681. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_681.jpg', 5808, '2024-12-29 14:27:22.645386', '2025-01-07 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'adfce531-3fbc-4661-a907-0ad64eb61abc', 'c98c32d8-a040-4f94-8e06-4d538f89e0dc', 'Sample Blog Title 682', 'sample-blog-682', 'This is the content of Sample Blog 682. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_682.jpg', 762, '2024-12-22 14:27:22.645386', '2024-12-30 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '062747a4-3632-48f6-a6e6-1100409aec78', '5bbebc30-da22-4876-a2f4-04e55c37d11f', 'Sample Blog Title 683', 'sample-blog-683', 'This is the content of Sample Blog 683. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_683.jpg', 629, '2024-06-04 14:27:22.645386', '2024-06-05 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '30c7db2b-1a83-4bc9-94a3-8796cfaa708b', '5fa7e24b-fcee-48d8-b8b1-1114b9b2094d', 'Sample Blog Title 684', 'sample-blog-684', 'This is the content of Sample Blog 684. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_684.jpg', 1098, '2024-12-21 14:27:22.645386', '2024-12-31 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '3350467f-2b37-4910-a749-2ffbbd9b3b57', '4b750317-7e0b-4986-beb9-1df4ed3ad6f2', 'Sample Blog Title 685', 'sample-blog-685', 'This is the content of Sample Blog 685. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_685.jpg', 7180, '2024-10-28 14:27:22.645386', '2024-11-01 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'ba8415ad-7fb1-4f42-8ebe-364b3fe27505', '332ca334-80c2-49b3-b742-c7f12d99dfba', 'Sample Blog Title 686', 'sample-blog-686', 'This is the content of Sample Blog 686. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_686.jpg', 5705, '2024-12-16 14:27:22.645386', '2024-12-20 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '0f83a42f-d7fa-4e35-945b-d611cae4bbb3', '3f9017fc-ddc0-4467-a609-672bef2ab6e1', 'Sample Blog Title 687', 'sample-blog-687', 'This is the content of Sample Blog 687. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_687.jpg', 1415, '2024-12-05 14:27:22.645386', '2024-12-13 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '6e51118a-ccca-492c-b0b3-cb75ab6c8e13', '103d8eb1-7e4b-4cb1-8daa-5cfa1e3d26ed', 'Sample Blog Title 688', 'sample-blog-688', 'This is the content of Sample Blog 688. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_688.jpg', 5156, '2024-05-29 14:27:22.645386', '2024-05-30 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '2a34f548-6d47-44b8-9beb-9733cf0ed004', 'b63b3614-0210-41af-a843-9775c3c06121', 'Sample Blog Title 689', 'sample-blog-689', 'This is the content of Sample Blog 689. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_689.jpg', 6371, '2024-11-29 14:27:22.645386', '2024-12-07 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'f9377da9-4828-4593-ba97-5b920cc74827', '32fd4910-c648-4a50-b86b-9195d25d3461', 'Sample Blog Title 690', 'sample-blog-690', 'This is the content of Sample Blog 690. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_690.jpg', 3331, '2024-08-07 14:27:22.645386', '2024-08-11 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'f946edca-358b-4f7a-a669-ffeee713e7aa', '4ae05754-eef2-4aad-82df-794ab3c91930', 'Sample Blog Title 691', 'sample-blog-691', 'This is the content of Sample Blog 691. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_691.jpg', 4163, '2024-06-25 14:27:22.645386', '2024-06-29 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '2a6c0773-8b9e-4116-b35b-d4952894690f', '71812813-de60-483c-8faa-f640965b23f5', 'Sample Blog Title 692', 'sample-blog-692', 'This is the content of Sample Blog 692. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_692.jpg', 5140, '2024-08-04 14:27:22.645386', '2024-08-05 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'f8aa982e-4a32-415e-81d6-ee1be95b8e6c', '39c05142-af35-40ae-a9bf-95e0c58a5ef5', 'Sample Blog Title 693', 'sample-blog-693', 'This is the content of Sample Blog 693. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_693.jpg', 6474, '2024-09-05 14:27:22.645386', '2024-09-09 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'fc50b87a-9915-4340-9df3-3c356e2a0e5f', '6129a2ee-fd8d-4a70-b172-0ccd6faf9871', 'Sample Blog Title 694', 'sample-blog-694', 'This is the content of Sample Blog 694. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_694.jpg', 1369, '2024-02-21 14:27:22.645386', '2024-02-25 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '3396707a-fbfd-45a7-bb01-fbd127bacb91', 'b9208830-774a-4676-852a-9019cf3e5c63', 'Sample Blog Title 695', 'sample-blog-695', 'This is the content of Sample Blog 695. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_695.jpg', 3767, '2024-04-20 14:27:22.645386', '2024-04-26 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'cdad413e-acc1-49fd-bdce-948beac6e310', '8b36ef5f-2f60-46bd-9ca0-dafe04daaefa', 'Sample Blog Title 696', 'sample-blog-696', 'This is the content of Sample Blog 696. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_696.jpg', 2695, '2024-05-06 14:27:22.645386', '2024-05-13 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '90ba87f0-98a6-4f67-a6da-4877ac7e0837', '4e99bfb6-a958-4f2f-a3b1-402cd84fdf5b', 'Sample Blog Title 697', 'sample-blog-697', 'This is the content of Sample Blog 697. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_697.jpg', 6721, '2024-09-29 14:27:22.645386', '2024-10-08 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd91f796c-ea23-4f0a-9fe5-a37d9922e731', '8c5a0a04-13ff-412e-9552-6cdcb035bbe9', 'Sample Blog Title 698', 'sample-blog-698', 'This is the content of Sample Blog 698. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_698.jpg', 5971, '2024-12-01 14:27:22.645386', '2024-12-07 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd257d029-ea00-491c-9c66-1a49d4b8e6e2', '966ccd39-4d29-4318-95be-96f719f8576f', 'Sample Blog Title 699', 'sample-blog-699', 'This is the content of Sample Blog 699. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_699.jpg', 2681, '2024-12-22 14:27:22.645386', '2025-01-01 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '065f818c-3e66-4b5a-9f1a-7559a6a4ea19', '1288136e-65ae-4cab-96ac-1dcf147f94e4', 'Sample Blog Title 700', 'sample-blog-700', 'This is the content of Sample Blog 700. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_700.jpg', 2919, '2024-04-21 14:27:22.645386', '2024-04-23 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '83e53f5d-18cd-454a-8e27-878768eda494', 'de7f0e68-e4b5-4d9c-afe6-70a4ea3e0653', 'Sample Blog Title 701', 'sample-blog-701', 'This is the content of Sample Blog 701. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_701.jpg', 4477, '2024-12-29 14:27:22.645386', '2025-01-08 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '1324cb07-4c85-4df3-8bcd-8fc22291270e', '724fc156-9e5e-43ee-a0fb-2f080fab3721', 'Sample Blog Title 702', 'sample-blog-702', 'This is the content of Sample Blog 702. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_702.jpg', 9184, '2024-08-01 14:27:22.645386', '2024-08-11 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '40b99502-efe7-4125-bac7-2b81af458f98', '5bbebc30-da22-4876-a2f4-04e55c37d11f', 'Sample Blog Title 703', 'sample-blog-703', 'This is the content of Sample Blog 703. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_703.jpg', 3860, '2025-02-04 14:27:22.645386', '2025-02-13 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '371d0245-f0e9-41c6-b110-3ec253be9eed', '89139764-3150-4ea5-b980-61e8585f3a41', 'Sample Blog Title 704', 'sample-blog-704', 'This is the content of Sample Blog 704. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_704.jpg', 9826, '2025-01-21 14:27:22.645386', '2025-01-26 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'faf31ab8-8231-4bb0-8642-d88dbea8bdfc', '58854fc5-18b1-4e2a-8605-4ccdd8950188', 'Sample Blog Title 705', 'sample-blog-705', 'This is the content of Sample Blog 705. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_705.jpg', 8367, '2024-11-11 14:27:22.645386', '2024-11-20 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'b6b642d7-ef5f-400d-b174-03633348b25c', '91829ca9-91b2-4586-92d4-3cbdfc515b07', 'Sample Blog Title 706', 'sample-blog-706', 'This is the content of Sample Blog 706. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_706.jpg', 9287, '2025-01-26 14:27:22.645386', '2025-01-27 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'df934b4b-0ddf-4fa8-80d7-bd3c5fd0e5f3', '606ebf50-ffcb-4315-a892-c9f2dafaed32', 'Sample Blog Title 707', 'sample-blog-707', 'This is the content of Sample Blog 707. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_707.jpg', 6342, '2024-05-07 14:27:22.645386', '2024-05-16 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '5f9c3ed5-0b16-4d65-b028-d474a7126df3', '714a063a-fcf1-451c-b72a-1a2c27e91f33', 'Sample Blog Title 708', 'sample-blog-708', 'This is the content of Sample Blog 708. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_708.jpg', 9446, '2024-05-16 14:27:22.645386', '2024-05-23 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '7e0d1aa9-a69f-4a65-9f7f-53032444a959', '5bbebc30-da22-4876-a2f4-04e55c37d11f', 'Sample Blog Title 709', 'sample-blog-709', 'This is the content of Sample Blog 709. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_709.jpg', 5146, '2024-03-09 14:27:22.645386', '2024-03-14 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e4d1913b-34bd-4478-84da-4239ef75843d', 'd6a6524f-a0b3-4e39-b3b4-faae23adaf29', 'Sample Blog Title 710', 'sample-blog-710', 'This is the content of Sample Blog 710. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_710.jpg', 648, '2025-01-15 14:27:22.645386', '2025-01-24 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'fc51b913-591c-4bd6-9831-10b53d98fec1', '412d4aec-7bd0-4e29-a237-392d09029ed4', 'Sample Blog Title 711', 'sample-blog-711', 'This is the content of Sample Blog 711. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_711.jpg', 1946, '2024-07-31 14:27:22.645386', '2024-07-31 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'dd4cb617-589f-4fb2-8274-32dbba155621', 'ebe43708-3547-4832-91d0-26a62dd6564d', 'Sample Blog Title 712', 'sample-blog-712', 'This is the content of Sample Blog 712. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_712.jpg', 412, '2024-07-15 14:27:22.645386', '2024-07-19 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '7775009d-9e37-4746-aca3-3934d4d2f6e7', 'a1b824e7-ffa2-4deb-a3fa-0aed799703ab', 'Sample Blog Title 713', 'sample-blog-713', 'This is the content of Sample Blog 713. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_713.jpg', 7304, '2024-08-09 14:27:22.645386', '2024-08-13 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'dc147b81-168f-42d1-b776-c351447c8451', 'c98c32d8-a040-4f94-8e06-4d538f89e0dc', 'Sample Blog Title 714', 'sample-blog-714', 'This is the content of Sample Blog 714. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_714.jpg', 6295, '2024-07-16 14:27:22.645386', '2024-07-25 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '21949f2b-d112-4267-ad8d-0ed5a63b9951', '103d8eb1-7e4b-4cb1-8daa-5cfa1e3d26ed', 'Sample Blog Title 715', 'sample-blog-715', 'This is the content of Sample Blog 715. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_715.jpg', 1618, '2024-07-20 14:27:22.645386', '2024-07-25 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'f7d4ccee-e6d7-4343-9158-8eb30d7a6d7a', '5092b13d-a468-407a-a609-da88631cbdc7', 'Sample Blog Title 716', 'sample-blog-716', 'This is the content of Sample Blog 716. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_716.jpg', 6313, '2025-01-23 14:27:22.645386', '2025-01-30 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '710cd600-0706-46c6-a189-236c92ecac0c', '2695ae5a-caf7-4810-b901-625cc6c712ca', 'Sample Blog Title 717', 'sample-blog-717', 'This is the content of Sample Blog 717. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_717.jpg', 5124, '2024-10-21 14:27:22.645386', '2024-10-29 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '07d7b416-8fb7-42b1-9de8-242223107d4d', 'a1b824e7-ffa2-4deb-a3fa-0aed799703ab', 'Sample Blog Title 718', 'sample-blog-718', 'This is the content of Sample Blog 718. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_718.jpg', 8754, '2024-09-25 14:27:22.645386', '2024-09-27 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd9b7dc57-0dd4-44f0-81bb-75e19485f42b', '5ca62b37-1b6e-4872-8fbd-e6163520ef13', 'Sample Blog Title 719', 'sample-blog-719', 'This is the content of Sample Blog 719. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_719.jpg', 5540, '2024-09-08 14:27:22.645386', '2024-09-11 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '3895c8d3-3595-4f17-b873-52b3e79b0427', '103d8eb1-7e4b-4cb1-8daa-5cfa1e3d26ed', 'Sample Blog Title 720', 'sample-blog-720', 'This is the content of Sample Blog 720. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_720.jpg', 1420, '2024-11-17 14:27:22.645386', '2024-11-18 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '89c556f7-9878-4ede-91eb-846ae9c7989c', '966ccd39-4d29-4318-95be-96f719f8576f', 'Sample Blog Title 721', 'sample-blog-721', 'This is the content of Sample Blog 721. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_721.jpg', 417, '2024-07-09 14:27:22.645386', '2024-07-13 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'cbde7ceb-a7a6-472c-94be-a43598548fbb', '58854fc5-18b1-4e2a-8605-4ccdd8950188', 'Sample Blog Title 722', 'sample-blog-722', 'This is the content of Sample Blog 722. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_722.jpg', 5941, '2024-10-06 14:27:22.645386', '2024-10-10 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '289774ad-e595-418e-ab68-321a6c9a88bd', 'e988e97f-169c-4a2e-ae7d-06d0928a1faa', 'Sample Blog Title 723', 'sample-blog-723', 'This is the content of Sample Blog 723. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_723.jpg', 859, '2024-12-01 14:27:22.645386', '2024-12-03 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '1a8d31af-3d68-4332-86f6-078b89b75d0a', '51e04f09-ce7a-49aa-8892-269a46065300', 'Sample Blog Title 724', 'sample-blog-724', 'This is the content of Sample Blog 724. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_724.jpg', 5561, '2024-08-14 14:27:22.645386', '2024-08-16 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '7c72cde8-b09d-4e91-90c9-98cb7a1e822d', 'd9588d50-5f13-4b66-a531-e4e290f9ac0f', 'Sample Blog Title 725', 'sample-blog-725', 'This is the content of Sample Blog 725. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_725.jpg', 63, '2024-08-29 14:27:22.645386', '2024-09-07 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '7c31efc2-e399-408d-9085-af64eb25df4e', 'f477d597-fae2-4230-b4d9-ece9fdafaa7d', 'Sample Blog Title 726', 'sample-blog-726', 'This is the content of Sample Blog 726. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_726.jpg', 9174, '2024-08-02 14:27:22.645386', '2024-08-08 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '0d5bf1e8-5194-44a7-9507-0cc5ee1ad1fc', 'a556f3dd-12bd-44c4-9a5a-49621b297736', 'Sample Blog Title 727', 'sample-blog-727', 'This is the content of Sample Blog 727. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_727.jpg', 4865, '2024-07-10 14:27:22.645386', '2024-07-18 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'f9f1de45-0378-4c92-8803-eac407216927', '4e99bfb6-a958-4f2f-a3b1-402cd84fdf5b', 'Sample Blog Title 728', 'sample-blog-728', 'This is the content of Sample Blog 728. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_728.jpg', 6896, '2024-05-12 14:27:22.645386', '2024-05-19 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '764337b9-1175-44a7-82de-c8c8e8e58640', '572e96a6-e620-4318-88e7-dd75551e9878', 'Sample Blog Title 729', 'sample-blog-729', 'This is the content of Sample Blog 729. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_729.jpg', 3050, '2024-10-03 14:27:22.645386', '2024-10-05 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '6f991b05-7d86-4764-a64c-41f039cf3a21', '5ff32bbc-b5c1-411d-9687-caf3f505df2d', 'Sample Blog Title 730', 'sample-blog-730', 'This is the content of Sample Blog 730. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_730.jpg', 210, '2024-06-24 14:27:22.645386', '2024-07-03 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'dde8824e-c0df-453d-8c63-527d8177b405', '8c5a0a04-13ff-412e-9552-6cdcb035bbe9', 'Sample Blog Title 731', 'sample-blog-731', 'This is the content of Sample Blog 731. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_731.jpg', 281, '2025-01-02 14:27:22.645386', '2025-01-03 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd35bf3d4-2f86-40b1-b302-40a327cc66fc', 'dff097d3-1d58-429f-9261-e0155b99c4e7', 'Sample Blog Title 732', 'sample-blog-732', 'This is the content of Sample Blog 732. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_732.jpg', 155, '2024-02-22 14:27:22.645386', '2024-03-03 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '8c842bb4-59d4-49f5-849e-068399010588', '5bbebc30-da22-4876-a2f4-04e55c37d11f', 'Sample Blog Title 733', 'sample-blog-733', 'This is the content of Sample Blog 733. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_733.jpg', 6063, '2024-02-24 14:27:22.645386', '2024-02-29 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '9163c7e6-cac3-46a6-829e-5393119ee209', '91e6c97a-83d2-4550-b5d6-09c10568cc92', 'Sample Blog Title 734', 'sample-blog-734', 'This is the content of Sample Blog 734. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_734.jpg', 5211, '2024-10-16 14:27:22.645386', '2024-10-21 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '4f89d85a-5859-4b31-bf5d-d9687086922f', 'f6cda0db-6d4b-4050-bfae-f360427e31ce', 'Sample Blog Title 735', 'sample-blog-735', 'This is the content of Sample Blog 735. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_735.jpg', 5821, '2024-07-17 14:27:22.645386', '2024-07-22 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'c16603fa-dc39-4580-ab4d-e5a25f67f3d8', '71c040a1-4ffd-4e48-8ae9-d1579f39a9fa', 'Sample Blog Title 736', 'sample-blog-736', 'This is the content of Sample Blog 736. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_736.jpg', 6026, '2025-01-27 14:27:22.645386', '2025-02-04 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '0a9f50ef-d53d-4c43-834c-7b8e024740ef', 'f783d009-7713-400d-91ef-d0bd454a3201', 'Sample Blog Title 737', 'sample-blog-737', 'This is the content of Sample Blog 737. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_737.jpg', 3739, '2024-04-05 14:27:22.645386', '2024-04-11 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '4b5045b5-1123-4159-915f-df797dc4a624', '5092b13d-a468-407a-a609-da88631cbdc7', 'Sample Blog Title 738', 'sample-blog-738', 'This is the content of Sample Blog 738. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_738.jpg', 5518, '2025-02-10 14:27:22.645386', '2025-02-12 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '8bf418a6-b281-490a-9f25-d80b74bddf61', '39c05142-af35-40ae-a9bf-95e0c58a5ef5', 'Sample Blog Title 739', 'sample-blog-739', 'This is the content of Sample Blog 739. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_739.jpg', 6997, '2024-03-27 14:27:22.645386', '2024-03-27 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '68d41958-b1c1-43dc-9054-f9e09417980e', 'd9588d50-5f13-4b66-a531-e4e290f9ac0f', 'Sample Blog Title 740', 'sample-blog-740', 'This is the content of Sample Blog 740. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_740.jpg', 1181, '2024-06-15 14:27:22.645386', '2024-06-17 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'dff96f32-c877-4c4c-b293-7c00c7157955', '4b750317-7e0b-4986-beb9-1df4ed3ad6f2', 'Sample Blog Title 741', 'sample-blog-741', 'This is the content of Sample Blog 741. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_741.jpg', 7576, '2024-09-01 14:27:22.645386', '2024-09-04 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd0f85b36-069c-4cc5-8287-8dd211a0e85a', '781ec698-ba4b-4723-a3c9-8b0694842e54', 'Sample Blog Title 742', 'sample-blog-742', 'This is the content of Sample Blog 742. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_742.jpg', 9583, '2024-11-15 14:27:22.645386', '2024-11-18 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'eded0748-fc14-4016-998c-6dc185dd5b38', '5092b13d-a468-407a-a609-da88631cbdc7', 'Sample Blog Title 743', 'sample-blog-743', 'This is the content of Sample Blog 743. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_743.jpg', 9893, '2024-10-03 14:27:22.645386', '2024-10-11 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'c97b7631-9090-4b50-9ea8-6f8faaba6077', 'b9208830-774a-4676-852a-9019cf3e5c63', 'Sample Blog Title 744', 'sample-blog-744', 'This is the content of Sample Blog 744. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_744.jpg', 530, '2024-05-21 14:27:22.645386', '2024-05-23 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '6c22972f-f709-4347-9226-1fb33ec0960c', '0dc230c0-79ed-45ee-b9a0-e06ee7fe34c4', 'Sample Blog Title 745', 'sample-blog-745', 'This is the content of Sample Blog 745. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_745.jpg', 8763, '2024-04-05 14:27:22.645386', '2024-04-06 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '549d1919-ceb4-4362-8cad-c109f13d2890', '6129a2ee-fd8d-4a70-b172-0ccd6faf9871', 'Sample Blog Title 746', 'sample-blog-746', 'This is the content of Sample Blog 746. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_746.jpg', 3399, '2024-09-11 14:27:22.645386', '2024-09-11 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '29aa82c0-ff48-497f-b8cd-2966ddbe84bb', 'ce8329db-2b4a-48fd-94cc-767f8fba7c91', 'Sample Blog Title 747', 'sample-blog-747', 'This is the content of Sample Blog 747. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_747.jpg', 5584, '2024-02-29 14:27:22.645386', '2024-03-10 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'bff547ed-bbb7-4b99-b300-58bd5ec1d7e4', '03481f97-cfe7-468e-b355-116bba4e8051', 'Sample Blog Title 748', 'sample-blog-748', 'This is the content of Sample Blog 748. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_748.jpg', 6000, '2024-10-15 14:27:22.645386', '2024-10-16 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'c058811c-ba7e-4117-9384-cb2faa594693', '699a0f8c-a70b-4e7c-95da-af2a1a874135', 'Sample Blog Title 749', 'sample-blog-749', 'This is the content of Sample Blog 749. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_749.jpg', 9685, '2024-03-26 14:27:22.645386', '2024-03-28 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '5e949522-c0c8-41d4-8695-31838f992847', 'd07a734b-df00-4d1d-a15f-fbfe418fe807', 'Sample Blog Title 750', 'sample-blog-750', 'This is the content of Sample Blog 750. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_750.jpg', 2569, '2024-07-10 14:27:22.645386', '2024-07-11 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '1168c660-3539-4a2d-8d2a-5681f16e84c9', '5ff32bbc-b5c1-411d-9687-caf3f505df2d', 'Sample Blog Title 751', 'sample-blog-751', 'This is the content of Sample Blog 751. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_751.jpg', 6858, '2024-09-06 14:27:22.645386', '2024-09-12 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '3ee9ad04-7248-46be-92f2-9b9648f51fcf', '39c05142-af35-40ae-a9bf-95e0c58a5ef5', 'Sample Blog Title 752', 'sample-blog-752', 'This is the content of Sample Blog 752. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_752.jpg', 9663, '2024-08-28 14:27:22.645386', '2024-09-05 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '307ba232-017e-47e2-ae40-40fd371e5657', '5ca62b37-1b6e-4872-8fbd-e6163520ef13', 'Sample Blog Title 753', 'sample-blog-753', 'This is the content of Sample Blog 753. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_753.jpg', 6132, '2024-07-09 14:27:22.645386', '2024-07-16 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '19878652-274c-4d20-b815-fdf28242f418', 'a1b824e7-ffa2-4deb-a3fa-0aed799703ab', 'Sample Blog Title 754', 'sample-blog-754', 'This is the content of Sample Blog 754. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_754.jpg', 7871, '2024-12-02 14:27:22.645386', '2024-12-11 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'ac91571f-6989-47b5-8280-8fde35fb85e1', '103d8eb1-7e4b-4cb1-8daa-5cfa1e3d26ed', 'Sample Blog Title 755', 'sample-blog-755', 'This is the content of Sample Blog 755. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_755.jpg', 7671, '2024-06-14 14:27:22.645386', '2024-06-14 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '05f348cd-8309-453a-939f-987fcd664a3b', 'a1b824e7-ffa2-4deb-a3fa-0aed799703ab', 'Sample Blog Title 756', 'sample-blog-756', 'This is the content of Sample Blog 756. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_756.jpg', 3610, '2024-11-13 14:27:22.645386', '2024-11-21 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd4801900-729a-44ae-966c-710c8adb5c24', 'f436ba40-ba79-40ae-90d9-1c7cd5cace8d', 'Sample Blog Title 757', 'sample-blog-757', 'This is the content of Sample Blog 757. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_757.jpg', 6877, '2024-07-20 14:27:22.645386', '2024-07-25 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '477513e3-0065-4031-b135-7c3114f07382', '51e04f09-ce7a-49aa-8892-269a46065300', 'Sample Blog Title 758', 'sample-blog-758', 'This is the content of Sample Blog 758. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_758.jpg', 7807, '2024-08-12 14:27:22.645386', '2024-08-14 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '2da1b27b-0b33-42ea-9908-98cf559a78f9', '10919c49-5177-4a73-a703-03835738f105', 'Sample Blog Title 759', 'sample-blog-759', 'This is the content of Sample Blog 759. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_759.jpg', 859, '2024-08-13 14:27:22.645386', '2024-08-23 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '4094cc79-0080-4662-8606-b5e14a541d47', '2038934d-d590-4e9f-bd2b-f46cc1acf46d', 'Sample Blog Title 760', 'sample-blog-760', 'This is the content of Sample Blog 760. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_760.jpg', 3375, '2024-12-26 14:27:22.645386', '2025-01-01 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '0911feda-7253-4754-a3d2-f1631ca64c50', '4ae05754-eef2-4aad-82df-794ab3c91930', 'Sample Blog Title 761', 'sample-blog-761', 'This is the content of Sample Blog 761. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_761.jpg', 4472, '2024-05-16 14:27:22.645386', '2024-05-26 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'c7cdd03d-06e7-4f15-9d9a-7a908df38ac6', 'bcacbd38-6630-44a4-a5de-66d359987f48', 'Sample Blog Title 762', 'sample-blog-762', 'This is the content of Sample Blog 762. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_762.jpg', 1541, '2024-09-01 14:27:22.645386', '2024-09-02 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '60439054-25f4-451a-98a8-0b75e98beb05', '6129a2ee-fd8d-4a70-b172-0ccd6faf9871', 'Sample Blog Title 763', 'sample-blog-763', 'This is the content of Sample Blog 763. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_763.jpg', 8150, '2025-01-07 14:27:22.645386', '2025-01-09 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '139ea966-5812-4c75-808d-1e6b9004277d', '332ca334-80c2-49b3-b742-c7f12d99dfba', 'Sample Blog Title 764', 'sample-blog-764', 'This is the content of Sample Blog 764. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_764.jpg', 5503, '2024-02-29 14:27:22.645386', '2024-03-10 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '17ec8607-4054-40de-a959-14bf46053205', '3f3b19f5-ccab-41f5-aea0-9bef9d1da2aa', 'Sample Blog Title 765', 'sample-blog-765', 'This is the content of Sample Blog 765. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_765.jpg', 3484, '2025-02-01 14:27:22.645386', '2025-02-06 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '0807e6e9-ea14-48a0-bd19-c3a3eb33dad5', 'a1b824e7-ffa2-4deb-a3fa-0aed799703ab', 'Sample Blog Title 766', 'sample-blog-766', 'This is the content of Sample Blog 766. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_766.jpg', 3309, '2025-01-23 14:27:22.645386', '2025-01-23 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '7d8b224a-09ba-4a8a-8700-6770cf9a488d', '699a0f8c-a70b-4e7c-95da-af2a1a874135', 'Sample Blog Title 767', 'sample-blog-767', 'This is the content of Sample Blog 767. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_767.jpg', 2558, '2024-12-21 14:27:22.645386', '2024-12-27 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '310fc13f-3c9f-4e25-bf05-bd81e0488308', '4ae05754-eef2-4aad-82df-794ab3c91930', 'Sample Blog Title 768', 'sample-blog-768', 'This is the content of Sample Blog 768. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_768.jpg', 2654, '2024-07-24 14:27:22.645386', '2024-07-24 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e930b43e-ec72-4157-bafc-433e419713e1', '5092b13d-a468-407a-a609-da88631cbdc7', 'Sample Blog Title 769', 'sample-blog-769', 'This is the content of Sample Blog 769. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_769.jpg', 1761, '2024-08-15 14:27:22.645386', '2024-08-18 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'b983e4b3-1f1e-4ff6-a2dd-1e4bbf9d1ff7', '8b8bc0e4-8066-4b44-850d-abf220c9b056', 'Sample Blog Title 770', 'sample-blog-770', 'This is the content of Sample Blog 770. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_770.jpg', 2077, '2024-09-14 14:27:22.645386', '2024-09-22 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'fb2bf4c8-ed2c-4789-ac89-7d38850dcdeb', '1288136e-65ae-4cab-96ac-1dcf147f94e4', 'Sample Blog Title 771', 'sample-blog-771', 'This is the content of Sample Blog 771. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_771.jpg', 7496, '2024-12-29 14:27:22.645386', '2024-12-29 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '2b34b56c-8408-4077-8e85-fd42adbeea35', '8acd47d7-c6ef-440c-b929-de39d9e1e0c7', 'Sample Blog Title 772', 'sample-blog-772', 'This is the content of Sample Blog 772. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_772.jpg', 8688, '2024-10-29 14:27:22.645386', '2024-11-02 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'f281380b-40f8-42f8-9557-cbf033919dc7', 'fefcc24d-ad0c-4abd-8db3-f143d2aedc13', 'Sample Blog Title 773', 'sample-blog-773', 'This is the content of Sample Blog 773. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_773.jpg', 9927, '2024-07-06 14:27:22.645386', '2024-07-14 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '47f2deb3-0134-4b6f-8650-51fa46ceb464', '412d4aec-7bd0-4e29-a237-392d09029ed4', 'Sample Blog Title 774', 'sample-blog-774', 'This is the content of Sample Blog 774. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_774.jpg', 864, '2024-12-09 14:27:22.645386', '2024-12-17 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e980e329-1499-4e4d-99eb-51215135ca1e', '8acd47d7-c6ef-440c-b929-de39d9e1e0c7', 'Sample Blog Title 775', 'sample-blog-775', 'This is the content of Sample Blog 775. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_775.jpg', 4149, '2024-06-12 14:27:22.645386', '2024-06-13 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '16ac0bac-5d3e-48c2-8a7c-830780399aa4', '17cc124f-b752-457d-8447-5cdfffd63a10', 'Sample Blog Title 776', 'sample-blog-776', 'This is the content of Sample Blog 776. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_776.jpg', 5493, '2025-01-31 14:27:22.645386', '2025-02-06 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'aa58e63f-ff50-4e25-9400-aab23e196c10', '3f9017fc-ddc0-4467-a609-672bef2ab6e1', 'Sample Blog Title 777', 'sample-blog-777', 'This is the content of Sample Blog 777. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_777.jpg', 7290, '2024-03-28 14:27:22.645386', '2024-04-06 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '3ce49568-f3bc-4aa7-9230-909faa8507a2', 'a1b824e7-ffa2-4deb-a3fa-0aed799703ab', 'Sample Blog Title 778', 'sample-blog-778', 'This is the content of Sample Blog 778. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_778.jpg', 4171, '2024-07-15 14:27:22.645386', '2024-07-23 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '6dc80dcd-a529-452b-b719-91f8ada13ebd', 'a556f3dd-12bd-44c4-9a5a-49621b297736', 'Sample Blog Title 779', 'sample-blog-779', 'This is the content of Sample Blog 779. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_779.jpg', 5635, '2024-06-16 14:27:22.645386', '2024-06-21 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '4e3efbb8-c850-42d3-b17a-b5335be3faba', '6d9d30fd-e2ed-4a2f-9034-8531d7723e11', 'Sample Blog Title 780', 'sample-blog-780', 'This is the content of Sample Blog 780. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_780.jpg', 6684, '2024-02-27 14:27:22.645386', '2024-03-07 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'b9501172-037b-4ceb-9721-edce5be467ad', '8cb61520-fd74-4e18-8c82-668c6d088264', 'Sample Blog Title 781', 'sample-blog-781', 'This is the content of Sample Blog 781. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_781.jpg', 6094, '2025-01-30 14:27:22.645386', '2025-02-03 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '2fc07ef5-cea0-4d11-8845-51acf38227b7', '3f9017fc-ddc0-4467-a609-672bef2ab6e1', 'Sample Blog Title 782', 'sample-blog-782', 'This is the content of Sample Blog 782. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_782.jpg', 8616, '2024-02-21 14:27:22.645386', '2024-02-29 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '68cccc49-1fc8-41f6-87db-61d39c8db279', '94d6b67f-87b1-42ee-a177-5e4788b3a5a3', 'Sample Blog Title 783', 'sample-blog-783', 'This is the content of Sample Blog 783. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_783.jpg', 2523, '2024-06-26 14:27:22.645386', '2024-07-01 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'bafb8d8d-a235-4024-af7a-cf78c1bd8c53', '412d4aec-7bd0-4e29-a237-392d09029ed4', 'Sample Blog Title 784', 'sample-blog-784', 'This is the content of Sample Blog 784. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_784.jpg', 4622, '2024-03-12 14:27:22.645386', '2024-03-13 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '1c968cf3-b929-4567-8314-fdbf8b5938c4', '8cb78e82-a9c9-4550-9861-a28a3b4c0342', 'Sample Blog Title 785', 'sample-blog-785', 'This is the content of Sample Blog 785. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_785.jpg', 5700, '2024-11-24 14:27:22.645386', '2024-12-04 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '5f1643a1-9438-4e79-b101-b166a0c1f7ac', '91829ca9-91b2-4586-92d4-3cbdfc515b07', 'Sample Blog Title 786', 'sample-blog-786', 'This is the content of Sample Blog 786. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_786.jpg', 5821, '2024-10-18 14:27:22.645386', '2024-10-20 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'fc5ac46f-b6a2-494d-8b2a-909a844d1e6f', '572e96a6-e620-4318-88e7-dd75551e9878', 'Sample Blog Title 787', 'sample-blog-787', 'This is the content of Sample Blog 787. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_787.jpg', 805, '2024-08-17 14:27:22.645386', '2024-08-19 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd533bea4-2f6b-4b20-837e-a37433ba5773', '2e8bc313-676a-43bd-be66-01e8e88dcbb7', 'Sample Blog Title 788', 'sample-blog-788', 'This is the content of Sample Blog 788. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_788.jpg', 5271, '2024-04-18 14:27:22.645386', '2024-04-23 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '77f4a521-68a8-46c5-928c-fedddc359a38', '412d4aec-7bd0-4e29-a237-392d09029ed4', 'Sample Blog Title 789', 'sample-blog-789', 'This is the content of Sample Blog 789. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_789.jpg', 3378, '2024-06-03 14:27:22.645386', '2024-06-13 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '99fb379f-9165-48c5-8d1f-71317d1050dd', 'dff097d3-1d58-429f-9261-e0155b99c4e7', 'Sample Blog Title 790', 'sample-blog-790', 'This is the content of Sample Blog 790. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_790.jpg', 6008, '2024-11-30 14:27:22.645386', '2024-12-05 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '24525c8c-1178-4eaf-abbc-d5145884489b', '2695ae5a-caf7-4810-b901-625cc6c712ca', 'Sample Blog Title 791', 'sample-blog-791', 'This is the content of Sample Blog 791. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_791.jpg', 1986, '2024-04-24 14:27:22.645386', '2024-05-02 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'bef935f2-c2e4-4627-919a-6e281c3b5c18', '10919c49-5177-4a73-a703-03835738f105', 'Sample Blog Title 792', 'sample-blog-792', 'This is the content of Sample Blog 792. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_792.jpg', 1393, '2025-01-18 14:27:22.645386', '2025-01-25 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '64f8950f-9c1d-467a-b209-b45874738483', 'b697998f-4712-46b5-8532-4f4c68e4927c', 'Sample Blog Title 793', 'sample-blog-793', 'This is the content of Sample Blog 793. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_793.jpg', 4188, '2024-10-01 14:27:22.645386', '2024-10-09 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '599d1594-ae4a-4861-80ec-a9ef4666bfc8', '39c05142-af35-40ae-a9bf-95e0c58a5ef5', 'Sample Blog Title 794', 'sample-blog-794', 'This is the content of Sample Blog 794. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_794.jpg', 7846, '2024-04-16 14:27:22.645386', '2024-04-22 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '510a22ec-4bb0-4475-b3aa-e6f22ec6d02a', '89139764-3150-4ea5-b980-61e8585f3a41', 'Sample Blog Title 795', 'sample-blog-795', 'This is the content of Sample Blog 795. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_795.jpg', 3881, '2024-06-12 14:27:22.645386', '2024-06-13 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '18a5d45a-36d1-4a1f-b6c8-4dc15e0d20f7', '9c2fe57a-858b-4f54-83d1-16dbf396b752', 'Sample Blog Title 796', 'sample-blog-796', 'This is the content of Sample Blog 796. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_796.jpg', 2004, '2024-03-04 14:27:22.645386', '2024-03-09 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '62715b0d-361f-4ca0-8c00-8f177ac1dc61', '51e04f09-ce7a-49aa-8892-269a46065300', 'Sample Blog Title 797', 'sample-blog-797', 'This is the content of Sample Blog 797. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_797.jpg', 5573, '2024-02-21 14:27:22.645386', '2024-02-28 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'f36849b4-e82e-4f4a-b86b-bcd141200903', 'd4ef8972-f69c-40c9-a7d3-bc0ef5868391', 'Sample Blog Title 798', 'sample-blog-798', 'This is the content of Sample Blog 798. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_798.jpg', 6658, '2024-06-30 14:27:22.645386', '2024-07-06 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '35547933-0644-4cd6-89d5-fbe6864b70a2', '71c040a1-4ffd-4e48-8ae9-d1579f39a9fa', 'Sample Blog Title 799', 'sample-blog-799', 'This is the content of Sample Blog 799. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_799.jpg', 3679, '2024-06-04 14:27:22.645386', '2024-06-14 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '1b81e2cb-7a37-4f95-9b02-0b25745069e7', '2038934d-d590-4e9f-bd2b-f46cc1acf46d', 'Sample Blog Title 800', 'sample-blog-800', 'This is the content of Sample Blog 800. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_800.jpg', 7715, '2024-08-17 14:27:22.645386', '2024-08-19 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '315aa5b6-a057-4336-9f10-864c72ce362b', '781ec698-ba4b-4723-a3c9-8b0694842e54', 'Sample Blog Title 801', 'sample-blog-801', 'This is the content of Sample Blog 801. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_801.jpg', 1021, '2025-01-22 14:27:22.645386', '2025-01-30 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '16b31a24-816a-492c-aab3-6d2eadc1736d', 'bf95245c-cf8f-46e7-8660-08e4e2e3d4a2', 'Sample Blog Title 802', 'sample-blog-802', 'This is the content of Sample Blog 802. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_802.jpg', 6686, '2024-10-01 14:27:22.645386', '2024-10-09 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '02b0f998-3e37-43a5-8800-3fc80523aadd', '8acd47d7-c6ef-440c-b929-de39d9e1e0c7', 'Sample Blog Title 803', 'sample-blog-803', 'This is the content of Sample Blog 803. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_803.jpg', 294, '2024-06-08 14:27:22.645386', '2024-06-14 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'b637ebf2-f939-4d3b-9311-2e524e2fd3d8', '103d8eb1-7e4b-4cb1-8daa-5cfa1e3d26ed', 'Sample Blog Title 804', 'sample-blog-804', 'This is the content of Sample Blog 804. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_804.jpg', 393, '2024-06-05 14:27:22.645386', '2024-06-14 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '77738b80-1841-4109-837a-7e503ce55147', '53b658e1-f8fd-4133-99c8-02f2e2ce422d', 'Sample Blog Title 805', 'sample-blog-805', 'This is the content of Sample Blog 805. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_805.jpg', 8104, '2025-02-14 14:27:22.645386', '2025-02-21 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'c118a13e-06ef-4cfd-a2af-9d9c4310e9af', '5fa7e24b-fcee-48d8-b8b1-1114b9b2094d', 'Sample Blog Title 806', 'sample-blog-806', 'This is the content of Sample Blog 806. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_806.jpg', 5030, '2024-02-22 14:27:22.645386', '2024-02-22 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '049dc629-0439-4573-8286-e137782f4a3e', 'a556f3dd-12bd-44c4-9a5a-49621b297736', 'Sample Blog Title 807', 'sample-blog-807', 'This is the content of Sample Blog 807. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_807.jpg', 9390, '2024-12-06 14:27:22.645386', '2024-12-07 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '310b08b8-c249-4de9-b53a-274e4bc7a51f', '5bbebc30-da22-4876-a2f4-04e55c37d11f', 'Sample Blog Title 808', 'sample-blog-808', 'This is the content of Sample Blog 808. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_808.jpg', 6685, '2024-03-09 14:27:22.645386', '2024-03-16 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '73fdc833-8bac-48d7-bf9a-722b73cefe70', '00504c3d-f629-42f5-b87b-b9014ef5d973', 'Sample Blog Title 809', 'sample-blog-809', 'This is the content of Sample Blog 809. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_809.jpg', 5583, '2024-05-25 14:27:22.645386', '2024-05-31 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd697e7a3-ea93-4293-8e69-258fe970a832', 'f477d597-fae2-4230-b4d9-ece9fdafaa7d', 'Sample Blog Title 810', 'sample-blog-810', 'This is the content of Sample Blog 810. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_810.jpg', 1785, '2024-05-02 14:27:22.645386', '2024-05-08 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '087e462b-8464-4e17-a3e8-0bbc18a09c11', 'f436ba40-ba79-40ae-90d9-1c7cd5cace8d', 'Sample Blog Title 811', 'sample-blog-811', 'This is the content of Sample Blog 811. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_811.jpg', 1699, '2024-08-17 14:27:22.645386', '2024-08-19 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '5b2350f4-87bd-45aa-ac0a-99f966cf7883', 'f391768c-7823-4784-b04d-a38a27b88967', 'Sample Blog Title 812', 'sample-blog-812', 'This is the content of Sample Blog 812. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_812.jpg', 2626, '2024-02-18 14:27:22.645386', '2024-02-20 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '6d5c1b8f-4c28-40ba-9f85-3f309d1ec9c9', '2695ae5a-caf7-4810-b901-625cc6c712ca', 'Sample Blog Title 813', 'sample-blog-813', 'This is the content of Sample Blog 813. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_813.jpg', 5854, '2024-08-17 14:27:22.645386', '2024-08-22 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '5c241489-6f0a-4312-81bf-9b7900d4ed41', '3f3b19f5-ccab-41f5-aea0-9bef9d1da2aa', 'Sample Blog Title 814', 'sample-blog-814', 'This is the content of Sample Blog 814. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_814.jpg', 8312, '2024-05-13 14:27:22.645386', '2024-05-16 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'a552d042-07b2-441f-aa66-5628dc01dcf1', '5bbebc30-da22-4876-a2f4-04e55c37d11f', 'Sample Blog Title 815', 'sample-blog-815', 'This is the content of Sample Blog 815. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_815.jpg', 5563, '2024-11-22 14:27:22.645386', '2024-11-22 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '01567f6f-05fc-4935-8bb6-89f4bc5cd41e', 'c2791e81-4b59-4fc5-bb30-d92815d98716', 'Sample Blog Title 816', 'sample-blog-816', 'This is the content of Sample Blog 816. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_816.jpg', 2314, '2024-03-03 14:27:22.645386', '2024-03-09 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'efe6cae5-3bdb-4c9b-9714-d87d6d515198', '4ae05754-eef2-4aad-82df-794ab3c91930', 'Sample Blog Title 817', 'sample-blog-817', 'This is the content of Sample Blog 817. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_817.jpg', 6227, '2024-11-01 14:27:22.645386', '2024-11-08 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e2f64348-72f9-4c71-89b4-ed831d467df2', 'edda8670-c8d9-4fa9-acb0-9d7e69e1bca9', 'Sample Blog Title 818', 'sample-blog-818', 'This is the content of Sample Blog 818. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_818.jpg', 5104, '2024-06-17 14:27:22.645386', '2024-06-24 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '06fbf08b-c621-418f-a7a8-49e528425797', 'd0d198ab-54e5-4aeb-82df-582201a01e21', 'Sample Blog Title 819', 'sample-blog-819', 'This is the content of Sample Blog 819. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_819.jpg', 2822, '2024-05-16 14:27:22.645386', '2024-05-25 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'b2a8033d-84e8-4c83-8df6-12cb8d36f4d4', '8b8bc0e4-8066-4b44-850d-abf220c9b056', 'Sample Blog Title 820', 'sample-blog-820', 'This is the content of Sample Blog 820. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_820.jpg', 21, '2025-02-03 14:27:22.645386', '2025-02-03 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '44e8b67e-3291-4ad4-a557-b335fa73bb91', 'e8579452-e2ab-48f4-8681-50a69c865547', 'Sample Blog Title 821', 'sample-blog-821', 'This is the content of Sample Blog 821. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_821.jpg', 2936, '2024-08-31 14:27:22.645386', '2024-09-01 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '00a4db12-50d5-42c7-a1c3-41349197896f', '00504c3d-f629-42f5-b87b-b9014ef5d973', 'Sample Blog Title 822', 'sample-blog-822', 'This is the content of Sample Blog 822. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_822.jpg', 7738, '2024-12-06 14:27:22.645386', '2024-12-10 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '276efb9f-9449-4673-813b-9a712605e448', '17cc124f-b752-457d-8447-5cdfffd63a10', 'Sample Blog Title 823', 'sample-blog-823', 'This is the content of Sample Blog 823. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_823.jpg', 1184, '2024-04-22 14:27:22.645386', '2024-04-27 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '2e24c54f-a406-4142-9523-5b0b7a238d2c', '4ae05754-eef2-4aad-82df-794ab3c91930', 'Sample Blog Title 824', 'sample-blog-824', 'This is the content of Sample Blog 824. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_824.jpg', 2037, '2024-09-26 14:27:22.645386', '2024-10-01 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '50b829ae-7931-420c-9888-8e4d135a28ce', '9d78a484-6190-4924-b52b-89a82f840a7f', 'Sample Blog Title 825', 'sample-blog-825', 'This is the content of Sample Blog 825. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_825.jpg', 8004, '2024-11-17 14:27:22.645386', '2024-11-25 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '82d6b6da-6525-4cce-9f3d-182733a13d92', '71812813-de60-483c-8faa-f640965b23f5', 'Sample Blog Title 826', 'sample-blog-826', 'This is the content of Sample Blog 826. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_826.jpg', 8488, '2024-12-25 14:27:22.645386', '2024-12-25 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'c5e74838-70b4-4bb7-8caa-e90a72602e15', '53b658e1-f8fd-4133-99c8-02f2e2ce422d', 'Sample Blog Title 827', 'sample-blog-827', 'This is the content of Sample Blog 827. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_827.jpg', 1192, '2025-02-13 14:27:22.645386', '2025-02-20 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'aaad2bf8-e5a9-4a72-9b89-0e69429a2c67', '6e7a436a-a896-47bf-8160-e81a5107f3ed', 'Sample Blog Title 828', 'sample-blog-828', 'This is the content of Sample Blog 828. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_828.jpg', 5448, '2024-08-11 14:27:22.645386', '2024-08-12 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '6f201e55-098c-4de5-a9be-bfcc1ddb9e06', '011d86ec-2fb8-473d-a0d1-7f8a42a611d3', 'Sample Blog Title 829', 'sample-blog-829', 'This is the content of Sample Blog 829. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_829.jpg', 4513, '2025-01-28 14:27:22.645386', '2025-01-30 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '451486ef-cf82-488a-98e1-6a729d1152fe', 'a556f3dd-12bd-44c4-9a5a-49621b297736', 'Sample Blog Title 830', 'sample-blog-830', 'This is the content of Sample Blog 830. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_830.jpg', 7220, '2024-10-05 14:27:22.645386', '2024-10-15 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '31de7876-e971-45eb-aec2-1ba853d3855f', '5bbebc30-da22-4876-a2f4-04e55c37d11f', 'Sample Blog Title 831', 'sample-blog-831', 'This is the content of Sample Blog 831. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_831.jpg', 2152, '2024-11-27 14:27:22.645386', '2024-11-27 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '629b604a-cf7b-4683-b2eb-01f67d62e502', '332ca334-80c2-49b3-b742-c7f12d99dfba', 'Sample Blog Title 832', 'sample-blog-832', 'This is the content of Sample Blog 832. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_832.jpg', 6205, '2024-08-04 14:27:22.645386', '2024-08-13 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'ab34385d-61ca-4b82-bab2-17db482682d7', 'f391768c-7823-4784-b04d-a38a27b88967', 'Sample Blog Title 833', 'sample-blog-833', 'This is the content of Sample Blog 833. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_833.jpg', 7548, '2024-06-14 14:27:22.645386', '2024-06-22 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'a6e97e83-5cbf-400d-8105-b184da764c15', '6d9d30fd-e2ed-4a2f-9034-8531d7723e11', 'Sample Blog Title 834', 'sample-blog-834', 'This is the content of Sample Blog 834. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_834.jpg', 6257, '2024-05-13 14:27:22.645386', '2024-05-18 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'a86d7b2b-4927-4f20-bf45-68c6c2355517', '4d132b27-8363-4bb0-8618-360068914d24', 'Sample Blog Title 835', 'sample-blog-835', 'This is the content of Sample Blog 835. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_835.jpg', 6506, '2024-12-29 14:27:22.645386', '2024-12-29 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '707e9e09-eef9-46f6-9c5f-4e385003378c', 'f8b36547-801b-49d2-a8bc-5c4d7e766119', 'Sample Blog Title 836', 'sample-blog-836', 'This is the content of Sample Blog 836. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_836.jpg', 713, '2024-11-06 14:27:22.645386', '2024-11-09 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'b52a5027-4f8c-4b88-8907-4750f2afbc40', 'f477d597-fae2-4230-b4d9-ece9fdafaa7d', 'Sample Blog Title 837', 'sample-blog-837', 'This is the content of Sample Blog 837. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_837.jpg', 7742, '2025-01-09 14:27:22.645386', '2025-01-12 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '0a610cf1-c274-4f93-bd71-9142febbb7c0', '4d132b27-8363-4bb0-8618-360068914d24', 'Sample Blog Title 838', 'sample-blog-838', 'This is the content of Sample Blog 838. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_838.jpg', 5614, '2024-02-24 14:27:22.645386', '2024-02-25 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'a2d3bf90-2b1e-4ee3-a056-563d871666cb', '71812813-de60-483c-8faa-f640965b23f5', 'Sample Blog Title 839', 'sample-blog-839', 'This is the content of Sample Blog 839. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_839.jpg', 2793, '2024-09-06 14:27:22.645386', '2024-09-08 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'bdfd895c-16bf-4ed3-9e41-78fce273bbcf', '9c2fe57a-858b-4f54-83d1-16dbf396b752', 'Sample Blog Title 840', 'sample-blog-840', 'This is the content of Sample Blog 840. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_840.jpg', 8765, '2024-10-31 14:27:22.645386', '2024-11-05 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '78bb1b4e-75ca-4f54-a601-b1f27d0f10e9', '5bbebc30-da22-4876-a2f4-04e55c37d11f', 'Sample Blog Title 841', 'sample-blog-841', 'This is the content of Sample Blog 841. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_841.jpg', 3466, '2024-09-15 14:27:22.645386', '2024-09-24 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '427658ca-dfdf-4ca9-84a2-60be232c2de0', '26f058a6-7f8a-4e82-aae5-10137c657f5e', 'Sample Blog Title 842', 'sample-blog-842', 'This is the content of Sample Blog 842. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_842.jpg', 1589, '2025-02-08 14:27:22.645386', '2025-02-13 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '2b9d969f-ba4f-4a81-a307-9beb572d7971', '8cb78e82-a9c9-4550-9861-a28a3b4c0342', 'Sample Blog Title 843', 'sample-blog-843', 'This is the content of Sample Blog 843. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_843.jpg', 4647, '2024-09-19 14:27:22.645386', '2024-09-25 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'adcd4803-db83-4bc0-a353-2354f38c4ee7', 'c2791e81-4b59-4fc5-bb30-d92815d98716', 'Sample Blog Title 844', 'sample-blog-844', 'This is the content of Sample Blog 844. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_844.jpg', 2042, '2025-01-17 14:27:22.645386', '2025-01-18 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '633fa403-ab4b-44e7-b403-b8e8688b0c91', 'e988e97f-169c-4a2e-ae7d-06d0928a1faa', 'Sample Blog Title 845', 'sample-blog-845', 'This is the content of Sample Blog 845. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_845.jpg', 4591, '2024-10-15 14:27:22.645386', '2024-10-24 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '2e550dfb-fd14-498c-850e-b65d311426d1', '5ca62b37-1b6e-4872-8fbd-e6163520ef13', 'Sample Blog Title 846', 'sample-blog-846', 'This is the content of Sample Blog 846. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_846.jpg', 5038, '2024-06-01 14:27:22.645386', '2024-06-06 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e8674e3e-e4b8-493b-a3e9-38b675b66c0d', '3f3b19f5-ccab-41f5-aea0-9bef9d1da2aa', 'Sample Blog Title 847', 'sample-blog-847', 'This is the content of Sample Blog 847. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_847.jpg', 4385, '2024-04-02 14:27:22.645386', '2024-04-04 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '97399693-d474-4bdb-9fdf-328c7a5ceaca', '03481f97-cfe7-468e-b355-116bba4e8051', 'Sample Blog Title 848', 'sample-blog-848', 'This is the content of Sample Blog 848. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_848.jpg', 8087, '2024-10-31 14:27:22.645386', '2024-11-09 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '7be7cbd5-4259-4848-b6c3-09ee92b39080', '488cf604-21d2-416d-ad08-71a1a28540f0', 'Sample Blog Title 849', 'sample-blog-849', 'This is the content of Sample Blog 849. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_849.jpg', 1205, '2024-11-01 14:27:22.645386', '2024-11-03 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e7ebf764-6729-43f7-b290-955de7474c64', '5bbebc30-da22-4876-a2f4-04e55c37d11f', 'Sample Blog Title 850', 'sample-blog-850', 'This is the content of Sample Blog 850. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_850.jpg', 3364, '2024-03-20 14:27:22.645386', '2024-03-21 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd4598157-c102-4fbd-a332-f9693aa32335', '8cb61520-fd74-4e18-8c82-668c6d088264', 'Sample Blog Title 851', 'sample-blog-851', 'This is the content of Sample Blog 851. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_851.jpg', 3493, '2024-11-16 14:27:22.645386', '2024-11-22 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '7035e2aa-ac02-41e5-9ea1-239f15d53f65', 'd9588d50-5f13-4b66-a531-e4e290f9ac0f', 'Sample Blog Title 852', 'sample-blog-852', 'This is the content of Sample Blog 852. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_852.jpg', 7374, '2024-02-20 14:27:22.645386', '2024-02-21 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '83fd8329-174d-4f54-b953-01fb8f6fabc6', '714a063a-fcf1-451c-b72a-1a2c27e91f33', 'Sample Blog Title 853', 'sample-blog-853', 'This is the content of Sample Blog 853. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_853.jpg', 8682, '2024-06-21 14:27:22.645386', '2024-06-22 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'ba3599da-1f30-4d64-ab5e-74306c17e4f3', '40755138-babb-47a6-8353-0cb7ccac2513', 'Sample Blog Title 854', 'sample-blog-854', 'This is the content of Sample Blog 854. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_854.jpg', 7258, '2024-05-02 14:27:22.645386', '2024-05-05 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e8efc64d-9967-4dce-b4ad-6271a1a808cd', '011d86ec-2fb8-473d-a0d1-7f8a42a611d3', 'Sample Blog Title 855', 'sample-blog-855', 'This is the content of Sample Blog 855. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_855.jpg', 1302, '2024-07-01 14:27:22.645386', '2024-07-04 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '86925801-561f-4bf8-abb9-e1670c20b5e4', '03481f97-cfe7-468e-b355-116bba4e8051', 'Sample Blog Title 856', 'sample-blog-856', 'This is the content of Sample Blog 856. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_856.jpg', 7657, '2025-02-06 14:27:22.645386', '2025-02-16 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'f44babeb-11db-4a11-8676-efaf40c815c5', 'f6cda0db-6d4b-4050-bfae-f360427e31ce', 'Sample Blog Title 857', 'sample-blog-857', 'This is the content of Sample Blog 857. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_857.jpg', 7165, '2024-07-13 14:27:22.645386', '2024-07-23 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '2fc86412-4cc2-4a0f-8f61-1ee74cbf3200', '2e8bc313-676a-43bd-be66-01e8e88dcbb7', 'Sample Blog Title 858', 'sample-blog-858', 'This is the content of Sample Blog 858. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_858.jpg', 1589, '2024-08-07 14:27:22.645386', '2024-08-16 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'dad3cd6d-35a4-49a0-bb40-437075fafd9d', '332ca334-80c2-49b3-b742-c7f12d99dfba', 'Sample Blog Title 859', 'sample-blog-859', 'This is the content of Sample Blog 859. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_859.jpg', 6467, '2024-05-06 14:27:22.645386', '2024-05-11 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '95bb3a47-7a0d-4ecb-b031-ae8abda1ae05', '7f905030-8831-4f16-aeff-ddfae4c4e45b', 'Sample Blog Title 860', 'sample-blog-860', 'This is the content of Sample Blog 860. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_860.jpg', 243, '2024-11-27 14:27:22.645386', '2024-12-05 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'c350d435-4af3-472d-a14a-e83a4948e6f2', '40d7a621-d8d1-4bcb-9ab2-be3b4fc2d3ab', 'Sample Blog Title 861', 'sample-blog-861', 'This is the content of Sample Blog 861. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_861.jpg', 5046, '2024-06-08 14:27:22.645386', '2024-06-11 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e69acaf7-93f1-4be5-b568-1b60d7673b0b', '2e8bc313-676a-43bd-be66-01e8e88dcbb7', 'Sample Blog Title 862', 'sample-blog-862', 'This is the content of Sample Blog 862. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_862.jpg', 4094, '2024-10-08 14:27:22.645386', '2024-10-15 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '296ad3c0-dc87-4900-94fc-584792e8f0b8', 'fefcc24d-ad0c-4abd-8db3-f143d2aedc13', 'Sample Blog Title 863', 'sample-blog-863', 'This is the content of Sample Blog 863. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_863.jpg', 3863, '2024-11-10 14:27:22.645386', '2024-11-17 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'f61960cc-856a-4f11-a6af-0f780ade0cf9', '53b658e1-f8fd-4133-99c8-02f2e2ce422d', 'Sample Blog Title 864', 'sample-blog-864', 'This is the content of Sample Blog 864. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_864.jpg', 9826, '2024-06-13 14:27:22.645386', '2024-06-19 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '29c0545e-4390-4ccb-9b6d-84861e63b4a3', 'f477d597-fae2-4230-b4d9-ece9fdafaa7d', 'Sample Blog Title 865', 'sample-blog-865', 'This is the content of Sample Blog 865. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_865.jpg', 5253, '2024-06-15 14:27:22.645386', '2024-06-18 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '62b76608-f371-4637-bd3e-d4de3c4aeb8a', '5bbebc30-da22-4876-a2f4-04e55c37d11f', 'Sample Blog Title 866', 'sample-blog-866', 'This is the content of Sample Blog 866. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_866.jpg', 9639, '2024-10-27 14:27:22.645386', '2024-11-06 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e704d619-6bd2-4f88-93e9-8b4e5a94c4fc', 'dff097d3-1d58-429f-9261-e0155b99c4e7', 'Sample Blog Title 867', 'sample-blog-867', 'This is the content of Sample Blog 867. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_867.jpg', 6138, '2024-10-22 14:27:22.645386', '2024-10-30 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e96e8a4e-502e-4d45-83ed-6b9650223472', '53b658e1-f8fd-4133-99c8-02f2e2ce422d', 'Sample Blog Title 868', 'sample-blog-868', 'This is the content of Sample Blog 868. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_868.jpg', 2451, '2024-05-13 14:27:22.645386', '2024-05-19 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '0599f167-2025-45ae-b048-b59684761866', '332ca334-80c2-49b3-b742-c7f12d99dfba', 'Sample Blog Title 869', 'sample-blog-869', 'This is the content of Sample Blog 869. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_869.jpg', 4765, '2024-06-03 14:27:22.645386', '2024-06-03 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '72239a2a-5dbb-48fa-9294-1e98d297d880', 'fefcc24d-ad0c-4abd-8db3-f143d2aedc13', 'Sample Blog Title 870', 'sample-blog-870', 'This is the content of Sample Blog 870. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_870.jpg', 5994, '2024-07-22 14:27:22.645386', '2024-07-24 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '933d2ae3-509d-4b4f-9b6e-6a52df6ec134', '103d8eb1-7e4b-4cb1-8daa-5cfa1e3d26ed', 'Sample Blog Title 871', 'sample-blog-871', 'This is the content of Sample Blog 871. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_871.jpg', 2588, '2024-04-29 14:27:22.645386', '2024-04-29 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '24d3dbf6-adb6-4f5d-a6aa-388011803b99', '412d4aec-7bd0-4e29-a237-392d09029ed4', 'Sample Blog Title 872', 'sample-blog-872', 'This is the content of Sample Blog 872. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_872.jpg', 6552, '2024-02-22 14:27:22.645386', '2024-02-24 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'f05b124c-469d-45ea-b384-779ae7bb42dc', 'b9208830-774a-4676-852a-9019cf3e5c63', 'Sample Blog Title 873', 'sample-blog-873', 'This is the content of Sample Blog 873. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_873.jpg', 6703, '2025-02-10 14:27:22.645386', '2025-02-17 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '8b28f69c-dc14-44d3-b142-a368035d73ce', 'bcacbd38-6630-44a4-a5de-66d359987f48', 'Sample Blog Title 874', 'sample-blog-874', 'This is the content of Sample Blog 874. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_874.jpg', 8332, '2024-09-17 14:27:22.645386', '2024-09-18 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '33cc4b88-816d-418d-981f-8caf448d7fc5', '91e6c97a-83d2-4550-b5d6-09c10568cc92', 'Sample Blog Title 875', 'sample-blog-875', 'This is the content of Sample Blog 875. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_875.jpg', 9155, '2024-04-28 14:27:22.645386', '2024-05-07 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '35e45654-993c-41d2-950e-c0ef96297d75', '8b8bc0e4-8066-4b44-850d-abf220c9b056', 'Sample Blog Title 876', 'sample-blog-876', 'This is the content of Sample Blog 876. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_876.jpg', 9777, '2024-11-11 14:27:22.645386', '2024-11-15 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'c8a283bd-fcff-4bd8-9902-f060b5ce038d', '7f905030-8831-4f16-aeff-ddfae4c4e45b', 'Sample Blog Title 877', 'sample-blog-877', 'This is the content of Sample Blog 877. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_877.jpg', 6078, '2024-10-05 14:27:22.645386', '2024-10-14 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '72c2851a-a136-42ec-b920-749a28049303', '2f2d6fcf-e873-4f1f-98ca-c55d51df6ef9', 'Sample Blog Title 878', 'sample-blog-878', 'This is the content of Sample Blog 878. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_878.jpg', 5479, '2024-04-08 14:27:22.645386', '2024-04-16 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '76743dd2-f9fb-4e84-af78-14633981e1ce', 'de7f0e68-e4b5-4d9c-afe6-70a4ea3e0653', 'Sample Blog Title 879', 'sample-blog-879', 'This is the content of Sample Blog 879. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_879.jpg', 3169, '2025-02-05 14:27:22.645386', '2025-02-08 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '9f1a0cf3-623c-4578-9c11-ae7f66248344', 'e013d6b2-262b-4c70-976f-b082b6215570', 'Sample Blog Title 880', 'sample-blog-880', 'This is the content of Sample Blog 880. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_880.jpg', 7330, '2024-06-10 14:27:22.645386', '2024-06-18 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd7de296a-53eb-4b37-9b1e-39c55439f147', 'dff097d3-1d58-429f-9261-e0155b99c4e7', 'Sample Blog Title 881', 'sample-blog-881', 'This is the content of Sample Blog 881. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_881.jpg', 4085, '2024-08-26 14:27:22.645386', '2024-09-03 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e582ec8c-362e-45a0-82d3-98374707072b', '40d7a621-d8d1-4bcb-9ab2-be3b4fc2d3ab', 'Sample Blog Title 882', 'sample-blog-882', 'This is the content of Sample Blog 882. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_882.jpg', 9385, '2024-03-16 14:27:22.645386', '2024-03-21 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '042f01ce-9965-45c8-9be4-50a9ea98f969', '9c2fe57a-858b-4f54-83d1-16dbf396b752', 'Sample Blog Title 883', 'sample-blog-883', 'This is the content of Sample Blog 883. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_883.jpg', 6754, '2024-11-17 14:27:22.645386', '2024-11-17 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '786862cc-4df7-418b-8b42-8902ac71a2a1', 'dff097d3-1d58-429f-9261-e0155b99c4e7', 'Sample Blog Title 884', 'sample-blog-884', 'This is the content of Sample Blog 884. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_884.jpg', 2156, '2024-10-24 14:27:22.645386', '2024-11-01 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'bfef6355-8406-43b4-8bde-d27a772b03d9', '40d7a621-d8d1-4bcb-9ab2-be3b4fc2d3ab', 'Sample Blog Title 885', 'sample-blog-885', 'This is the content of Sample Blog 885. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_885.jpg', 1301, '2025-01-22 14:27:22.645386', '2025-02-01 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '7e0c14f0-009c-4367-a11d-77118fb67f6e', 'd6576192-4494-48ec-89bb-1a018450876d', 'Sample Blog Title 886', 'sample-blog-886', 'This is the content of Sample Blog 886. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_886.jpg', 5808, '2024-06-14 14:27:22.645386', '2024-06-17 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'b6540951-f448-473d-8994-f1ebed61db4c', 'b9208830-774a-4676-852a-9019cf3e5c63', 'Sample Blog Title 887', 'sample-blog-887', 'This is the content of Sample Blog 887. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_887.jpg', 4591, '2025-01-12 14:27:22.645386', '2025-01-12 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '2a1ede4e-75c1-4c88-81e5-3883fb64be5c', 'ebe43708-3547-4832-91d0-26a62dd6564d', 'Sample Blog Title 888', 'sample-blog-888', 'This is the content of Sample Blog 888. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_888.jpg', 4698, '2024-06-21 14:27:22.645386', '2024-06-24 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '01876293-d7fc-4d81-9196-eae4c645d686', 'c2791e81-4b59-4fc5-bb30-d92815d98716', 'Sample Blog Title 889', 'sample-blog-889', 'This is the content of Sample Blog 889. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_889.jpg', 1917, '2024-08-22 14:27:22.645386', '2024-08-30 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '3850b9a5-f7e8-46dc-883c-41d4a4b2a288', '10919c49-5177-4a73-a703-03835738f105', 'Sample Blog Title 890', 'sample-blog-890', 'This is the content of Sample Blog 890. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_890.jpg', 6931, '2024-04-01 14:27:22.645386', '2024-04-02 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '51921740-2c1b-4601-b9f8-b85044d9467d', '5fa7e24b-fcee-48d8-b8b1-1114b9b2094d', 'Sample Blog Title 891', 'sample-blog-891', 'This is the content of Sample Blog 891. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_891.jpg', 2706, '2024-05-10 14:27:22.645386', '2024-05-17 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'a1332d14-fc70-416f-b745-45a2f5ba1509', 'd6576192-4494-48ec-89bb-1a018450876d', 'Sample Blog Title 892', 'sample-blog-892', 'This is the content of Sample Blog 892. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_892.jpg', 2294, '2024-02-26 14:27:22.645386', '2024-03-05 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'b5edec69-a756-48d6-935e-e5f2760e3f7f', '92f84112-7d4d-448b-818e-b2b74f396858', 'Sample Blog Title 893', 'sample-blog-893', 'This is the content of Sample Blog 893. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_893.jpg', 8444, '2025-02-09 14:27:22.645386', '2025-02-18 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '4ad7af3d-21b7-4d46-8b10-1b601719fd56', '332ca334-80c2-49b3-b742-c7f12d99dfba', 'Sample Blog Title 894', 'sample-blog-894', 'This is the content of Sample Blog 894. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_894.jpg', 3732, '2024-02-24 14:27:22.645386', '2024-03-03 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '8d160f16-285f-4eda-9b74-a2e1665345c7', '0c755f0d-52fa-42f2-bd4d-187d7822e9c9', 'Sample Blog Title 895', 'sample-blog-895', 'This is the content of Sample Blog 895. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_895.jpg', 9114, '2024-09-11 14:27:22.645386', '2024-09-16 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '8f787382-1bfc-4d81-95c3-47a799802970', '7f905030-8831-4f16-aeff-ddfae4c4e45b', 'Sample Blog Title 896', 'sample-blog-896', 'This is the content of Sample Blog 896. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_896.jpg', 7057, '2024-04-16 14:27:22.645386', '2024-04-22 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '62c28e66-01b1-46c5-bc4b-73c5e2296d6d', '9d78a484-6190-4924-b52b-89a82f840a7f', 'Sample Blog Title 897', 'sample-blog-897', 'This is the content of Sample Blog 897. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_897.jpg', 6905, '2024-12-19 14:27:22.645386', '2024-12-21 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '384560cc-c045-4cdf-9b1e-5ae0761ef949', 'f391768c-7823-4784-b04d-a38a27b88967', 'Sample Blog Title 898', 'sample-blog-898', 'This is the content of Sample Blog 898. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_898.jpg', 8405, '2024-11-01 14:27:22.645386', '2024-11-10 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '1c612b21-5dc7-4d05-bea7-0717ef285bfe', 'd4ef8972-f69c-40c9-a7d3-bc0ef5868391', 'Sample Blog Title 899', 'sample-blog-899', 'This is the content of Sample Blog 899. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_899.jpg', 8799, '2024-11-23 14:27:22.645386', '2024-12-02 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '7129378d-5d9f-48a5-b2b2-affbf5cadca0', '51e04f09-ce7a-49aa-8892-269a46065300', 'Sample Blog Title 900', 'sample-blog-900', 'This is the content of Sample Blog 900. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_900.jpg', 3815, '2025-01-07 14:27:22.645386', '2025-01-15 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '62087174-05ba-4107-a221-6a0631fcd986', '4e99bfb6-a958-4f2f-a3b1-402cd84fdf5b', 'Sample Blog Title 901', 'sample-blog-901', 'This is the content of Sample Blog 901. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_901.jpg', 3857, '2025-01-03 14:27:22.645386', '2025-01-07 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '8f09fe67-2645-4057-b9e8-6941db6bd2d9', 'f6cda0db-6d4b-4050-bfae-f360427e31ce', 'Sample Blog Title 902', 'sample-blog-902', 'This is the content of Sample Blog 902. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_902.jpg', 7243, '2024-06-05 14:27:22.645386', '2024-06-15 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'ab82154d-93ac-4e48-9c94-025e861b0aa8', '8cb78e82-a9c9-4550-9861-a28a3b4c0342', 'Sample Blog Title 903', 'sample-blog-903', 'This is the content of Sample Blog 903. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_903.jpg', 9148, '2024-11-06 14:27:22.645386', '2024-11-09 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '91c9c8c5-44df-4684-9434-08171cccb3a9', '4ae05754-eef2-4aad-82df-794ab3c91930', 'Sample Blog Title 904', 'sample-blog-904', 'This is the content of Sample Blog 904. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_904.jpg', 5509, '2024-10-28 14:27:22.645386', '2024-11-07 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '31e1622f-53c7-4de2-9375-998115bac868', 'd4ef8972-f69c-40c9-a7d3-bc0ef5868391', 'Sample Blog Title 905', 'sample-blog-905', 'This is the content of Sample Blog 905. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_905.jpg', 5059, '2024-10-29 14:27:22.645386', '2024-10-30 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '9bd85ca3-ef91-43c3-830b-e833d75da43b', '89139764-3150-4ea5-b980-61e8585f3a41', 'Sample Blog Title 906', 'sample-blog-906', 'This is the content of Sample Blog 906. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_906.jpg', 3923, '2024-03-24 14:27:22.645386', '2024-03-27 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '08d6bc8e-56ef-4d0b-9e18-a0ac3c69f291', 'd9588d50-5f13-4b66-a531-e4e290f9ac0f', 'Sample Blog Title 907', 'sample-blog-907', 'This is the content of Sample Blog 907. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_907.jpg', 2460, '2024-11-10 14:27:22.645386', '2024-11-11 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'ffb0b89f-c48f-4c38-8507-987c2a53563b', '5ca62b37-1b6e-4872-8fbd-e6163520ef13', 'Sample Blog Title 908', 'sample-blog-908', 'This is the content of Sample Blog 908. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_908.jpg', 9827, '2024-09-01 14:27:22.645386', '2024-09-01 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '42865d32-83f1-4414-b284-95bdb781a6b0', '6d9d30fd-e2ed-4a2f-9034-8531d7723e11', 'Sample Blog Title 909', 'sample-blog-909', 'This is the content of Sample Blog 909. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_909.jpg', 5549, '2024-10-31 14:27:22.645386', '2024-11-09 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'a4c1bfe1-6f8c-4f62-a2ec-2b27ddd77cd8', '699a0f8c-a70b-4e7c-95da-af2a1a874135', 'Sample Blog Title 910', 'sample-blog-910', 'This is the content of Sample Blog 910. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_910.jpg', 4751, '2024-03-04 14:27:22.645386', '2024-03-08 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '844f06ed-8686-428b-b2d2-e2635f628062', 'e013d6b2-262b-4c70-976f-b082b6215570', 'Sample Blog Title 911', 'sample-blog-911', 'This is the content of Sample Blog 911. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_911.jpg', 4522, '2024-05-28 14:27:22.645386', '2024-05-29 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'bcf9b89f-124e-4412-b0bf-5c07c302d9c0', '4b750317-7e0b-4986-beb9-1df4ed3ad6f2', 'Sample Blog Title 912', 'sample-blog-912', 'This is the content of Sample Blog 912. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_912.jpg', 7544, '2024-07-28 14:27:22.645386', '2024-07-31 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '6bc7e681-ef31-4d68-bb73-a5f44439dff5', 'ce8329db-2b4a-48fd-94cc-767f8fba7c91', 'Sample Blog Title 913', 'sample-blog-913', 'This is the content of Sample Blog 913. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_913.jpg', 7360, '2024-06-14 14:27:22.645386', '2024-06-21 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '74f17df8-8da6-4c6c-90a0-ce3c51daaf21', '0c755f0d-52fa-42f2-bd4d-187d7822e9c9', 'Sample Blog Title 914', 'sample-blog-914', 'This is the content of Sample Blog 914. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_914.jpg', 6904, '2024-12-04 14:27:22.645386', '2024-12-09 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'cc6baf42-00f2-444d-b8e7-9787383ad5bf', '966ccd39-4d29-4318-95be-96f719f8576f', 'Sample Blog Title 915', 'sample-blog-915', 'This is the content of Sample Blog 915. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_915.jpg', 6959, '2024-05-03 14:27:22.645386', '2024-05-06 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e3f381cb-fa55-4ad2-a719-2d1d1660d74e', '7223bd3a-e482-4d14-bd9f-552f60622fee', 'Sample Blog Title 916', 'sample-blog-916', 'This is the content of Sample Blog 916. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_916.jpg', 2702, '2024-07-12 14:27:22.645386', '2024-07-12 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '177d9748-4e54-48b7-8dff-16570d98031d', 'e8579452-e2ab-48f4-8681-50a69c865547', 'Sample Blog Title 917', 'sample-blog-917', 'This is the content of Sample Blog 917. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_917.jpg', 2572, '2024-10-26 14:27:22.645386', '2024-10-28 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '1064d700-4834-4947-93d8-69f49a43cb46', 'bf95245c-cf8f-46e7-8660-08e4e2e3d4a2', 'Sample Blog Title 918', 'sample-blog-918', 'This is the content of Sample Blog 918. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_918.jpg', 7367, '2024-04-18 14:27:22.645386', '2024-04-23 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'baa3e053-5441-445d-9742-e7f5c641e5ba', '5ca62b37-1b6e-4872-8fbd-e6163520ef13', 'Sample Blog Title 919', 'sample-blog-919', 'This is the content of Sample Blog 919. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_919.jpg', 2929, '2024-12-18 14:27:22.645386', '2024-12-19 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '7d87b9fd-3224-4ed9-ba7c-60564b803fde', 'd6a6524f-a0b3-4e39-b3b4-faae23adaf29', 'Sample Blog Title 920', 'sample-blog-920', 'This is the content of Sample Blog 920. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_920.jpg', 3849, '2024-03-25 14:27:22.645386', '2024-04-04 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd7df0a5d-0b3a-432a-b2b9-f2cc56a420c7', '8cb61520-fd74-4e18-8c82-668c6d088264', 'Sample Blog Title 921', 'sample-blog-921', 'This is the content of Sample Blog 921. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_921.jpg', 4063, '2024-05-06 14:27:22.645386', '2024-05-15 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '65ace181-6225-48fc-9d0d-1a210b0daad0', '0c755f0d-52fa-42f2-bd4d-187d7822e9c9', 'Sample Blog Title 922', 'sample-blog-922', 'This is the content of Sample Blog 922. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_922.jpg', 4218, '2025-01-10 14:27:22.645386', '2025-01-13 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '96dbd041-3713-4439-8c15-b2ded2c3be8f', 'de7f0e68-e4b5-4d9c-afe6-70a4ea3e0653', 'Sample Blog Title 923', 'sample-blog-923', 'This is the content of Sample Blog 923. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_923.jpg', 4576, '2024-04-05 14:27:22.645386', '2024-04-08 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '03ed30f3-e085-4976-9e95-e888d74b5ff8', '89139764-3150-4ea5-b980-61e8585f3a41', 'Sample Blog Title 924', 'sample-blog-924', 'This is the content of Sample Blog 924. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_924.jpg', 4933, '2024-04-07 14:27:22.645386', '2024-04-10 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '628b77ed-a2c5-4eb6-89eb-da8eabae870f', '2695ae5a-caf7-4810-b901-625cc6c712ca', 'Sample Blog Title 925', 'sample-blog-925', 'This is the content of Sample Blog 925. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_925.jpg', 5385, '2024-03-05 14:27:22.645386', '2024-03-07 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'c25c7da8-532c-4f18-abcc-691fd769421b', '8b36ef5f-2f60-46bd-9ca0-dafe04daaefa', 'Sample Blog Title 926', 'sample-blog-926', 'This is the content of Sample Blog 926. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_926.jpg', 8946, '2024-08-27 14:27:22.645386', '2024-09-04 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '30254cc5-778d-4080-b387-b9b414a55346', '8cb61520-fd74-4e18-8c82-668c6d088264', 'Sample Blog Title 927', 'sample-blog-927', 'This is the content of Sample Blog 927. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_927.jpg', 2226, '2024-11-19 14:27:22.645386', '2024-11-27 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '54132f49-fbed-45c4-ad61-ce143d64c554', '966ccd39-4d29-4318-95be-96f719f8576f', 'Sample Blog Title 928', 'sample-blog-928', 'This is the content of Sample Blog 928. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_928.jpg', 5657, '2025-02-05 14:27:22.645386', '2025-02-09 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '72595e92-007e-4942-9be7-9b6a3c8bc4dc', '8b8bc0e4-8066-4b44-850d-abf220c9b056', 'Sample Blog Title 929', 'sample-blog-929', 'This is the content of Sample Blog 929. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_929.jpg', 2558, '2024-08-04 14:27:22.645386', '2024-08-07 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '48d93a12-1160-432c-94e9-8c0798e4a056', '10919c49-5177-4a73-a703-03835738f105', 'Sample Blog Title 930', 'sample-blog-930', 'This is the content of Sample Blog 930. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_930.jpg', 9228, '2024-06-30 14:27:22.645386', '2024-07-03 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e29f06cd-f4a6-4da5-ac79-9797bb53e2ed', '5ff32bbc-b5c1-411d-9687-caf3f505df2d', 'Sample Blog Title 931', 'sample-blog-931', 'This is the content of Sample Blog 931. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_931.jpg', 7575, '2024-08-01 14:27:22.645386', '2024-08-07 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'bfb792b8-14b8-455f-a635-6a01a339fccc', 'b63b3614-0210-41af-a843-9775c3c06121', 'Sample Blog Title 932', 'sample-blog-932', 'This is the content of Sample Blog 932. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_932.jpg', 7693, '2024-02-17 14:27:22.645386', '2024-02-24 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '7f55e9d1-9af8-4407-af73-6ff4fa393d73', '8cb78e82-a9c9-4550-9861-a28a3b4c0342', 'Sample Blog Title 933', 'sample-blog-933', 'This is the content of Sample Blog 933. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_933.jpg', 5790, '2025-01-21 14:27:22.645386', '2025-01-23 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '28af3bea-253e-4306-a126-26b7a686a8cb', 'd9588d50-5f13-4b66-a531-e4e290f9ac0f', 'Sample Blog Title 934', 'sample-blog-934', 'This is the content of Sample Blog 934. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_934.jpg', 9017, '2024-10-15 14:27:22.645386', '2024-10-16 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e71e5fb8-9480-4d90-928c-48060be03268', '89139764-3150-4ea5-b980-61e8585f3a41', 'Sample Blog Title 935', 'sample-blog-935', 'This is the content of Sample Blog 935. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_935.jpg', 6859, '2024-03-27 14:27:22.645386', '2024-03-31 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '1c007dcb-b085-444a-8cd4-a6dc7c6f5803', '7f905030-8831-4f16-aeff-ddfae4c4e45b', 'Sample Blog Title 936', 'sample-blog-936', 'This is the content of Sample Blog 936. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_936.jpg', 3256, '2024-10-06 14:27:22.645386', '2024-10-13 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '75f5d578-6311-458d-b5f9-0d3e6d2da643', '4ae05754-eef2-4aad-82df-794ab3c91930', 'Sample Blog Title 937', 'sample-blog-937', 'This is the content of Sample Blog 937. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_937.jpg', 2148, '2024-12-31 14:27:22.645386', '2025-01-05 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'a552baeb-29f0-4fd6-83d1-d062b3f1b262', '4ae05754-eef2-4aad-82df-794ab3c91930', 'Sample Blog Title 938', 'sample-blog-938', 'This is the content of Sample Blog 938. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_938.jpg', 5303, '2024-04-11 14:27:22.645386', '2024-04-13 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '0b00ceec-8a20-4ada-a652-56b0d9e6af1c', 'd6d495d6-719f-4d8a-9237-9a823d1728b3', 'Sample Blog Title 939', 'sample-blog-939', 'This is the content of Sample Blog 939. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_939.jpg', 7256, '2024-02-24 14:27:22.645386', '2024-02-28 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '1545c5ec-a94e-4f84-abd7-0b2d202e9f27', 'e988e97f-169c-4a2e-ae7d-06d0928a1faa', 'Sample Blog Title 940', 'sample-blog-940', 'This is the content of Sample Blog 940. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_940.jpg', 9754, '2024-11-01 14:27:22.645386', '2024-11-03 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'b5ab3ec6-49fc-4a89-8806-70e4f24b47c3', '5ff32bbc-b5c1-411d-9687-caf3f505df2d', 'Sample Blog Title 941', 'sample-blog-941', 'This is the content of Sample Blog 941. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_941.jpg', 8107, '2025-01-31 14:27:22.645386', '2025-02-08 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'b2ca3a6b-a6e2-4d77-b063-3326ed2ac284', '4ae05754-eef2-4aad-82df-794ab3c91930', 'Sample Blog Title 942', 'sample-blog-942', 'This is the content of Sample Blog 942. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_942.jpg', 9008, '2024-10-08 14:27:22.645386', '2024-10-08 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'bcdd98e2-6304-434d-ac92-c4c0787fef4e', '781ec698-ba4b-4723-a3c9-8b0694842e54', 'Sample Blog Title 943', 'sample-blog-943', 'This is the content of Sample Blog 943. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_943.jpg', 5440, '2024-06-28 14:27:22.645386', '2024-07-04 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '6a6bdc2e-9e92-4a74-b914-7a2206fdacb6', '8b36ef5f-2f60-46bd-9ca0-dafe04daaefa', 'Sample Blog Title 944', 'sample-blog-944', 'This is the content of Sample Blog 944. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_944.jpg', 7373, '2024-10-23 14:27:22.645386', '2024-10-26 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'fbd2757a-8855-4b43-83fa-06a002b5b656', 'dff097d3-1d58-429f-9261-e0155b99c4e7', 'Sample Blog Title 945', 'sample-blog-945', 'This is the content of Sample Blog 945. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_945.jpg', 9366, '2024-05-11 14:27:22.645386', '2024-05-18 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '3e5080b1-c7b3-4763-8f05-ff59bb13507c', '71812813-de60-483c-8faa-f640965b23f5', 'Sample Blog Title 946', 'sample-blog-946', 'This is the content of Sample Blog 946. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_946.jpg', 9063, '2025-01-26 14:27:22.645386', '2025-02-02 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '265a98d4-b35a-48da-87c2-555c793d70a9', '572e96a6-e620-4318-88e7-dd75551e9878', 'Sample Blog Title 947', 'sample-blog-947', 'This is the content of Sample Blog 947. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_947.jpg', 877, '2024-12-12 14:27:22.645386', '2024-12-18 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e210c46e-0899-4d22-be07-b7dae3f917a0', 'f391768c-7823-4784-b04d-a38a27b88967', 'Sample Blog Title 948', 'sample-blog-948', 'This is the content of Sample Blog 948. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_948.jpg', 1787, '2024-05-21 14:27:22.645386', '2024-05-28 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '136c641d-9294-4bba-b8bd-31301334d87e', 'a556f3dd-12bd-44c4-9a5a-49621b297736', 'Sample Blog Title 949', 'sample-blog-949', 'This is the content of Sample Blog 949. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_949.jpg', 1476, '2024-08-04 14:27:22.645386', '2024-08-07 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '0b3d10ae-50d5-4590-9e87-033c075b7d9f', '5092b13d-a468-407a-a609-da88631cbdc7', 'Sample Blog Title 950', 'sample-blog-950', 'This is the content of Sample Blog 950. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_950.jpg', 6601, '2024-05-09 14:27:22.645386', '2024-05-19 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '528f692f-e4a1-4c3d-b5e6-042451530a5e', '699a0f8c-a70b-4e7c-95da-af2a1a874135', 'Sample Blog Title 951', 'sample-blog-951', 'This is the content of Sample Blog 951. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_951.jpg', 1765, '2024-05-01 14:27:22.645386', '2024-05-01 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'a1a84a31-087a-425a-b3df-c09a4e0cd3f9', '5ff32bbc-b5c1-411d-9687-caf3f505df2d', 'Sample Blog Title 952', 'sample-blog-952', 'This is the content of Sample Blog 952. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_952.jpg', 9597, '2024-09-24 14:27:22.645386', '2024-09-26 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'a046441c-a815-4e23-9e16-886214171f83', 'c2791e81-4b59-4fc5-bb30-d92815d98716', 'Sample Blog Title 953', 'sample-blog-953', 'This is the content of Sample Blog 953. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_953.jpg', 6513, '2024-11-14 14:27:22.645386', '2024-11-24 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '59d6fc59-d65a-4e75-9666-9d676c09f16c', '3f9017fc-ddc0-4467-a609-672bef2ab6e1', 'Sample Blog Title 954', 'sample-blog-954', 'This is the content of Sample Blog 954. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_954.jpg', 6509, '2024-07-12 14:27:22.645386', '2024-07-12 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '272133f9-8685-40ed-8da3-f23e1ed6208e', '9c2fe57a-858b-4f54-83d1-16dbf396b752', 'Sample Blog Title 955', 'sample-blog-955', 'This is the content of Sample Blog 955. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_955.jpg', 3587, '2024-06-18 14:27:22.645386', '2024-06-19 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '3a342bdd-da74-423c-bfc0-05be253c4007', '6e7a436a-a896-47bf-8160-e81a5107f3ed', 'Sample Blog Title 956', 'sample-blog-956', 'This is the content of Sample Blog 956. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_956.jpg', 9684, '2024-10-05 14:27:22.645386', '2024-10-15 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '7ff7b460-64cb-42fa-8596-71ebe1b7ddc8', 'f436ba40-ba79-40ae-90d9-1c7cd5cace8d', 'Sample Blog Title 957', 'sample-blog-957', 'This is the content of Sample Blog 957. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_957.jpg', 5546, '2024-10-06 14:27:22.645386', '2024-10-16 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '700e3d72-1957-444f-9008-c988b8ce8d7f', '10919c49-5177-4a73-a703-03835738f105', 'Sample Blog Title 958', 'sample-blog-958', 'This is the content of Sample Blog 958. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_958.jpg', 5687, '2024-05-27 14:27:22.645386', '2024-05-31 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'f4df0484-59a7-492d-aea7-8214651c02df', '8ff4183f-8f6e-4ccb-9ab5-2ad2b0878ecb', 'Sample Blog Title 959', 'sample-blog-959', 'This is the content of Sample Blog 959. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_959.jpg', 6609, '2024-02-18 14:27:22.645386', '2024-02-24 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '31bced0c-59bd-427e-b6ea-2abb195ecea6', 'dff097d3-1d58-429f-9261-e0155b99c4e7', 'Sample Blog Title 960', 'sample-blog-960', 'This is the content of Sample Blog 960. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_960.jpg', 9245, '2024-11-18 14:27:22.645386', '2024-11-25 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'eac56d70-d89f-452a-8613-c1c2aed41493', '13d2882b-17c5-47b9-bbe3-736984976985', 'Sample Blog Title 961', 'sample-blog-961', 'This is the content of Sample Blog 961. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_961.jpg', 2095, '2025-02-08 14:27:22.645386', '2025-02-18 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd0a1f463-ff74-4244-9c6d-6c19556a64ed', 'bf95245c-cf8f-46e7-8660-08e4e2e3d4a2', 'Sample Blog Title 962', 'sample-blog-962', 'This is the content of Sample Blog 962. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_962.jpg', 7167, '2024-03-15 14:27:22.645386', '2024-03-17 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '8edaeb5e-5532-49a9-98eb-be28346f8600', 'e013d6b2-262b-4c70-976f-b082b6215570', 'Sample Blog Title 963', 'sample-blog-963', 'This is the content of Sample Blog 963. It contains technical information.',
        '{golang,microservices,API}', 'https://example.com/images/blog_963.jpg', 3058, '2024-06-13 14:27:22.645386', '2024-06-15 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'c2da71b4-b3d7-40f8-b22a-6dc700ae7436', '58854fc5-18b1-4e2a-8605-4ccdd8950188', 'Sample Blog Title 964', 'sample-blog-964', 'This is the content of Sample Blog 964. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_964.jpg', 4025, '2024-12-13 14:27:22.645386', '2024-12-22 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '8fc62484-925d-42c0-ae7f-d51f40505f4b', 'c2791e81-4b59-4fc5-bb30-d92815d98716', 'Sample Blog Title 965', 'sample-blog-965', 'This is the content of Sample Blog 965. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_965.jpg', 7827, '2024-09-24 14:27:22.645386', '2024-10-03 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'c551f0e2-5262-49f0-9d9e-98000ea0dd3a', '40d7a621-d8d1-4bcb-9ab2-be3b4fc2d3ab', 'Sample Blog Title 966', 'sample-blog-966', 'This is the content of Sample Blog 966. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_966.jpg', 1962, '2024-06-08 14:27:22.645386', '2024-06-12 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '8ccd4aae-b026-4cc3-b8f5-24190de733be', '32fd4910-c648-4a50-b86b-9195d25d3461', 'Sample Blog Title 967', 'sample-blog-967', 'This is the content of Sample Blog 967. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_967.jpg', 6918, '2024-09-15 14:27:22.645386', '2024-09-15 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'a6268f7f-b3de-43fa-b8d8-d90c70206066', 'a1b824e7-ffa2-4deb-a3fa-0aed799703ab', 'Sample Blog Title 968', 'sample-blog-968', 'This is the content of Sample Blog 968. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_968.jpg', 1019, '2024-04-06 14:27:22.645386', '2024-04-12 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'f7b4dfd7-c273-4eda-b857-fed77f0d8686', 'a556f3dd-12bd-44c4-9a5a-49621b297736', 'Sample Blog Title 969', 'sample-blog-969', 'This is the content of Sample Blog 969. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_969.jpg', 50, '2024-04-04 14:27:22.645386', '2024-04-07 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '98045460-a0fb-4591-9c7f-823572f309f2', '2038934d-d590-4e9f-bd2b-f46cc1acf46d', 'Sample Blog Title 970', 'sample-blog-970', 'This is the content of Sample Blog 970. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_970.jpg', 9802, '2024-02-27 14:27:22.645386', '2024-03-08 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '81778d51-6dca-4503-9c58-1e7ff1ae5ec5', 'bf95245c-cf8f-46e7-8660-08e4e2e3d4a2', 'Sample Blog Title 971', 'sample-blog-971', 'This is the content of Sample Blog 971. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_971.jpg', 519, '2024-10-10 14:27:22.645386', '2024-10-18 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'ef3a57b0-2ef2-4427-9e02-f547e9ea9e8e', '2038934d-d590-4e9f-bd2b-f46cc1acf46d', 'Sample Blog Title 972', 'sample-blog-972', 'This is the content of Sample Blog 972. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_972.jpg', 1296, '2024-11-28 14:27:22.645386', '2024-11-29 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '3f866204-f1a3-4b4d-832e-b031db3786a6', '10919c49-5177-4a73-a703-03835738f105', 'Sample Blog Title 973', 'sample-blog-973', 'This is the content of Sample Blog 973. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_973.jpg', 636, '2024-09-20 14:27:22.645386', '2024-09-30 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd14ba5e5-5b47-49b0-88f4-39e932a7d26f', '26f058a6-7f8a-4e82-aae5-10137c657f5e', 'Sample Blog Title 974', 'sample-blog-974', 'This is the content of Sample Blog 974. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_974.jpg', 5060, '2024-08-15 14:27:22.645386', '2024-08-22 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '182290d4-72fc-4b4d-b0df-345265af9ba9', '71c040a1-4ffd-4e48-8ae9-d1579f39a9fa', 'Sample Blog Title 975', 'sample-blog-975', 'This is the content of Sample Blog 975. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_975.jpg', 6777, '2024-11-09 14:27:22.645386', '2024-11-11 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'def887d3-d2fd-4a67-b07d-a9c5dce23e87', '2f2d6fcf-e873-4f1f-98ca-c55d51df6ef9', 'Sample Blog Title 976', 'sample-blog-976', 'This is the content of Sample Blog 976. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_976.jpg', 450, '2024-04-14 14:27:22.645386', '2024-04-16 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '5e6646d9-db8b-4f7e-9e7f-949d658c256f', 'd6d495d6-719f-4d8a-9237-9a823d1728b3', 'Sample Blog Title 977', 'sample-blog-977', 'This is the content of Sample Blog 977. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_977.jpg', 3442, '2024-03-20 14:27:22.645386', '2024-03-23 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd37d2c02-28ec-4c0b-82e8-504fd909dc57', '40d7a621-d8d1-4bcb-9ab2-be3b4fc2d3ab', 'Sample Blog Title 978', 'sample-blog-978', 'This is the content of Sample Blog 978. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_978.jpg', 2569, '2024-04-15 14:27:22.645386', '2024-04-20 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '7ca77442-5b68-409d-b721-6686e3b5c1d1', '13d2882b-17c5-47b9-bbe3-736984976985', 'Sample Blog Title 979', 'sample-blog-979', 'This is the content of Sample Blog 979. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_979.jpg', 8450, '2024-10-25 14:27:22.645386', '2024-10-30 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '09ffabc4-5018-479e-bcce-fd25e2cc44ec', '5fa7e24b-fcee-48d8-b8b1-1114b9b2094d', 'Sample Blog Title 980', 'sample-blog-980', 'This is the content of Sample Blog 980. It contains technical information.',
        '{tech,AI,ML}', 'https://example.com/images/blog_980.jpg', 627, '2024-02-21 14:27:22.645386', '2024-02-21 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'abf9d2bf-12fc-417a-97b0-61a1052c7880', 'edda8670-c8d9-4fa9-acb0-9d7e69e1bca9', 'Sample Blog Title 981', 'sample-blog-981', 'This is the content of Sample Blog 981. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_981.jpg', 5681, '2024-04-16 14:27:22.645386', '2024-04-26 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'f561a6fe-92aa-4d6a-9c07-f2df08e310f8', '4d132b27-8363-4bb0-8618-360068914d24', 'Sample Blog Title 982', 'sample-blog-982', 'This is the content of Sample Blog 982. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_982.jpg', 3690, '2025-01-22 14:27:22.645386', '2025-01-27 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '157b9ab4-897a-419d-90a7-6d313767ddd4', '5ff32bbc-b5c1-411d-9687-caf3f505df2d', 'Sample Blog Title 983', 'sample-blog-983', 'This is the content of Sample Blog 983. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_983.jpg', 9269, '2024-03-19 14:27:22.645386', '2024-03-29 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '5a0c48fa-a54f-4a51-9e22-09decf7733b5', '10919c49-5177-4a73-a703-03835738f105', 'Sample Blog Title 984', 'sample-blog-984', 'This is the content of Sample Blog 984. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_984.jpg', 668, '2024-10-05 14:27:22.645386', '2024-10-08 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '4cef2feb-2441-4291-a405-8d4122c96f16', '0c755f0d-52fa-42f2-bd4d-187d7822e9c9', 'Sample Blog Title 985', 'sample-blog-985', 'This is the content of Sample Blog 985. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_985.jpg', 4435, '2024-10-03 14:27:22.645386', '2024-10-11 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'e6b8f883-de5d-4431-b08d-35ccc1c39b0c', '966ccd39-4d29-4318-95be-96f719f8576f', 'Sample Blog Title 986', 'sample-blog-986', 'This is the content of Sample Blog 986. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_986.jpg', 6361, '2024-03-15 14:27:22.645386', '2024-03-19 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'dc707207-8805-4ed3-b837-240ccf8ab3ae', '040e0ba8-42e8-49b0-b72c-00a29329c22c', 'Sample Blog Title 987', 'sample-blog-987', 'This is the content of Sample Blog 987. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_987.jpg', 5617, '2024-04-11 14:27:22.645386', '2024-04-21 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'bb48f8fd-bff0-4c23-89b4-0835f988c138', '1288136e-65ae-4cab-96ac-1dcf147f94e4', 'Sample Blog Title 988', 'sample-blog-988', 'This is the content of Sample Blog 988. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_988.jpg', 5188, '2024-10-27 14:27:22.645386', '2024-11-06 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '014a16e4-4665-415d-9415-151617d7f753', '4d132b27-8363-4bb0-8618-360068914d24', 'Sample Blog Title 989', 'sample-blog-989', 'This is the content of Sample Blog 989. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_989.jpg', 9501, '2024-02-26 14:27:22.645386', '2024-02-28 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'a1edef23-36d3-4cdb-afcf-c46d50f16d5a', '71812813-de60-483c-8faa-f640965b23f5', 'Sample Blog Title 990', 'sample-blog-990', 'This is the content of Sample Blog 990. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_990.jpg', 6012, '2024-03-18 14:27:22.645386', '2024-03-25 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'aa8ce2d6-ff6f-4c27-a19f-f467038a827e', '00504c3d-f629-42f5-b87b-b9014ef5d973', 'Sample Blog Title 991', 'sample-blog-991', 'This is the content of Sample Blog 991. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_991.jpg', 7067, '2024-11-27 14:27:22.645386', '2024-12-06 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'b9841db1-b975-4e97-9887-e9c7169911ba', '10919c49-5177-4a73-a703-03835738f105', 'Sample Blog Title 992', 'sample-blog-992', 'This is the content of Sample Blog 992. It contains technical information.',
        '{python,Django,Flask}', 'https://example.com/images/blog_992.jpg', 6499, '2024-10-26 14:27:22.645386', '2024-10-27 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '75ec495d-05f6-42c4-848f-c0129dc156c6', 'f436ba40-ba79-40ae-90d9-1c7cd5cace8d', 'Sample Blog Title 993', 'sample-blog-993', 'This is the content of Sample Blog 993. It contains technical information.',
        '{devops,Docker,CI/CD}', 'https://example.com/images/blog_993.jpg', 4712, '2024-04-30 14:27:22.645386', '2024-05-09 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'b123b97a-3aeb-40cc-bf0a-ad62b2a7f189', 'd07a734b-df00-4d1d-a15f-fbfe418fe807', 'Sample Blog Title 994', 'sample-blog-994', 'This is the content of Sample Blog 994. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_994.jpg', 1086, '2024-07-21 14:27:22.645386', '2024-07-23 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'b161ac0a-f107-454b-b70f-2d0738b28fba', '7f905030-8831-4f16-aeff-ddfae4c4e45b', 'Sample Blog Title 995', 'sample-blog-995', 'This is the content of Sample Blog 995. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_995.jpg', 6305, '2024-03-25 14:27:22.645386', '2024-03-27 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '867fa7e5-41ac-4e14-94d2-3bd90181f0e4', '26f058a6-7f8a-4e82-aae5-10137c657f5e', 'Sample Blog Title 996', 'sample-blog-996', 'This is the content of Sample Blog 996. It contains technical information.',
        '{cloud,AWS,Kubernetes}', 'https://example.com/images/blog_996.jpg', 3965, '2024-07-15 14:27:22.645386', '2024-07-24 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '56db9933-36ed-4a75-aad4-f979307fb220', '92f84112-7d4d-448b-818e-b2b74f396858', 'Sample Blog Title 997', 'sample-blog-997', 'This is the content of Sample Blog 997. It contains technical information.',
        '{webdev,React,NodeJS}', 'https://example.com/images/blog_997.jpg', 4464, '2024-06-06 14:27:22.645386', '2024-06-13 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'abbf6c1a-724f-4443-b4fc-565d1674f25a', '91829ca9-91b2-4586-92d4-3cbdfc515b07', 'Sample Blog Title 998', 'sample-blog-998', 'This is the content of Sample Blog 998. It contains technical information.',
        '{database,PostgreSQL,Indexing}', 'https://example.com/images/blog_998.jpg', 2655, '2025-02-01 14:27:22.645386', '2025-02-04 14:27:22.645386', False
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        'd74725a5-ff3c-42d3-8513-d85b14749406', 'd6a6524f-a0b3-4e39-b3b4-faae23adaf29', 'Sample Blog Title 999', 'sample-blog-999', 'This is the content of Sample Blog 999. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_999.jpg', 1581, '2024-04-21 14:27:22.645386', '2024-04-24 14:27:22.645386', True
    );
    
    INSERT INTO blogs (id, author_id, title, slug, content, tags, image_url, views, created_at, updated_at, is_published)
    VALUES (
        '55da4e3e-0e6a-4fe0-8cf6-dadca9fad1a4', 'd6576192-4494-48ec-89bb-1a018450876d', 'Sample Blog Title 1000', 'sample-blog-1000', 'This is the content of Sample Blog 1000. It contains technical information.',
        '{security,OAuth,Keycloak}', 'https://example.com/images/blog_1000.jpg', 9409, '2024-10-25 14:27:22.645386', '2024-10-30 14:27:22.645386', False
    );
    