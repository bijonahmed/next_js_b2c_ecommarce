// app/components/frontend/FrontendAssets.jsx
"use client";

import Script from "next/script";

export default function FrontendAssets() {
  return (
    <>
      <div>
        <link rel="dns-prefetch" href="http://fonts.googleapis.com/" />
      <link rel="preconnect" href="https://fonts.gstatic.com" crossOrigin="anonymous" />
        <meta name="format-detection" content="telephone=no" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="author" content="Bir Group" />
        <meta
          name="keywords"
          content="ecommerce, marketplace, shopping, html template, bootstrap"
        />
       
        <title>Welcome to Bir E-commerce</title>
        <link
          href="https://fonts.googleapis.com/css2?family=Work+Sans:wght@300;400;500;600;700&display=swap"
          rel="stylesheet"
        />
        <link rel="stylesheet" href="/frontend_theme/plugins/font-awesome/css/all.min.css" />
        <link
          rel="stylesheet"
          href="/frontend_theme/fonts/Linearicons/Linearicons/Font/demo-files/demo.css"
        />
        <link rel="stylesheet" href="/frontend_theme/plugins/bootstrap/css/bootstrap.min.css" />
        <link
          rel="stylesheet"
          href="/frontend_theme/plugins/owl-carousel/assets/owl.carousel.min.css"
        />
        <link
          rel="stylesheet"
          href="/frontend_theme/plugins/owl-carousel/assets/owl.theme.default.min.css"
        />
        <link rel="stylesheet" href="/frontend_theme/plugins/slick/slick/slick.css" />
        <link rel="stylesheet" href="/frontend_theme/plugins/nouislider/nouislider.min.css" />
        <link
          rel="stylesheet"
          href="/frontend_theme/plugins/lightGallery-master/dist/css/lightgallery.min.css"
        />
        <link
          rel="stylesheet"
          href="/frontend_theme/plugins/jquery-bar-rating/dist/themes/fontawesome-stars.css"
        />
        <link
          rel="stylesheet"
          href="/frontend_theme/plugins/select2/dist/css/select2.min.css"
        />
        <link rel="preload" href="/frontend_theme/css/style.css" as="style" />
        <link rel="stylesheet" href="/frontend_theme/css/style.css" />
        <link rel="stylesheet" href="/frontend_theme/css/market-place-1.css" />
        <style
          // dangerouslySetInnerHTML={{
          //   __html:
          //     "\n        /* Always keep the menu content visible */\n        .menu--product-categories .menu__content {\n            display: block !important;\n            opacity: 1 !important;\n            visibility: visible !important;\n            transform: none !important;\n        }\n\n        /*# sourceMappingURL=style.css.map */\n    ",
          // }}
        />

        <Script
          src="/frontend_theme/plugins/jquery-3.7.1.min.js"
          strategy="beforeInteractive"
        />

        {/* ✅ Then load jQuery-dependent plugins */}
        <Script
          src="/frontend_theme/plugins/popper.min.js"
          strategy="afterInteractive"
        />
        <Script
          src="/frontend_theme/plugins/bootstrap/js/bootstrap.min.js"
          strategy="afterInteractive"
        />
        <Script
          src="/frontend_theme/plugins/owl-carousel/owl.carousel.min.js"
          strategy="afterInteractive"
        />
        <Script
          src="/frontend_theme/plugins/nouislider/nouislider.min.js"
          strategy="afterInteractive"
        />
        <Script
          src="/frontend_theme/plugins/imagesloaded.pkgd.min.js"
          strategy="afterInteractive"
        />
        <Script
          src="/frontend_theme/plugins/masonry.pkgd.min.js"
          strategy="afterInteractive"
        />
        <Script
          src="/frontend_theme/plugins/isotope.pkgd.min.js"
          strategy="afterInteractive"
        />
        <Script
          src="/frontend_theme/plugins/jquery.matchHeight-min.js"
          strategy="afterInteractive"
        />
        <Script
          src="/frontend_theme/plugins/slick/slick/slick.min.js"
          strategy="afterInteractive"
        />
        <Script
          src="/frontend_theme/plugins/jquery-bar-rating/dist/jquery.barrating.min.js"
          strategy="afterInteractive"
        />
        <Script
          src="/frontend_theme/plugins/lightGallery-master/dist/js/lightgallery-all.min.js"
          strategy="afterInteractive"
        />
        <Script
          src="/frontend_theme/plugins/select2/dist/js/select2.full.min.js"
          strategy="afterInteractive"
        />
        <Script
          src="/frontend_theme/plugins/gmap3.min.js"
          strategy="afterInteractive"
        />

        {/* ✅ Finally your main.js (depends on all above) */}
        <Script
          src="/frontend_theme/js/main.js"
          strategy="afterInteractive"
        />
      </div>
    </>
  );
}
