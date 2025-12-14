.class Lcom/sec/android/app/sbrowser/common/sqlcipher/SamsungSQLiteOpenHelper$1;
.super Lcom/sec/sbrowser/spl/wrapper/SemSQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/sqlcipher/SamsungSQLiteOpenHelper;-><init>(Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteClient;Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/sqlcipher/SamsungSQLiteOpenHelper;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/sqlcipher/SamsungSQLiteOpenHelper;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SamsungSQLiteOpenHelper$1;->this$0:Lcom/sec/android/app/sbrowser/common/sqlcipher/SamsungSQLiteOpenHelper;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sec/sbrowser/spl/wrapper/SemSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SamsungSQLiteOpenHelper$1;->this$0:Lcom/sec/android/app/sbrowser/common/sqlcipher/SamsungSQLiteOpenHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/sqlcipher/SamsungSQLiteOpenHelper;->a(Lcom/sec/android/app/sbrowser/common/sqlcipher/SamsungSQLiteOpenHelper;)Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteClient;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteClient;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SamsungSQLiteOpenHelper$1;->this$0:Lcom/sec/android/app/sbrowser/common/sqlcipher/SamsungSQLiteOpenHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/sqlcipher/SamsungSQLiteOpenHelper;->a(Lcom/sec/android/app/sbrowser/common/sqlcipher/SamsungSQLiteOpenHelper;)Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteClient;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteClient;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SamsungSQLiteOpenHelper$1;->this$0:Lcom/sec/android/app/sbrowser/common/sqlcipher/SamsungSQLiteOpenHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/sqlcipher/SamsungSQLiteOpenHelper;->a(Lcom/sec/android/app/sbrowser/common/sqlcipher/SamsungSQLiteOpenHelper;)Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteClient;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteClient;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SamsungSQLiteOpenHelper$1;->this$0:Lcom/sec/android/app/sbrowser/common/sqlcipher/SamsungSQLiteOpenHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/sqlcipher/SamsungSQLiteOpenHelper;->a(Lcom/sec/android/app/sbrowser/common/sqlcipher/SamsungSQLiteOpenHelper;)Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteClient;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteClient;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method
