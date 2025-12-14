.class public final Lcom/sec/android/app/sbrowser/cross_app_action/AppSchemaFunctionsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001a \u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0087@\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u001a,\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\u0001\u001a\u00020\u00002\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0087@\u00a2\u0006\u0004\u0008\n\u0010\u000b\u001a \u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000cH\u0087@\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u001a&\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00072\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0010H\u0087@\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u001a \u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0008H\u0087@\u00a2\u0006\u0004\u0008\u0016\u0010\u0017\u001a&\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00072\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0018H\u0087@\u00a2\u0006\u0004\u0008\u001b\u0010\u001c\u001a \u0010\u001f\u001a\u00020\u00152\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001dH\u0087@\u00a2\u0006\u0004\u0008\u001f\u0010 \u001a&\u0010$\u001a\u0008\u0012\u0004\u0012\u00020#0\u00072\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020!H\u0087@\u00a2\u0006\u0004\u0008$\u0010%\u001a \u0010\'\u001a\u00020\u00152\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010&\u001a\u00020\u0008H\u0087@\u00a2\u0006\u0004\u0008\'\u0010\u0017\u00a8\u0006("
    }
    d2 = {
        "Lz4/a;",
        "appFunctionContext",
        "Lcom/google/android/appfunctions/schema/common/v1/browser/CreateBookmarkParams;",
        "createBookmarkParams",
        "Lcom/google/android/appfunctions/schema/common/v1/browser/Bookmark;",
        "BrowserFunctions_createBookmark",
        "(Lz4/a;Lcom/google/android/appfunctions/schema/common/v1/browser/CreateBookmarkParams;Lib/c;)Ljava/lang/Object;",
        "",
        "",
        "bookmarkIds",
        "BrowserFunctions_deleteBookmarks",
        "(Lz4/a;Ljava/util/List;Lib/c;)Ljava/lang/Object;",
        "Lcom/google/android/appfunctions/schema/common/v1/browser/UpdateBookmarkParams;",
        "updateBookmarkParams",
        "BrowserFunctions_updateBookmark",
        "(Lz4/a;Lcom/google/android/appfunctions/schema/common/v1/browser/UpdateBookmarkParams;Lib/c;)Ljava/lang/Object;",
        "Lcom/google/android/appfunctions/schema/common/v1/browser/FindBookmarksParams;",
        "findBookmarksParams",
        "BrowserFunctions_findBookmarks",
        "(Lz4/a;Lcom/google/android/appfunctions/schema/common/v1/browser/FindBookmarksParams;Lib/c;)Ljava/lang/Object;",
        "bookmarkId",
        "Landroid/app/PendingIntent;",
        "BrowserFunctions_showBookmark",
        "(Lz4/a;Ljava/lang/String;Lib/c;)Ljava/lang/Object;",
        "Lcom/google/android/appfunctions/schema/common/v1/browser/GetHistoriesParams;",
        "getHistoriesParams",
        "Lcom/google/android/appfunctions/schema/common/v1/types/Uri;",
        "BrowserFunctions_getHistories",
        "(Lz4/a;Lcom/google/android/appfunctions/schema/common/v1/browser/GetHistoriesParams;Lib/c;)Ljava/lang/Object;",
        "Lcom/google/android/appfunctions/schema/common/v1/browser/ShowSiteParams;",
        "showSiteParams",
        "BrowserFunctions_showSite",
        "(Lz4/a;Lcom/google/android/appfunctions/schema/common/v1/browser/ShowSiteParams;Lib/c;)Ljava/lang/Object;",
        "Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;",
        "findTabsParams",
        "Lcom/google/android/appfunctions/schema/common/v1/browser/Tab;",
        "BrowserFunctions_findTabs",
        "(Lz4/a;Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;Lib/c;)Ljava/lang/Object;",
        "tabId",
        "BrowserFunctions_showTab",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final BrowserFunctions_createBookmark(Lz4/a;Lcom/google/android/appfunctions/schema/common/v1/browser/CreateBookmarkParams;Lib/c;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lz4/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/appfunctions/schema/common/v1/browser/CreateBookmarkParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/appfunctions/AppFunction;
    .end annotation

    .annotation build Lcom/google/android/appfunctions/schema/app/AppFunctionSchema;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/a;",
            "Lcom/google/android/appfunctions/schema/common/v1/browser/CreateBookmarkParams;",
            "Lib/c<",
            "-",
            "Lcom/google/android/appfunctions/schema/common/v1/browser/Bookmark;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;->createBookmark(Lz4/a;Lcom/google/android/appfunctions/schema/common/v1/browser/CreateBookmarkParams;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final BrowserFunctions_deleteBookmarks(Lz4/a;Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lz4/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/appfunctions/AppFunction;
    .end annotation

    .annotation build Lcom/google/android/appfunctions/schema/app/AppFunctionSchema;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/a;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lib/c<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;->deleteBookmarks(Lz4/a;Ljava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final BrowserFunctions_findBookmarks(Lz4/a;Lcom/google/android/appfunctions/schema/common/v1/browser/FindBookmarksParams;Lib/c;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lz4/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/appfunctions/schema/common/v1/browser/FindBookmarksParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/appfunctions/AppFunction;
    .end annotation

    .annotation build Lcom/google/android/appfunctions/schema/app/AppFunctionSchema;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/a;",
            "Lcom/google/android/appfunctions/schema/common/v1/browser/FindBookmarksParams;",
            "Lib/c<",
            "-",
            "Ljava/util/List<",
            "Lcom/google/android/appfunctions/schema/common/v1/browser/Bookmark;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;->findBookmarks(Lz4/a;Lcom/google/android/appfunctions/schema/common/v1/browser/FindBookmarksParams;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final BrowserFunctions_findTabs(Lz4/a;Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;Lib/c;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lz4/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/appfunctions/AppFunction;
    .end annotation

    .annotation build Lcom/google/android/appfunctions/schema/app/AppFunctionSchema;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/a;",
            "Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;",
            "Lib/c<",
            "-",
            "Ljava/util/List<",
            "Lcom/google/android/appfunctions/schema/common/v1/browser/Tab;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;->findTabs(Lz4/a;Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final BrowserFunctions_getHistories(Lz4/a;Lcom/google/android/appfunctions/schema/common/v1/browser/GetHistoriesParams;Lib/c;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lz4/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/appfunctions/schema/common/v1/browser/GetHistoriesParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/appfunctions/AppFunction;
    .end annotation

    .annotation build Lcom/google/android/appfunctions/schema/app/AppFunctionSchema;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/a;",
            "Lcom/google/android/appfunctions/schema/common/v1/browser/GetHistoriesParams;",
            "Lib/c<",
            "-",
            "Ljava/util/List<",
            "Lcom/google/android/appfunctions/schema/common/v1/types/Uri;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;->getHistories(Lz4/a;Lcom/google/android/appfunctions/schema/common/v1/browser/GetHistoriesParams;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final BrowserFunctions_showBookmark(Lz4/a;Ljava/lang/String;Lib/c;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lz4/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/appfunctions/AppFunction;
    .end annotation

    .annotation build Lcom/google/android/appfunctions/schema/app/AppFunctionSchema;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/a;",
            "Ljava/lang/String;",
            "Lib/c<",
            "-",
            "Landroid/app/PendingIntent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;->showBookmark(Lz4/a;Ljava/lang/String;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final BrowserFunctions_showSite(Lz4/a;Lcom/google/android/appfunctions/schema/common/v1/browser/ShowSiteParams;Lib/c;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lz4/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/appfunctions/schema/common/v1/browser/ShowSiteParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/appfunctions/AppFunction;
    .end annotation

    .annotation build Lcom/google/android/appfunctions/schema/app/AppFunctionSchema;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/a;",
            "Lcom/google/android/appfunctions/schema/common/v1/browser/ShowSiteParams;",
            "Lib/c<",
            "-",
            "Landroid/app/PendingIntent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;->showSite(Lz4/a;Lcom/google/android/appfunctions/schema/common/v1/browser/ShowSiteParams;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final BrowserFunctions_showTab(Lz4/a;Ljava/lang/String;Lib/c;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lz4/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/appfunctions/AppFunction;
    .end annotation

    .annotation build Lcom/google/android/appfunctions/schema/app/AppFunctionSchema;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/a;",
            "Ljava/lang/String;",
            "Lib/c<",
            "-",
            "Landroid/app/PendingIntent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;->showTab(Lz4/a;Ljava/lang/String;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final BrowserFunctions_updateBookmark(Lz4/a;Lcom/google/android/appfunctions/schema/common/v1/browser/UpdateBookmarkParams;Lib/c;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lz4/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/appfunctions/schema/common/v1/browser/UpdateBookmarkParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/appfunctions/AppFunction;
    .end annotation

    .annotation build Lcom/google/android/appfunctions/schema/app/AppFunctionSchema;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/a;",
            "Lcom/google/android/appfunctions/schema/common/v1/browser/UpdateBookmarkParams;",
            "Lib/c<",
            "-",
            "Lcom/google/android/appfunctions/schema/common/v1/browser/Bookmark;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;->updateBookmark(Lz4/a;Lcom/google/android/appfunctions/schema/common/v1/browser/UpdateBookmarkParams;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
