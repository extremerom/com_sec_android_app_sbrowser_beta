.class Lcom/sec/android/app/sbrowser/common/sqlcipher/SamsungSQLiteOpenHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteOperationDelegate;


# instance fields
.field private mDelegate:Lcom/sec/sbrowser/spl/wrapper/SemSQLiteOpenHelper;

.field private final mSQLiteKeyStore:Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteKeyStore;

.field private final mSecureSQLite:Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteClient;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteClient;Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteConfiguration;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteKeyStore;

    iget-object v1, p2, Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteConfiguration;->mKeyStoreAlias:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteKeyStore;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SamsungSQLiteOpenHelper;->mSQLiteKeyStore:Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteKeyStore;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SamsungSQLiteOpenHelper;->mSecureSQLite:Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteClient;

    :try_start_0
    new-instance p1, Lcom/sec/android/app/sbrowser/common/sqlcipher/SamsungSQLiteOpenHelper$1;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p2, Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteConfiguration;->mDatabaseName:Ljava/lang/String;

    iget v7, p2, Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteConfiguration;->mDatabaseVersion:I

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/common/sqlcipher/SamsungSQLiteOpenHelper$1;-><init>(Lcom/sec/android/app/sbrowser/common/sqlcipher/SamsungSQLiteOpenHelper;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SamsungSQLiteOpenHelper;->mDelegate:Lcom/sec/sbrowser/spl/wrapper/SemSQLiteOpenHelper;
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "creation failed : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "SamsungSQLiteOpenHelper"

    invoke-static {p0, p1, p2}, Landroidx/recyclerview/widget/P;->q(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/common/sqlcipher/SamsungSQLiteOpenHelper;)Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteClient;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SamsungSQLiteOpenHelper;->mSecureSQLite:Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteClient;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SamsungSQLiteOpenHelper;->mDelegate:Lcom/sec/sbrowser/spl/wrapper/SemSQLiteOpenHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/wrapper/SemSQLiteOpenHelper;->close()V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "close failed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "SamsungSQLiteOpenHelper"

    invoke-static {p0, v0, v1}, Landroidx/recyclerview/widget/P;->q(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SamsungSQLiteOpenHelper;->mDelegate:Lcom/sec/sbrowser/spl/wrapper/SemSQLiteOpenHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SamsungSQLiteOpenHelper;->mSQLiteKeyStore:Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteKeyStore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteKeyStore;->getKey()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/SemSQLiteOpenHelper;->getReadableDatabase([B)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getReadableDatabase failed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SamsungSQLiteOpenHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/database/SQLException;

    invoke-direct {p0}, Landroid/database/SQLException;-><init>()V

    throw p0
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SamsungSQLiteOpenHelper;->mDelegate:Lcom/sec/sbrowser/spl/wrapper/SemSQLiteOpenHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SamsungSQLiteOpenHelper;->mSQLiteKeyStore:Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteKeyStore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteKeyStore;->getKey()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/SemSQLiteOpenHelper;->getWritableDatabase([B)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getWritableDatabase failed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SamsungSQLiteOpenHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/database/SQLException;

    invoke-direct {p0}, Landroid/database/SQLException;-><init>()V

    throw p0
.end method
