.class Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardBackendInternal;


# static fields
.field private static final DB_PATH:Ljava/lang/String;


# instance fields
.field private final mCipher:Lcom/sec/android/app/sbrowser/autofill/personal_data/Cipher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->getDataDirectory()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/app_sbrowser/Default/Autofill Web Data"

    invoke-static {v0, v1, v2}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->DB_PATH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->DB_PATH:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/GoogleCipher;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/GoogleCipher;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->mCipher:Lcom/sec/android/app/sbrowser/autofill/personal_data/Cipher;

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;-><init>()V

    return-object v0
.end method

.method private addCreditCard(Landroid/database/sqlite/SQLiteDatabase;Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)V
    .locals 3

    const-string v0, "INSERT INTO credit_cards_info (guid, name_on_card, expiration_month, expiration_year, card_number_encrypted, use_count, use_date, date_modified, origin, billing_address_id, initialization_vector, encrypted_key, card_nick_name) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->mCipher:Lcom/sec/android/app/sbrowser/autofill/personal_data/Cipher;

    iget-object v0, p2, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->cardNumber:Ljava/lang/String;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/Cipher;->encrypt(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;

    move-result-object p0

    const-string v0, "SecureWebData"

    if-eqz p0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;->encryptedData:[B

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    array-length v1, v1

    if-gtz v1, :cond_1

    const-string v1, "addCreditCard during migration: encryption failed. Card numberlength is not up to the standard."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p2, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->guid:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    iget-object v0, p2, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->name:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    iget-object v0, p2, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->expirationMonth:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    iget-object v0, p2, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->expirationYear:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;->encryptedData:[B

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindBlob(I[B)V

    iget-wide v0, p2, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->useCount:J

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    iget-wide v0, p2, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->useDate:J

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    iget-object v0, p2, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->origin:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    iget-object v0, p2, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->billingAddressId:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;->initializationVector:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;->encryptedKey:[B

    const/16 v0, 0xc

    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindBlob(I[B)V

    iget-object p0, p2, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->cardNickName:Ljava/lang/String;

    const/16 p2, 0xd

    invoke-virtual {p1, p2, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    return-void

    :cond_2
    :goto_0
    const-string p0, "addCreditCard during migration: encryption failed"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private addInfoBarStatusToDatabase(Ljava/lang/String;Lcom/sec/terrace/services/autofill/mojom/TerraceInfoBarStatus;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    iget v0, p2, Lcom/sec/terrace/services/autofill/mojom/TerraceInfoBarStatus;->hash:I

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    iget-wide v0, p2, Lcom/sec/terrace/services/autofill/mojom/TerraceInfoBarStatus;->useCount:J

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    iget-wide v0, p2, Lcom/sec/terrace/services/autofill/mojom/TerraceInfoBarStatus;->lastUseTime:J

    const/4 p2, 0x3

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1

    :goto_0
    return-void
.end method

.method private convertCursorToCard(Landroid/database/Cursor;Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungCipher;)Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;
    .locals 4

    new-instance v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->guid:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->name:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->expirationMonth:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->expirationYear:Ljava/lang/String;

    new-instance v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;-><init>()V

    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;->encryptedData:[B

    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->useCount:J

    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->useDate:J

    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->origin:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->billingAddressId:Ljava/lang/String;

    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;->initializationVector:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    iput-object p1, v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;->encryptedKey:[B

    iget-object p1, v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;->initializationVector:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v2, "SecureWebData"

    if-eqz p1, :cond_0

    const-string p1, "new impl already adopted"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->mCipher:Lcom/sec/android/app/sbrowser/autofill/personal_data/Cipher;

    invoke-interface {p0, v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/Cipher;->decrypt(Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->cardNumber:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, "old impl still used"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungCipher;->decryptWbs(Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->cardNumber:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method private createCardNickNameColumn(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    :try_start_0
    const-string p0, "ALTER TABLE credit_cards_info ADD card_nick_name DEFAULT \'\' "

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Adding New Column card_nick_name failed: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "SecureWebData"

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private createCreditCardInfobarStatusTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "CREATE TABLE IF NOT EXISTS credit_card_infobar_status (card_hash INTEGER PRIMARY KEY, use_count INTEGER NOT NULL DEFAULT 0,last_use_time INTEGER NOT NULL DEFAULT 0)"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createCreditCardTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "CREATE TABLE IF NOT EXISTS credit_cards_info (guid VARCHAR PRIMARY KEY, name_on_card VARCHAR, expiration_month INTEGER, expiration_year INTEGER, card_number_encrypted BLOB, date_modified INTEGER NOT NULL DEFAULT 0, origin VARCHAR DEFAULT \'\', use_count INTEGER NOT NULL DEFAULT 0, use_date INTEGER NOT NULL DEFAULT 0, billing_address_id VARCHAR, initialization_vector VARCHAR, encrypted_key BLOB)"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private defineDatabaseSchema(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 1

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->createCreditCardTable(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    const/4 v0, 0x4

    if-ge p2, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->createCreditCardInfobarStatusTable(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1
    const/4 v0, 0x6

    if-ge p2, v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->dropCreditCardStatusTable(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_2
    const/4 v0, 0x7

    if-ge p2, v0, :cond_3

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->dropUPITables(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_3
    const/16 v0, 0x8

    if-ge p2, v0, :cond_4

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->migrateToSdpRemoved(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_4
    const/16 v0, 0x9

    if-ge p2, v0, :cond_5

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->createCardNickNameColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_5
    return-void
.end method

.method private deleteTablesInOneTransaction(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1

    :goto_2
    return-void
.end method

.method private dropCreditCardStatusTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "DROP TABLE IF EXISTS credit_card_status"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private dropSdpCreditCardTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "DROP TABLE IF EXISTS credit_cards"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private dropUPITables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "DROP TABLE IF EXISTS upi_names"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "DROP TABLE IF EXISTS upi_name_infobar_status"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private static getDataDirectory()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "/data/data/com.sec.android.app.sbrowser.beta"

    return-object v0
.end method

.method private getInfoBarStatusTableFromDatabase(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/terrace/services/autofill/mojom/TerraceInfoBarStatus;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SafeCursor;->wrap(Landroid/database/Cursor;)Lcom/sec/android/app/sbrowser/autofill/personal_data/SafeCursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_3

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_2
    new-instance v0, Lcom/sec/terrace/services/autofill/mojom/TerraceInfoBarStatus;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/mojom/TerraceInfoBarStatus;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceInfoBarStatus;->hash:I

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceInfoBarStatus;->useCount:J

    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceInfoBarStatus;->lastUseTime:J

    iget v1, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceInfoBarStatus;->hash:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    :goto_0
    :try_start_3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_4

    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    return-object p1

    :goto_1
    if-eqz p0, :cond_5

    :try_start_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_6
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/g;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/g;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;

    return-object v0
.end method

.method private isDecryptionValid(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v1, 0x8

    if-lt p0, v1, :cond_2

    const/16 v1, 0x18

    if-le p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "(^[0-9]*$)"

    invoke-virtual {p1, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private migrateToSdpRemoved(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "migrateToSdpRemoved"

    const-string v1, "SecureWebData"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->createCreditCardTable(Landroid/database/sqlite/SQLiteDatabase;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungCipher;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungCipher;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungCipher;->unlock(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    :try_start_0
    const-string v3, "SELECT guid, name_on_card, expiration_month, expiration_year, card_number_encrypted, use_count, use_date, origin, billing_address_id, initialization_vector, encrypted_key, date_modified FROM credit_cards ORDER BY date_modified DESC"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SafeCursor;->wrap(Landroid/database/Cursor;)Lcom/sec/android/app/sbrowser/autofill/personal_data/SafeCursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_1
    invoke-direct {p0, v3, v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->convertCursorToCard(Landroid/database/Cursor;Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungCipher;)Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;

    move-result-object v5

    iget-object v6, v5, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->cardNumber:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->isDecryptionValid(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0, p1, v5}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->addCreditCard(Landroid/database/sqlite/SQLiteDatabase;Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "migrateToSdpRemoved: decryption failed. isSdpUnlockSuccessful = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_3
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungCipher;->lock()Z

    if-nez v4, :cond_4

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->dropSdpCreditCardTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    if-eqz v3, :cond_6

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    :goto_1
    if-eqz v3, :cond_5

    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungCipher;->lock()Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "migrateToSdpRemoved: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_6
    :goto_4
    return-void
.end method

.method private removeDataWithGUID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1

    :goto_0
    return-void
.end method


# virtual methods
.method public addCreditCard(Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)V
    .locals 7

    const-string v0, "SecureWebData"

    const-string v1, "addCreditCard(): "

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v3, "INSERT INTO credit_cards_info (guid, name_on_card, expiration_month, expiration_year, card_number_encrypted, use_count, use_date, date_modified, origin, billing_address_id, initialization_vector, encrypted_key, card_nick_name) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->mCipher:Lcom/sec/android/app/sbrowser/autofill/personal_data/Cipher;

    iget-object v4, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->cardNumber:Ljava/lang/String;

    invoke-interface {p0, v4}, Lcom/sec/android/app/sbrowser/autofill/personal_data/Cipher;->encrypt(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;->encryptedData:[B

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    array-length v4, v4

    if-gtz v4, :cond_2

    const-string v4, "addCreditCard(): encryption failed. Card numberlength is not up to the standard."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_0
    iget-object v4, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->guid:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    iget-object v4, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->name:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v4}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    iget-object v4, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->expirationMonth:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-virtual {v3, v5, v4}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    iget-object v4, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->expirationYear:Ljava/lang/String;

    const/4 v5, 0x4

    invoke-virtual {v3, v5, v4}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;->encryptedData:[B

    const/4 v5, 0x5

    invoke-virtual {v3, v5, v4}, Landroid/database/sqlite/SQLiteProgram;->bindBlob(I[B)V

    iget-wide v4, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->useCount:J

    const/4 v6, 0x6

    invoke-virtual {v3, v6, v4, v5}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    iget-wide v4, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->useDate:J

    const/4 v6, 0x7

    invoke-virtual {v3, v6, v4, v5}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/16 v6, 0x8

    invoke-virtual {v3, v6, v4, v5}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    iget-object v4, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->origin:Ljava/lang/String;

    const/16 v5, 0x9

    invoke-virtual {v3, v5, v4}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    iget-object v4, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->billingAddressId:Ljava/lang/String;

    const/16 v5, 0xa

    invoke-virtual {v3, v5, v4}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;->initializationVector:Ljava/lang/String;

    const/16 v5, 0xb

    invoke-virtual {v3, v5, v4}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;->encryptedKey:[B

    const/16 v4, 0xc

    invoke-virtual {v3, v4, p0}, Landroid/database/sqlite/SQLiteProgram;->bindBlob(I[B)V

    iget-object p0, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->cardNickName:Ljava/lang/String;

    const/16 p1, 0xd

    invoke-virtual {v3, p1, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_4

    :cond_3
    :goto_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :goto_3
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_4
    return-void

    :goto_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p0
.end method

.method public clearCreditCards()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "credit_cards_info"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "credit_card_infobar_status"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->deleteTablesInOneTransaction(Ljava/util/List;)V

    return-void
.end method

.method public getCreditCardStatusTable(Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCardStatusTable_Response;)V
    .locals 1

    const-string v0, "SELECT card_hash, use_count, last_use_time FROM credit_card_infobar_status"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->getInfoBarStatusTableFromDatabase(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCardStatusTable_Response;->call(Ljava/util/Map;)V

    return-void
.end method

.method public getCreditCards(Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCards_Response;)V
    .locals 8

    const-string v0, "SecureWebData"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-array p0, v2, [Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;

    invoke-interface {p1, p0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCards_Response;->call([Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)V

    return-void

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v4, "SELECT guid, name_on_card, expiration_month, expiration_year, card_number_encrypted, use_count, use_date, origin, billing_address_id, initialization_vector, encrypted_key, date_modified, card_nick_name FROM credit_cards_info ORDER BY date_modified DESC"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SafeCursor;->wrap(Landroid/database/Cursor;)Lcom/sec/android/app/sbrowser/autofill/personal_data/SafeCursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_2
    new-instance v4, Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;

    invoke-direct {v4}, Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;-><init>()V

    new-instance v5, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;

    invoke-direct {v5}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;-><init>()V

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->guid:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->name:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->expirationMonth:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->expirationYear:Ljava/lang/String;

    const/4 v6, 0x4

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    iput-object v6, v4, Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;->encryptedData:[B

    const/4 v6, 0x5

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->useCount:J

    const/4 v6, 0x6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->useDate:J

    const/4 v6, 0x7

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->origin:Ljava/lang/String;

    const/16 v6, 0x8

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->billingAddressId:Ljava/lang/String;

    const/16 v6, 0x9

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;->initializationVector:Ljava/lang/String;

    const/16 v6, 0xa

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    iput-object v6, v4, Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;->encryptedKey:[B

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->mCipher:Lcom/sec/android/app/sbrowser/autofill/personal_data/Cipher;

    invoke-interface {v6, v4}, Lcom/sec/android/app/sbrowser/autofill/personal_data/Cipher;->decrypt(Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->cardNumber:Ljava/lang/String;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v6, 0xb

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->modificationDate:J

    const/16 v4, 0xc

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->cardNickName:Ljava/lang/String;

    iget-object v4, v5, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->cardNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, ""

    iput-object v4, v5, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->cardNumber:Ljava/lang/String;

    const-string v4, "getCreditCards(): decryption failed"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_0
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_2

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_4
    :goto_1
    :try_start_3
    new-array p0, v2, [Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;

    invoke-interface {p1, p0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCards_Response;->call([Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_5

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_5
    return-void

    :goto_2
    if-eqz v1, :cond_6

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getCreditCards(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;

    invoke-interface {p1, p0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCards_Response;->call([Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)V

    return-void
.end method

.method public getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "SecureWebData"

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "SecureWebData"

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->defineDatabaseSchema(Landroid/database/sqlite/SQLiteDatabase;I)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string p0, "onDowngrade "

    const-string p1, "->"

    const-string v0, "SecureWebData"

    invoke-static {p2, p3, p0, p1, v0}, Lt/b;->w(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->defineDatabaseSchema(Landroid/database/sqlite/SQLiteDatabase;I)V

    return-void
.end method

.method public removeCreditCard(Ljava/lang/String;)V
    .locals 1

    const-string v0, "DELETE FROM credit_cards_info WHERE guid=?"

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->removeDataWithGUID(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCreditCardStatus(Lcom/sec/terrace/services/autofill/mojom/TerraceInfoBarStatus;)V
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO credit_card_infobar_status(card_hash, use_count, last_use_time) VALUES(?, ?, ?)"

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->addInfoBarStatusToDatabase(Ljava/lang/String;Lcom/sec/terrace/services/autofill/mojom/TerraceInfoBarStatus;)V

    return-void
.end method

.method public updateCreditCard(Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)V
    .locals 7

    const-string v0, "SecureWebData"

    const-string v1, "updateCreditCard() failed: "

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v3, "UPDATE credit_cards_info SET name_on_card=?, expiration_month=?, expiration_year=?, card_number_encrypted=?, use_count=?, use_date=?, date_modified=?, origin=?, billing_address_id=?, initialization_vector=?, encrypted_key=?, card_nick_name=? WHERE guid=?"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->mCipher:Lcom/sec/android/app/sbrowser/autofill/personal_data/Cipher;

    iget-object v4, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->cardNumber:Ljava/lang/String;

    invoke-interface {p0, v4}, Lcom/sec/android/app/sbrowser/autofill/personal_data/Cipher;->encrypt(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;->encryptedData:[B

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    array-length v4, v4

    if-gtz v4, :cond_2

    const-string v4, "updateCreditCard(): encryption failed. Card numberlength is not up to the standard."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_0
    iget-object v4, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->name:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    iget-object v4, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->expirationMonth:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v4}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    iget-object v4, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->expirationYear:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-virtual {v3, v5, v4}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;->encryptedData:[B

    const/4 v5, 0x4

    invoke-virtual {v3, v5, v4}, Landroid/database/sqlite/SQLiteProgram;->bindBlob(I[B)V

    iget-wide v4, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->useCount:J

    const/4 v6, 0x5

    invoke-virtual {v3, v6, v4, v5}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    iget-wide v4, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->useDate:J

    const/4 v6, 0x6

    invoke-virtual {v3, v6, v4, v5}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x7

    invoke-virtual {v3, v6, v4, v5}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    iget-object v4, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->origin:Ljava/lang/String;

    const/16 v5, 0x8

    invoke-virtual {v3, v5, v4}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    iget-object v4, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->billingAddressId:Ljava/lang/String;

    const/16 v5, 0x9

    invoke-virtual {v3, v5, v4}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;->initializationVector:Ljava/lang/String;

    const/16 v5, 0xa

    invoke-virtual {v3, v5, v4}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;->encryptedKey:[B

    const/16 v4, 0xb

    invoke-virtual {v3, v4, p0}, Landroid/database/sqlite/SQLiteProgram;->bindBlob(I[B)V

    iget-object p0, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->cardNickName:Ljava/lang/String;

    const/16 v4, 0xc

    invoke-virtual {v3, v4, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    iget-object p0, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->guid:Ljava/lang/String;

    const/16 p1, 0xd

    invoke-virtual {v3, p1, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_4

    :cond_3
    :goto_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :goto_3
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_4
    return-void

    :goto_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p0
.end method
