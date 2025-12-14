.class public Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentWebsiteSearchProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentWebsiteSearchProvider$RecentWebsiteSearchDbHelper;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mDbHelper:Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentWebsiteSearchProvider$RecentWebsiteSearchDbHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "content://com.sec.android.app.sbrowser.beta.recentWebsiteSearch"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentWebsiteSearchProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentWebsiteSearchProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "com.sec.android.app.sbrowser.beta.recentWebsiteSearch"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentWebsiteSearchProvider;->mDbHelper:Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentWebsiteSearchProvider$RecentWebsiteSearchDbHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentWebsiteSearchProvider$RecentWebsiteSearchDbHelper;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentWebsiteSearchProvider$RecentWebsiteSearchDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentWebsiteSearchProvider;->mDbHelper:Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentWebsiteSearchProvider$RecentWebsiteSearchDbHelper;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentWebsiteSearchProvider;->mDbHelper:Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentWebsiteSearchProvider$RecentWebsiteSearchDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method private getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentWebsiteSearchProvider;->mDbHelper:Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentWebsiteSearchProvider$RecentWebsiteSearchDbHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentWebsiteSearchProvider$RecentWebsiteSearchDbHelper;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentWebsiteSearchProvider$RecentWebsiteSearchDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentWebsiteSearchProvider;->mDbHelper:Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentWebsiteSearchProvider$RecentWebsiteSearchDbHelper;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentWebsiteSearchProvider;->mDbHelper:Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentWebsiteSearchProvider$RecentWebsiteSearchDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1    # Landroid/net/Uri;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentWebsiteSearchProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v1, Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentWebsiteSearchProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const-string v1, "recentWebsiteSearch"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    if-lez p2, :cond_1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_1
    return p2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown URI: "

    invoke-static {p2, p1}, LV0/c;->j(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5
    .param p1    # Landroid/net/Uri;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentWebsiteSearchProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentWebsiteSearchProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const-string v1, "recentWebsiteSearch"

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v0, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-gez p0, :cond_1

    return-object v0

    :cond_1
    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown URI: "

    invoke-static {p2, p1}, LV0/c;->j(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1    # Landroid/net/Uri;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentWebsiteSearchProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string p1, "recentWebsiteSearch"

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentWebsiteSearchProvider;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown URI"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
