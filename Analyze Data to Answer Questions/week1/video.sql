--You are working on an international project and need to invoice your customers for the work you complete. The database you use contains an invoices table. The invoices table contains the following columns: InvoiceId, CustomerId, InvoiceDate, BillingAddress, BillingCity, BillingState, BillingCountry, BillingPostalCode, Total.
--Create a query to return all the columns from this table for only customers in Germany who have an invoice total greater than $5.
SELECT COUNT(*) as invoice_total_greater_than_5
FROM invoices
WHERE BillingCountry = 'Germany'
  and Total > 5
