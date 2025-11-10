// app/hooks/useCategories.jsx
"use client";
import { useEffect, useState } from "react";

export default function getProducts() {

  const [products, setProductData] = useState([]);
  const [loading, setLoading] = useState(false);

  useEffect(() => {
    const fetchCategories = async () => {
      setLoading(true);
      try {
        const res = await fetch(
          `${process.env.NEXT_PUBLIC_API_BASE}/public/getProducts`
        );
        const result = await res.json();
        setProductData(result.product || []);
        console.log("get products" + result.product);


      } catch (err) {
        console.error("Fetch failed:", err);
      } finally {
        setLoading(false);
      }
    };
    fetchCategories();
  }, []);

  return { products, loading };
}
