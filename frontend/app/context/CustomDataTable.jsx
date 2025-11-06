"use client";

import React, { useState, useEffect } from "react";
import DataTable from "react-data-table-component";
import PropTypes from "prop-types";

const BootstrapPagination = ({ currentPage, totalPages, onPageChange }) => {
  if (totalPages === 0) return null;

  const pageNumbers = [];
  const maxVisible = 5; // max numbers to show in the middle
  let startPage = Math.max(currentPage - 2, 1);
  let endPage = Math.min(currentPage + 2, totalPages);

  if (currentPage <= 3) {
    startPage = 1;
    endPage = Math.min(maxVisible, totalPages);
  } else if (currentPage > totalPages - 2) {
    startPage = Math.max(totalPages - (maxVisible - 1), 1);
    endPage = totalPages;
  }

  if (startPage > 1) {
    pageNumbers.push(1);
    if (startPage > 2) pageNumbers.push("ellipsis-start");
  }

  for (let i = startPage; i <= endPage; i++) pageNumbers.push(i);

  if (endPage < totalPages) {
    if (endPage < totalPages - 1) pageNumbers.push("ellipsis-end");
    pageNumbers.push(totalPages);
  }

  return (
    <nav aria-label="Page navigation">
      <ul className="pagination justify-content-center mt-3">
        {/* Previous Button */}
        <li className={`page-item ${currentPage === 1 ? "disabled" : ""}`}>
          <button
            className="page-link"
            onClick={() => onPageChange(currentPage - 1)}
            disabled={currentPage === 1}
          >
            Previous
          </button>
        </li>

        {/* Page Numbers */}
        {pageNumbers.map((num, idx) => {
          if (num === "ellipsis-start" || num === "ellipsis-end") {
            return (
              <li key={idx} className="page-item disabled">
                <span className="page-link">...</span>
              </li>
            );
          }
          return (
            <li
              key={idx}
              className={`page-item ${num === currentPage ? "active" : ""}`}
            >
              <button className="page-link" onClick={() => onPageChange(num)}>
                {num}
              </button>
            </li>
          );
        })}

        {/* Next Button */}
        <li
          className={`page-item ${
            currentPage === totalPages ? "disabled" : ""
          }`}
        >
          <button
            className="page-link"
            onClick={() => onPageChange(currentPage + 1)}
            disabled={currentPage === totalPages}
          >
            Next
          </button>
        </li>
      </ul>
    </nav>
  );
};

const CustomDataTable = ({
  columns,
  fetchFunction,
  perPageOptions = [5, 10, 25, 50],
  defaultPerPage = 10,
  searchValue = "",
  customStyles = {},
}) => {
  const [data, setData] = useState([]);
  const [totalRows, setTotalRows] = useState(0);
  const [loading, setLoading] = useState(false);
  const [currentPage, setCurrentPage] = useState(1);
  const [perPage, setPerPage] = useState(defaultPerPage);

  // Fetch data from API
  const fetchData = async (page = 1, perPageSize = perPage) => {
    setLoading(true);
    try {
      const result = await fetchFunction(page, perPageSize, searchValue);

      setData(result.data || []);
      setTotalRows(result.total || 0);
    } catch (err) {
      console.error("Fetch data failed:", err);
      setData([]);
      setTotalRows(0);
    } finally {
      setLoading(false);
    }
  };

  // Fetch when page, perPage, or search changes
  useEffect(() => {
    fetchData(currentPage, perPage);
  }, [currentPage, perPage, searchValue]);

  // Only update currentPage here
  const handlePageChange = (page) => setCurrentPage(page);

  const handlePerRowsChange = (newPerPage) => {
    setPerPage(newPerPage);
    setCurrentPage(1); // reset to first page
  };

  return (
    <DataTable
      columns={columns}
      data={data}
      progressPending={loading}
      pagination
      paginationServer
      paginationTotalRows={totalRows}
      onChangePage={handlePageChange}
      onChangeRowsPerPage={handlePerRowsChange}
      paginationRowsPerPageOptions={perPageOptions}
      paginationComponent={() => (
        <BootstrapPagination
          currentPage={currentPage}
          totalPages={Math.ceil(totalRows / perPage)}
          onPageChange={handlePageChange}
        />
      )}
      customStyles={customStyles}
    />
  );
};

// PropTypes validation
CustomDataTable.propTypes = {
  columns: PropTypes.array.isRequired,
  fetchFunction: PropTypes.func.isRequired,
  perPageOptions: PropTypes.array,
  defaultPerPage: PropTypes.number,
  searchValue: PropTypes.string,
  customStyles: PropTypes.object,
};

export default CustomDataTable;
