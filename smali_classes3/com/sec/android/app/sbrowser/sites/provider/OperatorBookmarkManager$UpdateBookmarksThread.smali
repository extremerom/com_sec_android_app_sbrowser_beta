.class Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$UpdateBookmarksThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateBookmarksThread"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mOperatorBookmarkParser:Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$UpdateBookmarksThread;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$UpdateBookmarksThread;->mOperatorBookmarkParser:Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;

    return-void
.end method

.method private getOpBookmarks()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$OpBookmarkInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "getOpBookmarks()"

    const-string v1, "OperatorBookmarkManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$UpdateBookmarksThread;->mOperatorBookmarkParser:Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;

    const-string v3, "Settings.Browser."

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$UpdateBookmarksThread;->mOperatorBookmarkParser:Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;

    const-string v4, "Bookmark"

    invoke-virtual {v3, v2, v4}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->getCurrentNetworkName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getOpBookmarks - current network : "

    invoke-static {v5, v4, v1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "NetworkName"

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$UpdateBookmarksThread;->mOperatorBookmarkParser:Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;

    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$UpdateBookmarksThread;->mOperatorBookmarkParser:Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;

    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "default"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$UpdateBookmarksThread;->mOperatorBookmarkParser:Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;

    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    const-string v7, "BookmarkName"

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$UpdateBookmarksThread;->mOperatorBookmarkParser:Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;

    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    const-string v8, "URL"

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    const-string v7, "google"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "{CID}"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$UpdateBookmarksThread;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/android/app/sbrowser/common/device/CidUtil;->getClientIdForEarlyAccess(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    :cond_3
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$UpdateBookmarksThread;->mOperatorBookmarkParser:Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;

    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    const-string v9, "Editable"

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$OpBookmarkInfo;

    invoke-direct {v8, v5, v6, v7}, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$OpBookmarkInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return-object v0
.end method

.method private insertOpBookmark(Landroid/content/ContentValues;)J
    .locals 5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$UpdateBookmarksThread;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v0, "OperatorBookmarkManager"

    const-wide/16 v1, -0x1

    if-nez p0, :cond_0

    const-string p0, "insertBookmark : DB is null. return"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_0
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v4, "FOLDER"

    invoke-virtual {p1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "DIRTY"

    invoke-virtual {p1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v3, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->OPERATOR:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->getNumVal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bookmark_type"

    invoke-virtual {p1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v3, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "PARENT"

    invoke-virtual {p1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_0
    const-string v3, "BOOKMARKS"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-wide v1
.end method

.method private removeOpBookmarks()I
    .locals 5

    const-string v0, "bookmark_type = "

    const-string v1, "removeOperatorBookmarks()"

    const-string v2, "OperatorBookmarkManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$UpdateBookmarksThread;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/provider/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "removeOperatorBookmarks : DB is null. return"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    const-string v3, "BOOKMARKS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->OPERATOR:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->getNumVal()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method private sendMessageForBookmarkRefresh()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->hasInstance()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->getBookmarkNotifierHandler()Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_OPERATOR_BOOKMARKS_ADDED:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->getValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string p0, "OperatorBookmarkManager"

    const-string v0, "refresh Bookmark list"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private shouldCheckGoogleBookmark()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->hasInstance()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$UpdateBookmarksThread;->updateOperatorBookmark()V

    return-void
.end method

.method public updateOperatorBookmark()V
    .locals 16
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deleted : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$UpdateBookmarksThread;->removeOpBookmarks()I

    move-result v2

    const-string v3, "OperatorBookmarkManager"

    invoke-static {v1, v2, v3}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$UpdateBookmarksThread;->getOpBookmarks()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/16 v4, -0x64

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, " insertion FAILED"

    const-string v7, "updateOperatorBookmark: "

    const-string v10, "POSITION"

    const-string v11, "DEVICE_NAME"

    const-string v12, "DEVICE_ID"

    const-string v13, "SURL"

    const-string v14, "TITLE"

    const-string v8, "editable"

    const-string v9, "URL"

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$OpBookmarkInfo;

    iget-object v15, v5, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$OpBookmarkInfo;->mTitle:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    iget-object v15, v5, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$OpBookmarkInfo;->mUrl:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    iget-object v15, v5, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$OpBookmarkInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v14, v5, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$OpBookmarkInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v9, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v5, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$OpBookmarkInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v13, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v5, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$OpBookmarkInfo;->mEditable:Ljava/lang/String;

    if-eqz v9, :cond_1

    const-string v13, "no"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_1
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$UpdateBookmarksThread;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v8, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {v0, v2}, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$UpdateBookmarksThread;->insertOpBookmark(Landroid/content/ContentValues;)J

    move-result-wide v9

    const-wide/16 v11, -0x1

    cmp-long v4, v9, v11

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$OpBookmarkInfo;->mTitle:Ljava/lang/String;

    invoke-static {v4, v5, v3}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$OpBookmarkInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move v4, v8

    goto/16 :goto_0

    :cond_3
    :goto_3
    const-string v5, "bookmark title or url is empty"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isEmanualSupported()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$UpdateBookmarksThread;->mOperatorBookmarkParser:Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;

    const-string v2, "Settings.Browser."

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$UpdateBookmarksThread;->mOperatorBookmarkParser:Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;

    const-string v5, "eManual"

    invoke-virtual {v2, v1, v5}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$UpdateBookmarksThread;->mOperatorBookmarkParser:Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;

    invoke-virtual {v2, v1, v9}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$UpdateBookmarksThread;->mContext:Landroid/content/Context;

    const v5, 0x7f140863

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$UpdateBookmarksThread;->mOperatorBookmarkParser:Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;

    invoke-virtual {v5, v1}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v5, v14, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v12, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$UpdateBookmarksThread;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v10, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {v0, v5}, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$UpdateBookmarksThread;->insertOpBookmark(Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v8, -0x1

    cmp-long v1, v4, v8

    if-eqz v1, :cond_5

    invoke-static {v7, v2, v3}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$UpdateBookmarksThread;->shouldCheckGoogleBookmark()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$UpdateBookmarksThread;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/sites/GoogleBookmarkUtil;->correctCountryGoolgeBookmark(Landroid/content/Context;)V

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$UpdateBookmarksThread;->sendMessageForBookmarkRefresh()V

    return-void
.end method
