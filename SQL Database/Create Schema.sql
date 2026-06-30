CREATE TABLE properties (
    property_id CHAR(36) PRIMARY KEY,
    name VARCHAR(255),
    type VARCHAR(100),
    total_area VARCHAR(100),
    address VARCHAR(255),
    created_at DATE
);

CREATE TABLE units (
    unit_id CHAR(36) PRIMARY KEY,
    property_id CHAR(36),
    room_number VARCHAR(50),
    status VARCHAR(50),
    base_rent DECIMAL(10,2),
    sq_ft INT,

    CONSTRAINT fk_units_property
    FOREIGN KEY (property_id)
    REFERENCES properties(property_id)
);

CREATE TABLE tenants (
    tenant_id CHAR(36) PRIMARY KEY,
    full_name VARCHAR(255),
    phone_number VARCHAR(20),
    email VARCHAR(255),
    id_proof_url VARCHAR(500),
    employer_company VARCHAR(255),
    created_at DATE
);

CREATE TABLE leases (
    lease_id CHAR(36) PRIMARY KEY,
    unit_id CHAR(36),
    tenant_id CHAR(36),
    start_date DATE,
    end_date DATE,
    agreed_rent DECIMAL(10,2),
    security_deposit DECIMAL(10,2),
    status VARCHAR(50),

    CONSTRAINT fk_leases_unit
    FOREIGN KEY (unit_id)
    REFERENCES units(unit_id),

    CONSTRAINT fk_leases_tenant
    FOREIGN KEY (tenant_id)
    REFERENCES tenants(tenant_id)
);

CREATE TABLE invoices (
    invoice_id CHAR(36) PRIMARY KEY,
    lease_id CHAR(36),
    invoice_type VARCHAR(50),
    amount_due DECIMAL(10,2),
    issue_date DATE,
    due_date DATE,
    status VARCHAR(50),

    CONSTRAINT fk_invoices_lease
    FOREIGN KEY (lease_id)
    REFERENCES leases(lease_id)
);

CREATE TABLE payments (
    payment_id CHAR(36) PRIMARY KEY,
    tenant_id CHAR(36),
    amount_paid DECIMAL(10,2),
    payment_date DATETIME,
    method VARCHAR(50),
    transaction_reference VARCHAR(255),
    recorded_by VARCHAR(50),

    CONSTRAINT fk_payments_tenant
    FOREIGN KEY (tenant_id)
    REFERENCES tenants(tenant_id)
);

CREATE TABLE payment_allocations (
    allocation_id CHAR(36) PRIMARY KEY,
    payment_id CHAR(36),
    invoice_id CHAR(36),
    amount_applied DECIMAL(10,2),
    allocated_at DATETIME,

    CONSTRAINT fk_alloc_payment
    FOREIGN KEY (payment_id)
    REFERENCES payments(payment_id),

    CONSTRAINT fk_alloc_invoice
    FOREIGN KEY (invoice_id)
    REFERENCES invoices(invoice_id)
);

CREATE TABLE expenses (
    expense_id CHAR(36) PRIMARY KEY,
    property_id CHAR(36),
    unit_id CHAR(36),
    category VARCHAR(100),
    amount DECIMAL(10,2),
    expense_date DATE,
    vendor_name VARCHAR(255),
    receipt_url VARCHAR(500),

    CONSTRAINT fk_expenses_property
    FOREIGN KEY (property_id)
    REFERENCES properties(property_id),

    CONSTRAINT fk_expenses_unit
    FOREIGN KEY (unit_id)
    REFERENCES units(unit_id)
);

