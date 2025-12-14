.class public abstract Lcom/sec/sbrowser/spl/wrapper/SemSQLiteOpenHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mWrappedHelper:Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v6, Lcom/sec/sbrowser/spl/wrapper/SemSQLiteOpenHelper$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/sbrowser/spl/wrapper/SemSQLiteOpenHelper$1;-><init>(Lcom/sec/sbrowser/spl/wrapper/SemSQLiteOpenHelper;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v6, p0, Lcom/sec/sbrowser/spl/wrapper/SemSQLiteOpenHelper;->mWrappedHelper:Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "creation failed : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemSQLiteOpenHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/sec/sbrowser/spl/util/FallbackException;

    invoke-direct {p0}, Lcom/sec/sbrowser/spl/util/FallbackException;-><init>()V

    throw p0
.end method


# virtual methods
.method public close()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/sec/sbrowser/spl/wrapper/SemSQLiteOpenHelper;->mWrappedHelper:Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;

    invoke-virtual {p0}, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "close failed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemSQLiteOpenHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/sec/sbrowser/spl/util/FallbackException;

    invoke-direct {p0}, Lcom/sec/sbrowser/spl/util/FallbackException;-><init>()V

    throw p0
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/sec/sbrowser/spl/wrapper/SemSQLiteOpenHelper;->mWrappedHelper:Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;

    invoke-virtual {p0}, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getDatabaseName failed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemSQLiteOpenHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/sec/sbrowser/spl/util/FallbackException;

    invoke-direct {p0}, Lcom/sec/sbrowser/spl/util/FallbackException;-><init>()V

    throw p0
.end method

.method public getReadableDatabase([B)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/sec/sbrowser/spl/wrapper/SemSQLiteOpenHelper;->mWrappedHelper:Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;

    invoke-virtual {p0, p1}, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->getReadableDatabase([B)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getReadableDatabase failed : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemSQLiteOpenHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/sec/sbrowser/spl/util/FallbackException;

    invoke-direct {p0}, Lcom/sec/sbrowser/spl/util/FallbackException;-><init>()V

    throw p0
.end method

.method public getWritableDatabase([B)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/sec/sbrowser/spl/wrapper/SemSQLiteOpenHelper;->mWrappedHelper:Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;

    invoke-virtual {p0, p1}, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->getWritableDatabase([B)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getWritableDatabase failed : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemSQLiteOpenHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/sec/sbrowser/spl/util/FallbackException;

    invoke-direct {p0}, Lcom/sec/sbrowser/spl/util/FallbackException;-><init>()V

    throw p0
.end method

.method public abstract onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public abstract onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end method
