.class Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteOpenHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteOpenHelper;-><init>(Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteOpenHelper;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteOpenHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteOpenHelper$1;->this$0:Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteOpenHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteOpenHelper$1;->this$0:Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteOpenHelper;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteOpenHelper$1;->this$0:Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteOpenHelper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteOpenHelper$1;->this$0:Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteOpenHelper;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteOpenHelper$1;->this$0:Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteOpenHelper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/sqlcipher/SecureSQLiteOpenHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method
