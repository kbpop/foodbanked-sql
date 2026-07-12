INSERT INTO organizations(name, org_type) VALUES
    ('Demo Food Bank', 'foodbank'),
    ('Demo Partner Agency', 'partner_agency');

INSERT INTO users(email, password_hash, account_type, verification_status, organization_id) VALUES
    ('john_doe@example.com', 'placeholder_hash_donor', 'donor', 'verified', NULL),
    ('jane_smith@example.com', 'placeholder_hash_employee', 'employee', 'pending', 1);

INSERT INTO products(p_name) VALUES
    ('carrots'),
    ('bananas');

INSERT INTO item_levels(user_id, product_id, quantity) VALUES
    (1, 1, 5),
    (1, 2, 4),
    (2, 2, 1);
