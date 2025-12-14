.class public Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field private static sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mBatchOperationUriSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mDbConnectionManager:Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessProvider;->mBatchOperationUriSet:Ljava/util/Set;

    return-void
.end method

.method private getDbConnectionManager()Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessProvider;->mDbConnectionManager:Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;

    return-object p0
.end method

.method private getTableName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessProvider;->getUriMatcher()Landroid/content/UriMatcher;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p0

    const/16 p1, 0x3e8

    if-ne p0, p1, :cond_0

    const-string p0, "pintab"

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static declared-synchronized getUriMatcher()Landroid/content/UriMatcher;
    .locals 5

    const-class v0, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessProvider;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessProvider;->sUriMatcher:Landroid/content/UriMatcher;

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.sec.android.app.sbrowser.beta.quickaccesspinned"

    const-string v3, "pintab"

    const/16 v4, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessProvider;->sUriMatcher:Landroid/content/UriMatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private isSyncChanges(Landroid/net/Uri;)Z
    .locals 0

    const-string p0, "bookmark_sync_local_changes"

    invoke-virtual {p1, p0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "true"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 7
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentProviderOperation;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessProvider;->mBatchOperationUriSet:Ljava/util/Set;

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v1, v0, [Landroid/content/ContentProviderResult;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessProvider;->getDbConnectionManager()Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessProvider;->getDbConnectionManager()Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;->closeDatabase()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "QuickAccessProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyBatch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :goto_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    array-length v3, v1

    :goto_3
    if-ge v0, v3, :cond_4

    aget-object v4, v1, v0

    iget-object v5, v4, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    if-nez v5, :cond_2

    iget-object v4, v4, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_3

    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentProviderOperation;

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_4

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessProvider;->mBatchOperationUriSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-object v1

    :goto_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessProvider;->getDbConnectionManager()Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;->closeDatabase()V

    throw p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "delete: "

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessProvider;->getDbConnectionManager()Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessProvider;->isSyncChanges(Landroid/net/Uri;)Z

    move-result p3

    if-nez p3, :cond_1

    if-lez p2, :cond_1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessProvider;->mBatchOperationUriSet:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const/4 v1, 0x0

    invoke-virtual {p3, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessProvider;->getDbConnectionManager()Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;->closeDatabase()V

    return p2

    :goto_1
    :try_start_1
    const-string p2, "QuickAccessProvider"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessProvider;->getDbConnectionManager()Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;->closeDatabase()V

    return v3

    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessProvider;->getDbConnectionManager()Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;->closeDatabase()V

    throw p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "insert: "

    const-string v1, "failed value: "

    const-string v2, "rowId : "

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "QuickAccessProvider"

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    const-string p0, "tableName is null"

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessProvider;->getDbConnectionManager()Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const/4 v7, 0x4

    invoke-virtual {v4, v3, v6, p2, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v3

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-wide/16 v7, -0x1

    cmp-long v2, v3, v7

    if-nez v2, :cond_1

    const-string p1, "insert - invalid row id is returned"

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/sec/sbrowser/spl/wrapper/MajoLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessProvider;->getDbConnectionManager()Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;->closeDatabase()V

    return-object v6

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessProvider;->isSyncChanges(Landroid/net/Uri;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessProvider;->mBatchOperationUriSet:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_2
    invoke-static {p1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessProvider;->getDbConnectionManager()Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;->closeDatabase()V

    return-object p1

    :goto_0
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessProvider;->getDbConnectionManager()Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;->closeDatabase()V

    return-object v6

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessProvider;->getDbConnectionManager()Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;->closeDatabase()V

    throw p1
.end method

.method public onCreate()Z
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessDbHelper;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessDbHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessProvider;->mDbConnectionManager:Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "deleted = 0"

    move-object v6, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    move-object v6, p3

    :goto_0
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "position, url ASC"

    move-object v10, v0

    goto :goto_1

    :cond_2
    move-object/from16 v10, p5

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessProvider;->getDbConnectionManager()Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p2

    move-object v7, p4

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object v3, p1

    invoke-interface {v0, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "query: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QuickAccessProvider"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "update: "

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessProvider;->getDbConnectionManager()Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessProvider;->isSyncChanges(Landroid/net/Uri;)Z

    move-result p3

    if-nez p3, :cond_1

    if-lez p2, :cond_1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessProvider;->mBatchOperationUriSet:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p3, p1, p4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessProvider;->getDbConnectionManager()Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;->closeDatabase()V

    return p2

    :goto_1
    :try_start_1
    const-string p2, "QuickAccessProvider"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessProvider;->getDbConnectionManager()Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;->closeDatabase()V

    return v3

    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessProvider;->getDbConnectionManager()Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;->closeDatabase()V

    throw p1
.end method
