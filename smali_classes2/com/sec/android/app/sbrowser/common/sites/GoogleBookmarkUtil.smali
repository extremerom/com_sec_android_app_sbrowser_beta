.class public Lcom/sec/android/app/sbrowser/common/sites/GoogleBookmarkUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sConvertedUrl:Ljava/lang/String;

.field private static sOriginalUrl:Ljava/lang/String;


# direct methods
.method public static correctCountryGoolgeBookmark(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/sites/GoogleBookmarkUtil;->hasCountryGoolgeUrlInCsc(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/sites/GoogleBookmarkUtil;->correctCountryGoolgeBookmarkInternal(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private static correctCountryGoolgeBookmarkInternal(Landroid/content/Context;)V
    .locals 5

    sget-object v0, Lcom/sec/android/app/sbrowser/common/sites/GoogleBookmarkUtil;->sConvertedUrl:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/sites/GoogleBookmarkUtil;->getCorrectUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "SURL"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SURL = ? AND DELETED = ? AND bookmark_type = ?"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->OPERATOR:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->getNumVal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v3, Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants;->BOOKMARK_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v2, v1, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "GoogleBookmarkUtil"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static getCorrectUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/sites/GoogleBookmarkUtil;->sOriginalUrl:Ljava/lang/String;

    const-string v1, "{CID}"

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/CidUtil;->getClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getGoolgeUrlInCsc(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    new-instance v0, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;-><init>()V

    const-string v1, "Settings.Browser."

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const-string v3, "Bookmark"

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    const-string v6, "URL"

    invoke-virtual {v0, v5, v6}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v6, "google"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "{CID}"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    sput-object v5, Lcom/sec/android/app/sbrowser/common/sites/GoogleBookmarkUtil;->sOriginalUrl:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/CidUtil;->getClientIdForEarlyAccess(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, v6, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/sec/android/app/sbrowser/common/sites/GoogleBookmarkUtil;->sConvertedUrl:Ljava/lang/String;

    return-object p0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private static hasCountryGoolgeUrlInCsc(Landroid/content/Context;)Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/CidUtil;->getClientIdForEarlyAccess(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "{country}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/sites/GoogleBookmarkUtil;->getGoolgeUrlInCsc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method
