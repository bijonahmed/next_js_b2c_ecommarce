"use client";

import React, { createContext, useContext, useReducer, useEffect } from "react";

// Cart context
const CartContext = createContext();

// Reducer function
const cartReducer = (state, action) => {
  switch (action.type) {
    case "ADD_TO_CART":
      const existingIndex = state.findIndex(
        (item) => item.id === action.payload.id && item.selectedAttr === action.payload.selectedAttr
      );

      if (existingIndex >= 0) {
        const updatedCart = [...state];
        updatedCart[existingIndex].qty += action.payload.qty || 1;
        return updatedCart;
      } else {
        return [...state, { ...action.payload, qty: action.payload.qty || 1 }];
      }

    case "REMOVE_FROM_CART":
      return state.filter(
        (item) => !(item.id === action.payload.id && item.selectedAttr === action.payload.selectedAttr)
      );

    case "UPDATE_QTY":
      return state.map((item) =>
        item.id === action.payload.id && item.selectedAttr === action.payload.selectedAttr
          ? { ...item, qty: action.payload.qty }
          : item
      );

    case "CLEAR_CART":
      return [];

    default:
      return state;
  }
};

// Provider component
export const CartProvider = ({ children }) => {
  const [cart, dispatch] = useReducer(cartReducer, [], () => {
    if (typeof window !== "undefined") {
      const storedCart = localStorage.getItem("cart");
      return storedCart ? JSON.parse(storedCart) : [];
    }
    return [];
  });

  // Sync cart to localStorage
  useEffect(() => {
    if (typeof window !== "undefined") {
      localStorage.setItem("cart", JSON.stringify(cart));
    }
  }, [cart]);

  const addToCart = (product) => {
    dispatch({ type: "ADD_TO_CART", payload: product });
  };

  const removeFromCart = (product) => {
    dispatch({ type: "REMOVE_FROM_CART", payload: product });
  };

  const updateQty = (product, qty) => {
    dispatch({ type: "UPDATE_QTY", payload: { ...product, qty } });
  };

  const clearCart = () => {
    dispatch({ type: "CLEAR_CART" });
  };

  return (
    <CartContext.Provider
      value={{ cart, addToCart, removeFromCart, updateQty, clearCart }}
    >
      {children}
    </CartContext.Provider>
  );
};

// Custom hook
export const useCart = () => useContext(CartContext);