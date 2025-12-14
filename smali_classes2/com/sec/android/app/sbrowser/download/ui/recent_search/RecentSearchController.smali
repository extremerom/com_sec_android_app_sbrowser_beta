.class public Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final RECENT_SEARCH_PROJECTION:[Ljava/lang/String;

.field private static final RECENT_SEARCH_PROJECTION_PRIVATE:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "RecentSearchController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDbObserver:Landroid/database/ContentObserver;

.field mIsPrivate:Z

.field private final mRecentSearchUi:Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_id"

    const-string v1, "title"

    const-string v2, "time"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;->RECENT_SEARCH_PROJECTION:[Ljava/lang/String;

    const-string v1, "title_private"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;->RECENT_SEARCH_PROJECTION_PRIVATE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController$1;-><init>(Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;->mDbObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi;-><init>(Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;->mRecentSearchUi:Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;)Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;->mRecentSearchUi:Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi;

    return-object p0
.end method

.method public static addRecentSearchItem(Ljava/lang/String;Landroid/content/Context;)V
    .locals 6

    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentDownloadSearchDbProvider;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "title_private =?"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v2, "title_private"

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "title"

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v0, "time"

    invoke-virtual {v1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentDownloadSearchDbProvider;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public deleteAll()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;->mIsPrivate:Z

    if-eqz v0, :cond_0

    const-string v0, "title_private"

    goto :goto_0

    :cond_0
    const-string v0, "title"

    :goto_0
    const-string v1, " IS NOT NULL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentDownloadSearchDbProvider;->AUTHORITY_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public deleteItem(Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchItem;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentDownloadSearchDbProvider;->AUTHORITY_URI:Landroid/net/Uri;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;->mIsPrivate:Z

    if-eqz p0, :cond_0

    const-string p0, "title_private"

    goto :goto_0

    :cond_0
    const-string p0, "title"

    :goto_0
    const-string v2, " =?"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p0, p1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public getRecentResultList()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentDownloadSearchDbProvider;->AUTHORITY_URI:Landroid/net/Uri;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;->mIsPrivate:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;->RECENT_SEARCH_PROJECTION_PRIVATE:[Ljava/lang/String;

    :goto_0
    move-object v4, v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_6

    :cond_0
    sget-object v1, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;->RECENT_SEARCH_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    :goto_1
    const-string v7, "time DESC"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    :cond_1
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchItem;

    const-string v3, "_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;->mIsPrivate:Z

    if-eqz v4, :cond_2

    const-string v4, "title_private"

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_2
    const-string v4, "title"

    :goto_3
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "time"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchItem;-><init>(ILjava/lang/String;J)V

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_4
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v1

    :try_start_3
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p0

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_7

    :goto_6
    sget-object v1, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v1}, Landroidx/recyclerview/widget/P;->t(Ljava/lang/RuntimeException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_4
    :goto_7
    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;->mRecentSearchUi:Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi;->onAttach(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;->mIsPrivate:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentDownloadSearchDbProvider;->AUTHORITY_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;->mDbObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;->mRecentSearchUi:Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;->mRecentSearchUi:Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;->mDbObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;->mRecentSearchUi:Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public requestFocus()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;->mRecentSearchUi:Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi;->requestFocus()Z

    move-result p0

    return p0
.end method

.method public setRecentSearchCallback(Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi$RecentSearchCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;->mRecentSearchUi:Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi;->setRecentSearchCallback(Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi$RecentSearchCallback;)V

    return-void
.end method
