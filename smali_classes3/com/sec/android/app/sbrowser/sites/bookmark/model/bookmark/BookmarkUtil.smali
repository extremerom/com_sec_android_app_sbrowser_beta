.class public Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Landroid/app/Activity;LH6/o;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkUtil;->lambda$showSuccessToast$1(Landroid/app/Activity;LH6/o;)V

    return-void
.end method

.method public static synthetic b([BIILandroid/app/Activity;J)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkUtil;->lambda$updateFavicon$0([BIILandroid/app/Activity;J)V

    return-void
.end method

.method private static synthetic lambda$showSuccessToast$1(Landroid/app/Activity;LH6/o;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, LH6/o;->l()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$updateFavicon$0([BIILandroid/app/Activity;J)V
    .locals 6

    const-string v0, "BookmarkUtil"

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "FAVICON"

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    if-eq p1, p2, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "DOMINANT_COLOR"

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->syncRequired(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "DIRTY"

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    const-string p0, "SYNC1"

    invoke-virtual {v1, p0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string p0, "_ID = ? AND DELETED = ? AND IS_COMMITED = ?"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v2, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getBookmarkContentUri(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {v4, p3, v1, p0, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-nez v3, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "updateDominantColor failed for id "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    if-eq p2, p1, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->getBookmarkNotifierHandler()Landroid/os/Handler;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_ICON_UPDATED:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->getValue()I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->getBookmarkNotifierHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    :goto_2
    return-void
.end method

.method private static safeTruncate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    if-gt v0, p1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "..."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static sendJsonResult(Ljava/lang/String;Lorg/json/JSONArray;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "result"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "bookmarks"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "[searchBookmarks]"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BookmarkUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;->onComplete(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static showAlertDialogOnOrientation(Lm/l;Landroid/app/Activity;)V
    .locals 1

    if-eqz p0, :cond_3

    const v0, 0x7f140001

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lm/l;->f:Lm/j;

    iput-object p1, v0, Lm/j;->e:Ljava/lang/CharSequence;

    iget-object v0, v0, Lm/j;->x:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p1, -0x3

    invoke-virtual {p0, p1}, Lm/l;->g(I)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_1

    const v0, 0x7f140251

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lm/l;->g(I)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_2

    const v0, 0x7f14025c

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    const/4 p1, -0x2

    invoke-virtual {p0, p1}, Lm/l;->g(I)Landroid/widget/Button;

    move-result-object p0

    if-eqz p0, :cond_3

    const p1, 0x7f14005e

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    return-void
.end method

.method public static showSuccessToast(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Landroid/app/Activity;Z)V
    .locals 7

    const v0, 0x7f140284

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x3c

    if-lt v2, v3, :cond_0

    const/16 v2, 0x3b

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkUtil;->safeTruncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const v2, 0x7f1403ec

    if-nez p2, :cond_3

    sget-object p2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v5

    cmp-long p2, v3, v5

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentGUID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkStringUtil;->getUpdatedStrings(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0x14

    if-lt p2, v0, :cond_2

    const/16 p2, 0x13

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkUtil;->safeTruncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    :cond_2
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0x64

    const/4 v1, -0x1

    if-lt p2, v0, :cond_4

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x63

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkUtil;->safeTruncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, v1, v1}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object p0

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-static {p2, p0, v1, v1}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object p0

    :goto_2
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/main_activity/a;

    const/16 v1, 0x1a

    invoke-direct {v0, v1, p1, p0}, Lcom/sec/android/app/sbrowser/main_activity/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 p0, 0x12c

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static updateFavicon(Landroid/app/Activity;J[BII)V
    .locals 8

    new-instance v7, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/h;

    move-object v0, v7

    move-object v1, p3

    move v2, p4

    move v3, p5

    move-object v4, p0

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/h;-><init>([BIILandroid/app/Activity;J)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkThread;->getBookmarkThread()Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkThread;

    move-result-object p0

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method
