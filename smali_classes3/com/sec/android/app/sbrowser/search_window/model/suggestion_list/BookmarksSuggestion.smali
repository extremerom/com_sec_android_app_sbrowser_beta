.class public Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/BookmarksSuggestion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/BookmarksSuggestion$OnBookmarksSuggestionItemsFetched;
    }
.end annotation


# instance fields
.field private mTask:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/BookmarksSuggestion;Landroid/content/Context;Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/BookmarksSuggestion$OnBookmarksSuggestionItemsFetched;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/BookmarksSuggestion;->lambda$fetchSuggestionItems$0(Landroid/content/Context;Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/BookmarksSuggestion$OnBookmarksSuggestionItemsFetched;Ljava/lang/String;)V

    return-void
.end method

.method private executeTask(Landroid/content/Context;Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/BookmarksSuggestion$OnBookmarksSuggestionItemsFetched;Ljava/lang/String;)V
    .locals 23

    const-string v0, "executeTask start"

    const-string v1, "BookmarksSuggestion"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getBookmarkContentUri(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v3

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "%"

    move-object/from16 v2, p3

    invoke-static {v0, v2, v0}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "TITLE"

    const-string v10, "URL"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "((TITLE LIKE ? ) AND (DELETED = 0) AND (FOLDER = 0) OR (URL LIKE ? ) AND (DELETED = 0) AND (FOLDER = 0))"

    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v6

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v7, "_ID LIMIT 2"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_3

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;

    sget-object v4, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->BOOKMARK_TITLE:Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;

    invoke-virtual {v4}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->nativeType()I

    move-result v12

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v13, 0x2bc

    const/4 v14, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v11, v3

    invoke-direct/range {v11 .. v22}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer;)V

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_3
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_3
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_4
    :goto_2
    move-object/from16 v2, p0

    goto :goto_4

    :goto_3
    const-string v2, "Exception : "

    invoke-static {v0, v2, v1}, Landroidx/recyclerview/widget/P;->r(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    const-string v0, "SQLiteException or CursorIndexOutOfBoundsException occurred"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_4
    iget-object v0, v2, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/BookmarksSuggestion;->mTask:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_5

    move-object/from16 v2, p2

    invoke-interface {v2, v8}, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/BookmarksSuggestion$OnBookmarksSuggestionItemsFetched;->onBookmarksSuggestionItemsFetched(Ljava/util/List;)V

    :cond_5
    const-string v0, "executeTask end"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$fetchSuggestionItems$0(Landroid/content/Context;Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/BookmarksSuggestion$OnBookmarksSuggestionItemsFetched;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/BookmarksSuggestion;->executeTask(Landroid/content/Context;Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/BookmarksSuggestion$OnBookmarksSuggestionItemsFetched;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clearIfRunning()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/BookmarksSuggestion;->mTask:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/BookmarksSuggestion;->mTask:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/BookmarksSuggestion;->mTask:Ljava/util/concurrent/Future;

    :cond_1
    return-void
.end method

.method public fetchSuggestionItems(Landroid/content/Context;Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/BookmarksSuggestion$OnBookmarksSuggestionItemsFetched;Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/BookmarksSuggestion;->clearIfRunning()V

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v7, LH6/a;

    const/4 v6, 0x3

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, LH6/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/BookmarksSuggestion;->mTask:Ljava/util/concurrent/Future;

    :cond_1
    :goto_0
    return-void
.end method
