.class Lcom/sec/sbrowser/spl/wrapper/SemSQLiteOpenHelper$1;
.super Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/sbrowser/spl/wrapper/SemSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/sbrowser/spl/wrapper/SemSQLiteOpenHelper;


# direct methods
.method public constructor <init>(Lcom/sec/sbrowser/spl/wrapper/SemSQLiteOpenHelper;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/sbrowser/spl/wrapper/SemSQLiteOpenHelper$1;->this$0:Lcom/sec/sbrowser/spl/wrapper/SemSQLiteOpenHelper;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/sbrowser/spl/wrapper/SemSQLiteOpenHelper$1;->this$0:Lcom/sec/sbrowser/spl/wrapper/SemSQLiteOpenHelper;

    invoke-virtual {p0, p1}, Lcom/sec/sbrowser/spl/wrapper/SemSQLiteOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/sbrowser/spl/wrapper/SemSQLiteOpenHelper$1;->this$0:Lcom/sec/sbrowser/spl/wrapper/SemSQLiteOpenHelper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/sbrowser/spl/wrapper/SemSQLiteOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/sbrowser/spl/wrapper/SemSQLiteOpenHelper$1;->this$0:Lcom/sec/sbrowser/spl/wrapper/SemSQLiteOpenHelper;

    invoke-virtual {p0, p1}, Lcom/sec/sbrowser/spl/wrapper/SemSQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/sbrowser/spl/wrapper/SemSQLiteOpenHelper$1;->this$0:Lcom/sec/sbrowser/spl/wrapper/SemSQLiteOpenHelper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/sbrowser/spl/wrapper/SemSQLiteOpenHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method
