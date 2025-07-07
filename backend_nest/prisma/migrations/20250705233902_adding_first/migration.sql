-- CreateTable
CREATE TABLE "user" (
    "email" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "user_email_key" ON "user"("email");
