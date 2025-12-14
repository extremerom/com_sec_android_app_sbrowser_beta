.class Lcom/sec/android/app/sbrowser/common/sqlcipher/GoogleSQLiteOpenHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteOperationDelegate;


# instance fields
.field private final mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private final mSecureSQLite:Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteClient;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteClient;Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteConfiguration;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/GoogleSQLiteOpenHelper;->mSecureSQLite:Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteClient;

    new-instance p1, Lcom/sec/android/app/sbrowser/common/sqlcipher/GoogleSQLiteOpenHelper$1;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p2, Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteConfiguration;->mDatabaseName:Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p2, Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteConfiguration;->mDatabaseVersion:I

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/common/sqlcipher/GoogleSQLiteOpenHelper$1;-><init>(Lcom/sec/android/app/sbrowser/common/sqlcipher/GoogleSQLiteOpenHelper;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/GoogleSQLiteOpenHelper;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/common/sqlcipher/GoogleSQLiteOpenHelper;)Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteClient;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/GoogleSQLiteOpenHelper;->mSecureSQLite:Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteClient;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/GoogleSQLiteOpenHelper;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void
.end method

.method public getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/GoogleSQLiteOpenHelper;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/GoogleSQLiteOpenHelper;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method
