.class public Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesProvider$MostVisitedSitesDbHelper;
    }
.end annotation


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

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesProvider;->mBatchOperationUriSet:Ljava/util/Set;

    return-void
.end method

.method private getTableName(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/16 p0, 0x64

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "most_visited_sites"

    return-object p0
.end method

.method private static declared-synchronized getUriMatcher()Landroid/content/UriMatcher;
    .locals 5

    const-class v0, Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesProvider;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesProvider;->sUriMatcher:Landroid/content/UriMatcher;

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.sec.android.app.sbrowser.beta.mostvisited"

    const-string v3, "most_visited_sites"

    const/16 v4, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesProvider;->sUriMatcher:Landroid/content/UriMatcher;
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

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesProvider;->mBatchOperationUriSet:Ljava/util/Set;

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v1, v0, [Landroid/content/ContentProviderResult;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesProvider;->mDbConnectionManager:Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;

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
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesProvider;->mDbConnectionManager:Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;->closeDatabase()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "MostVisitedSitesProvider"

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

    sget-object v6, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v5, v6, :cond_2

    iget-object v4, v4, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

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
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesProvider;->mBatchOperationUriSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-object v1

    :goto_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesProvider;->mDbConnectionManager:Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;->closeDatabase()V

    throw p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "delete : "

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesProvider;->getUriMatcher()Landroid/content/UriMatcher;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesProvider;->getTableName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "MostVisitedSitesProvider"

    if-eqz v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "delete failed for "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesProvider;->mDbConnectionManager:Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesProvider;->mBatchOperationUriSet:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesProvider;->mDbConnectionManager:Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;->closeDatabase()V

    goto :goto_2

    :goto_1
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    return v3

    :goto_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesProvider;->mDbConnectionManager:Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;->closeDatabase()V

    throw p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "insert : "

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesProvider;->getUriMatcher()Landroid/content/UriMatcher;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesProvider;->getTableName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "MostVisitedSitesProvider"

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "insert failed for "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesProvider;->mDbConnectionManager:Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2, v1, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long p2, v1, v5

    if-ltz p2, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesProvider;->mBatchOperationUriSet:Ljava/util/Set;

    invoke-interface {v5, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    if-gez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesProvider;->mDbConnectionManager:Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;->closeDatabase()V

    return-object v4

    :goto_2
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesProvider;->mDbConnectionManager:Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;->closeDatabase()V

    sget-object p0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    return-object p0

    :goto_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesProvider;->mDbConnectionManager:Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;->closeDatabase()V

    throw p1
.end method

.method public onCreate()Z
    .locals 4

    const-string v0, "MostVisitedSitesProvider"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesProvider$MostVisitedSitesDbHelper;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesProvider$MostVisitedSitesDbHelper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesProvider;->mDbConnectionManager:Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object v0, p0

    const-string v1, "MostVisitedSitesProvider"

    const-string v2, "query failed for "

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesProvider;->getUriMatcher()Landroid/content/UriMatcher;

    move-result-object v4

    move-object v5, p1

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesProvider;->getTableName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "score DESC"

    move-object v12, v2

    goto :goto_0

    :cond_1
    move-object/from16 v12, p5

    :goto_0
    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesProvider;->mDbConnectionManager:Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "query: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "update : "

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesProvider;->getUriMatcher()Landroid/content/UriMatcher;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesProvider;->getTableName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "MostVisitedSitesProvider"

    if-eqz v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "update failed for "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesProvider;->mDbConnectionManager:Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesProvider;->mBatchOperationUriSet:Ljava/util/Set;

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
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesProvider;->mDbConnectionManager:Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;->closeDatabase()V

    return p2

    :goto_1
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesProvider;->mDbConnectionManager:Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;->closeDatabase()V

    return v3

    :goto_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesProvider;->mDbConnectionManager:Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/db/DatabaseConnectionManager;->closeDatabase()V

    throw p1
.end method
