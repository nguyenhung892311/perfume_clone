import React from 'react'
import type { Metadata } from 'next'

const meta: Metadata = {
  title: 'Reporter - HTML Blog Template',
  description: 'This is meta description',
}

export default function Header() {
  return (
    <head>
      <meta charSet="utf-8" />
      <title>{meta.title}</title>
      <meta
        name="viewport"
        content="width=device-width, initial-scale=1, maximum-scale=5"
      />
      <meta name="description" content={meta.description} />
      <meta name="author" content="Themefisher" />
      <link rel="shortcut icon" href="/images/favicon.png" type="image/x-icon" />
      <link rel="icon" href="/images/favicon.png" type="image/x-icon" />
      <meta name="theme-name" content="reporter" />
      <link rel="preconnect" href="https://fonts.googleapis.com" />
      <link rel="preconnect" href="https://fonts.gstatic.com" crossOrigin="" />
      <link
        href="https://fonts.googleapis.com/css2?family=Neuton:wght@700&family=Work+Sans:wght@400;500;600;700&display=swap"
        rel="stylesheet"
      />
    </head>
  )
}
