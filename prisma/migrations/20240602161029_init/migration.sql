-- CreateSchema
CREATE SCHEMA IF NOT EXISTS "shop1";

-- CreateSchema
CREATE SCHEMA IF NOT EXISTS "shop2";

-- CreateTable
CREATE TABLE "shop1"."product" (
    "id" SERIAL NOT NULL,
    "title" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "product_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "shop2"."product" (
    "id" SERIAL NOT NULL,
    "title" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "product_pkey" PRIMARY KEY ("id")
);
