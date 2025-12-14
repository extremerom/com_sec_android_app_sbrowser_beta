.class public abstract Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteOpenHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final mHelper:Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteOperationDelegate;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteConfiguration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteOpenHelper$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteOpenHelper$1;-><init>(Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteOpenHelper;)V

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteOpenHelper;->createDelegate(Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteClient;Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteConfiguration;)Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteOperationDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteOpenHelper;->mHelper:Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteOperationDelegate;

    return-void
.end method

.method private createDelegate(Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteClient;Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteConfiguration;)Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteOperationDelegate;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->shouldUseAlternativeImplementationForSdp()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SamsungSQLiteOpenHelper;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/sqlcipher/SamsungSQLiteOpenHelper;-><init>(Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteClient;Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteConfiguration;)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/GoogleSQLiteOpenHelper;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/sqlcipher/GoogleSQLiteOpenHelper;-><init>(Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteClient;Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteConfiguration;)V

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteOpenHelper;->mHelper:Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteOperationDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteOperationDelegate;->close()V

    return-void
.end method

.method public getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteOpenHelper;->mHelper:Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteOperationDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteOperationDelegate;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getReadableDatabase failed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "SecureSQLiteOpenHelper"

    invoke-static {p0, v0, v1}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteOpenHelper;->mHelper:Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteOperationDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteOperationDelegate;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getWritableDatabase failed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "SecureSQLiteOpenHelper"

    invoke-static {p0, v0, v1}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    new-instance p0, Landroid/database/sqlite/SQLiteException;

    const-string p1, "Can\'t downgrade database from version "

    const-string v0, " to "

    invoke-static {p2, p1, p3, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->j(ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public abstract onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end method
