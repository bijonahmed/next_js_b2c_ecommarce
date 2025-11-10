"use client";

import React, { createContext, useContext, useReducer, useEffect } from "react";
import toast from "react-hot-toast";

const CartContext = createContext(null);

// Helper: stringify attributes safely
const getAttrKey = (attr) => JSON.stringify(attr || {});

const cartReducer = (state, action) => {
  switch (action.type) {
    case "ADD_TO_CART": {
      const { id, selectedAttr } = action.payload;
      const attrKey = getAttrKey(selectedAttr);

      //  Find existing same product with same attributes
      const existingIndex = state.findIndex(
        (item) => item.id === id && getAttrKey(item.selectedAttr) === attrKey
      );

      if (existingIndex >= 0) {
        //  Increase quantity instead of blocking duplicate
        const updatedCart = [...state];
        updatedCart[existingIndex].qty += action.payload.qty || 1;
        toast.success("Quantity updated in cart!");
        return updatedCart;
      }

      //  Add new unique product variation
      toast.success("Added to cart!");
      return [...state, { ...action.payload, qty: action.payload.qty || 1 }];
    }

    case "REMOVE_FROM_CART": {
      const { id, selectedAttr } = action.payload;
      const attrKey = getAttrKey(selectedAttr);
      return state.filter(
        (item) => !(item.id === id && getAttrKey(item.selectedAttr) === attrKey)
      );
    }

    case "UPDATE_QTY": {
      const { id, selectedAttr, qty } = action.payload;
      const attrKey = getAttrKey(selectedAttr);
      return state.map((item) =>
        item.id === id && getAttrKey(item.selectedAttr) === attrKey
          ? { ...item, qty }
          : item
      );
    }

    case "CLEAR_CART":
      return [];

    default:
      return state;
  }
};

// Provider
export const CartProvider = ({ children }) => {
  const [cart, dispatch] = useReducer(cartReducer, [], () => {
    if (typeof window !== "undefined") {
      const stored = localStorage.getItem("cart");
      return stored ? JSON.parse(stored) : [];
    }
    return [];
  });

  // Sync with localStorage
  useEffect(() => {
    if (typeof window !== "undefined") {
      localStorage.setItem("cart", JSON.stringify(cart));
    }
  }, [cart]);

  // Actions
  const addToCart = (product) => dispatch({ type: "ADD_TO_CART", payload: product });
  const removeFromCart = (product) => dispatch({ type: "REMOVE_FROM_CART", payload: product });
  const updateQty = (product, qty) =>
    dispatch({ type: "UPDATE_QTY", payload: { ...product, qty } });
  const clearCart = () => dispatch({ type: "CLEAR_CART" });

  return (
    <CartContext.Provider value={{ cart, addToCart, removeFromCart, updateQty, clearCart }}>
      {children}
    </CartContext.Provider>
  );
};

// Hook
export const useCart = () => {
  const context = useContext(CartContext);
  if (!context) throw new Error("useCart must be used within a CartProvider");
  return context;
};
