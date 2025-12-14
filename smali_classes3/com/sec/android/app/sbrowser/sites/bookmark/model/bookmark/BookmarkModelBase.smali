.class public Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mBookmarkModelListener:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;

.field private mBookmarkUri:Landroid/net/Uri;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->mBookmarkModelListener:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->lambda$addBookmark$2(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Z)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->lambda$getBookmarkItemForBookmarkID$0(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;Ljava/util/concurrent/CopyOnWriteArrayList;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->lambda$deleteBookmarks$4(Ljava/util/concurrent/CopyOnWriteArrayList;I)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->lambda$getBookmarkParent$1(J)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->lambda$editBookmark$3(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    return-void
.end method

.method private synthetic lambda$addBookmark$2(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Z)V
    .locals 10

    const-string v0, "BookmarkModelBase"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->isActivityDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/Surl;->getSurl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v4

    const-wide/16 v6, -0x5

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getPCOtherFolderId()J

    move-result-wide v2

    :cond_2
    move-wide v8, v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    move-object v2, p0

    move-wide v4, v8

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->checkDuplicated(ZJLjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getPosition(Ljava/lang/Long;Ljava/lang/Long;)I

    move-result v2

    const/4 v3, 0x0

    if-gez v2, :cond_4

    move v2, v3

    :cond_4
    const/4 v4, 0x1

    add-int/2addr v2, v4

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "PARENT"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "URL"

    invoke-virtual {v5, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "SURL"

    invoke-virtual {v5, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "TITLE"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->isEditable()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "EDITABLE"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getAccountType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->getNumVal()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "bookmark_type"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "FOLDER"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "POSITION"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v5, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModificationUtil;->addIconDetails(Landroid/content/ContentValues;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getAccountType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v5, p1, v3, v1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;->insertBookmarkSyncFieldsOnCreate(Landroid/content/ContentValues;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;ZLandroid/content/Context;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    if-eqz p1, :cond_5

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v8, v9}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getChildrenSize(J)I

    move-result p1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v5, p1, v6}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModificationUtil;->updateChildrenCount(Ljava/lang/Long;ILandroid/app/Activity;)V

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long p1, v5, v1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->getCloudSyncAutomatically()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/TipsUtils;->showJITIfNeeded(Landroid/content/Context;Z)Z

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkItem(Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkItem(Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setParentName(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setParentGUID(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->setPCFolderId(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    :cond_6
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setPrivate(Z)V

    if-eqz p2, :cond_7

    new-instance p2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkAddInfo;

    invoke-direct {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkAddInfo;-><init>()V

    iput-object v0, p2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkAddInfo;->item:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    const/4 v1, 0x2

    iput v1, p2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkAddInfo;->from:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstanceId(Landroid/app/Activity;)I

    move-result p1

    iput p1, p2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkAddInfo;->activityId:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->getBookmarkNotifierHandler()Landroid/os/Handler;

    move-result-object p1

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_ADD_SUCCESS:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->getValue()I

    move-result v1

    invoke-static {p1, v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->mContext:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    invoke-static {p2, v4}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getTotalBookmarksCount(Landroid/app/Activity;Z)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->mContext:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    invoke-static {p2, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->sendInsertMsgToSearch(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->getBookmarkNotifierHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->sendAddUpdateToWearable(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    :cond_7
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModificationUtil;->setBookmarkChangePref(Landroid/content/Context;)V

    goto :goto_1

    :cond_8
    const-string p0, "add bookmark failed"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_1
    return-void
.end method

.method private synthetic lambda$deleteBookmarks$4(Ljava/util/concurrent/CopyOnWriteArrayList;I)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    new-instance v6, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;

    invoke-direct {v6}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;->success_ids:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    iput v0, v6, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;->total_count:I

    move/from16 v0, p2

    iput v0, v6, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;->activityId:I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v9

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getBookmarkContentUri(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getBookmarkMap(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/common/collect/I;

    move-result-object v10

    const/4 v0, 0x0

    :goto_0
    const/4 v12, 0x1

    if-ge v0, v9, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->isEditable()Z

    move-result v13

    if-eqz v13, :cond_0

    iget v13, v6, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;->success_count:I

    add-int/2addr v13, v12

    iput v13, v6, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;->success_count:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    const-string v11, "BookmarkModelBase"

    if-ge v13, v9, :cond_e

    invoke-virtual {v2, v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getId()Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkItem(Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v12

    if-nez v12, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->isEditable()Z

    move-result v16

    if-nez v16, :cond_3

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    move-object/from16 v21, v3

    move-object/from16 v18, v4

    move/from16 v16, v9

    goto/16 :goto_b

    :cond_3
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move/from16 v16, v9

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getAccountType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    move-result-object v9

    invoke-virtual {v1, v12}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->setOriginalParentId(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    if-nez v0, :cond_6

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v0

    move-object/from16 v18, v4

    sget-object v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v0, v4, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_5

    const/4 v4, 0x1

    iput-boolean v4, v6, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;->isFolder:Z

    :cond_5
    :goto_4
    move v4, v0

    goto :goto_5

    :cond_6
    move-object/from16 v18, v4

    goto :goto_4

    :goto_5
    if-nez v15, :cond_8

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v0

    sget-object v15, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->URL:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v0, v15, :cond_7

    const/4 v15, 0x1

    goto :goto_6

    :cond_7
    const/4 v15, 0x0

    :goto_6
    if-eqz v15, :cond_8

    move/from16 v19, v4

    const/4 v4, 0x1

    iput-boolean v4, v6, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;->isUrl:Z

    goto :goto_7

    :cond_8
    move/from16 v19, v4

    :goto_7
    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->DEVICE:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    const-string v4, "_ID = ?"

    if-eq v9, v0, :cond_9

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->OPERATOR:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    if-eq v9, v0, :cond_9

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    if-ne v9, v0, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->syncRequired(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_a

    :cond_9
    move-object/from16 v21, v3

    move/from16 v20, v15

    goto :goto_8

    :cond_a
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    move/from16 v20, v15

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v21, v3

    const-string v3, "DELETED"

    invoke-virtual {v8, v3, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v3, "IS_COMMITED"

    invoke-virtual {v8, v3, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v15, "MODIFIED"

    invoke-virtual {v8, v15, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-ne v9, v0, :cond_b

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "DIRTY"

    invoke-virtual {v8, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "SYNC5"

    invoke-virtual {v8, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_b
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v3, v8, v4, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :goto_8
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v3, v4, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    const/4 v3, 0x0

    :goto_a
    if-lez v3, :cond_c

    add-int/2addr v14, v3

    iget-object v0, v6, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;->success_ids:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_d
    move/from16 v0, v19

    move/from16 v15, v20

    :goto_b
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p1

    move/from16 v9, v16

    move-object/from16 v4, v18

    move-object/from16 v3, v21

    const/4 v12, 0x1

    goto/16 :goto_1

    :cond_e
    move-object/from16 v21, v3

    move-object/from16 v18, v4

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getChildrenSize(J)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModificationUtil;->updateChildrenCount(Ljava/lang/Long;ILandroid/app/Activity;)V

    goto :goto_c

    :cond_f
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v6, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;->non_editable_count:I

    if-lez v14, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v3, v21

    invoke-static {v2, v3, v10}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->sendDeleteMsgToSearch(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/google/common/collect/I;)V

    const/4 v2, 0x1

    iput-boolean v2, v6, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;->success:Z

    goto :goto_d

    :cond_10
    const/4 v2, 0x0

    iput-boolean v2, v6, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;->success:Z

    const-string v2, " deleteBookmarks : failed delete operation "

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->getBookmarkNotifierHandler()Landroid/os/Handler;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_DELETED_MULTIPLE_URLS:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->getValue()I

    move-result v3

    invoke-static {v2, v3, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->getBookmarkNotifierHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v3, v18

    invoke-static {v2, v0, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->sendDeleteUpdateToWearable(Landroid/content/Context;ZLjava/util/HashMap;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getTotalBookmarksCount(Landroid/app/Activity;Z)V

    return-void
.end method

.method private synthetic lambda$editBookmark$3(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .locals 10

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->setOriginalParentId(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkItem(Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->isActivityDestroyed()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getHandler()Landroid/os/Handler;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_EDIT_FAIL:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->getValue()I

    move-result v0

    invoke-static {p1, v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->setOriginalParentId(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "chrome://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/utils/Surl;->getSurl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x0

    move-object v4, p0

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->checkDuplicated(ZJLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    return-void

    :cond_4
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_5

    const-string v4, "FAVICON"

    new-array v6, v5, [B

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v4, "TOUCH_ICON"

    new-array v6, v5, [B

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "DOMINANT_COLOR"

    invoke-virtual {v0, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->isActivityDestroyed()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_URL_NOT_VALID:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->getValue()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_7
    :goto_2
    return-void

    :cond_8
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "3017"

    const-string v7, "302"

    if-nez v4, :cond_9

    const-string v4, "2"

    invoke-static {v7, v6, v4}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "1"

    invoke-static {v7, v6, v4}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-string v4, "TITLE"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "SURL"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "URL"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "PARENT"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "MODIFIED"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v6

    cmp-long v3, v3, v6

    if-eqz v3, :cond_b

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getPosition(Ljava/lang/Long;Ljava/lang/Long;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "POSITION"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_b
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getAccountType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v6, "pref_extension_url"

    invoke-interface {v4, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getAccountType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    move-result-object v2

    sget-object v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->DEVICE:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    if-ne v2, v4, :cond_c

    sget-object v3, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->getNumVal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "bookmark_type"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "ACCOUNT_NAME"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccountName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ACCOUNT_TYPE"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccountType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;->insertBookmarkSyncFieldsOnUpdate(Landroid/content/ContentValues;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;Landroid/content/Context;)V

    const-string v2, "_ID = ? AND DELETED = ? AND IS_COMMITED = ?"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v3, v4, v6}, [Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6, v0, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v2, "BookmarkModelBase"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    int-to-long v2, v5

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkItem(Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-eqz p1, :cond_e

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkItem(Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p1

    if-nez p1, :cond_d

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkRoot()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setParentName(Ljava/lang/String;)V

    goto :goto_4

    :cond_d
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setParentName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getGUID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setParentGUID(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getChildrenSize(J)I

    move-result p1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModificationUtil;->updateChildrenCount(Ljava/lang/Long;ILandroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->setOriginalParentId(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getChildrenSize(J)I

    move-result p1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModificationUtil;->updateChildrenCount(Ljava/lang/Long;ILandroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->setPCFolderId(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->getBookmarkNotifierHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_EDIT_PARENT_SUCCESS:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->getValue()I

    move-result v2

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    goto :goto_5

    :cond_e
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkItem(Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setParentName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getGUID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setParentGUID(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setPrivate(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->getBookmarkNotifierHandler()Landroid/os/Handler;

    move-result-object p1

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_EDIT_SUCCESS:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->getValue()I

    move-result v1

    invoke-static {p1, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    :goto_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->sendEditUpdateToWearable(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->sendEditMsgToSearch(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->getBookmarkNotifierHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModificationUtil;->setBookmarkChangePref(Landroid/content/Context;)V

    goto :goto_6

    :cond_10
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->isActivityDestroyed()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_6

    :cond_11
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_EDIT_FAIL:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->getValue()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    nop

    :cond_12
    :goto_6
    return-void
.end method

.method private synthetic lambda$getBookmarkItemForBookmarkID$0(Ljava/lang/Long;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkItem(Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkItem(Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setParentName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getGUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setGUID(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkRoot()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setParentName(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->isActivityDestroyed()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_SET_ID:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->getValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    :goto_2
    return-void
.end method

.method private synthetic lambda$getBookmarkParent$1(J)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->isActivityDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants;->INVALID_BOOKMARK_ID:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkItem(Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->isActivityDestroyed()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getHandler()Landroid/os/Handler;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getHandler()Landroid/os/Handler;

    move-result-object p2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_SET_PARENT_ID:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->getValue()I

    move-result v0

    invoke-static {p2, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public addBookmark(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Z)V
    .locals 2

    new-instance v0, Lcom/google/firebase/messaging/p;

    const/4 v1, 0x7

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/firebase/messaging/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->runBookmarkDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public checkDuplicated(ZJLjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, p4, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getBookmarkFolderItemId(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-static {p5, p4, p2, p3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->getBookmarkURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p2

    if-eqz p2, :cond_3

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->isActivityDestroyed()Z

    move-result p0

    if-nez p0, :cond_2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_DUPLICATE_FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->getValue()I

    move-result p0

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_DUPLICATE_URL:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->getValue()I

    move-result p0

    :goto_1
    const/4 p1, 0x0

    invoke-static {p2, p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public convertCursorToBookmarkItem(Landroid/database/Cursor;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;
    .locals 18
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "SYNC4"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PC_BOOKMARK_BAR"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    const-string v6, "_ID"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-string v6, "FOLDER"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->URL:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    :goto_1
    move-object v9, v6

    goto :goto_2

    :cond_1
    sget-object v6, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    goto :goto_1

    :goto_2
    if-eqz v5, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkStringUtil;->getBookmarkBarFolderString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    move-object v10, v6

    goto :goto_4

    :cond_2
    const-string v6, "TITLE"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :goto_4
    const-string v6, "SURL"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v6, "PARENT"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    if-eqz v5, :cond_4

    if-nez v5, :cond_3

    :goto_5
    move v14, v4

    goto :goto_6

    :cond_3
    move v14, v3

    goto :goto_6

    :cond_4
    const-string v5, "EDITABLE"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_5

    :goto_6
    const-string v3, "bookmark_type"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->getAccountTypeForValue(I)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    move-result-object v15

    const-string v3, "CREATED"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v7 .. v17}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->create(JLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;Ljava/lang/String;Ljava/lang/String;JZLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;J)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v3

    const-string v4, "MODIFIED"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setUpdatedTime(J)V

    const-string v4, "guid"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setGUID(Ljava/lang/String;)V

    const-string v4, "POSITION"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setPosition(I)V

    invoke-virtual {v3, v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setSYNC4Value(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getPCOtherFolderId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    if-eqz v1, :cond_6

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    const-wide/16 v1, -0x5

    invoke-virtual {v3, v1, v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setParentId(J)V

    :cond_6
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->URL:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v1, v2, :cond_9

    const-string v1, "TOUCH_ICON"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    if-eqz v1, :cond_7

    array-length v2, v1

    if-lez v2, :cond_7

    invoke-virtual {v3, v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setTouchicon([B)V

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->isTouchiconAvailable()Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "DOMINANT_COLOR"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-eqz v2, :cond_8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {v3, v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setDominantColor(I)V

    goto :goto_7

    :cond_8
    const-string v1, "FAVICON"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setDominantColor([B)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v5

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getDominantColor()I

    move-result v0

    int-to-long v7, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getUri()Landroid/net/Uri;

    move-result-object v9

    invoke-static/range {v4 .. v9}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->updateDominantColor(Landroid/app/Activity;JJLandroid/net/Uri;)V

    :cond_9
    :goto_7
    return-object v3
.end method

.method public deleteBookmarks(Ljava/util/concurrent/CopyOnWriteArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, LB2/a;

    const/4 v1, 0x7

    invoke-direct {v0, p0, p1, p2, v1}, LB2/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->runBookmarkDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public editBookmark(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/main_activity/a;

    const/16 v1, 0x17

    invoke-direct {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/main_activity/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->runBookmarkDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    return-object p0
.end method

.method public getBookmarkItem(Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;
    .locals 23

    const-string v1, "BookmarkModelBase"

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getRootNodeId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkRoot()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v5, "_ID = ? AND DELETED = ? AND IS_COMMITED = ?"

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v3, v2}, [Ljava/lang/String;

    move-result-object v6

    const-string v21, "MODIFIED"

    const-string v22, "SYNC4"

    const-string v7, "_ID"

    const-string v8, "SURL"

    const-string v9, "TITLE"

    const-string v10, "TOUCH_ICON"

    const-string v11, "EDITABLE"

    const-string v12, "bookmark_type"

    const-string v13, "FOLDER"

    const-string v14, "PARENT"

    const-string v15, "POSITION"

    const-string v16, "CHILDREN_COUNT"

    const-string v17, "guid"

    const-string v18, "FAVICON"

    const-string v19, "DOMINANT_COLOR"

    const-string v20, "CREATED"

    filled-new-array/range {v7 .. v22}, [Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->convertCursorToBookmarkItem(Landroid/database/Cursor;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_3
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    const-string v0, "Error in add bookmark getBookmark query."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    if-nez v8, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "item is null for id "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v8
.end method

.method public getBookmarkItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;
    .locals 26

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz p4, :cond_0

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v0, "TITLE = ? AND PARENT = ? AND DELETED = ?"

    move-object v8, v0

    move-object v9, v2

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v3

    aput-object p2, v4, v1

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "TITLE = ? AND SURL = ? AND PARENT = ? AND DELETED = ?"

    move-object v8, v0

    move-object v9, v4

    :goto_0
    const-string v24, "MODIFIED"

    const-string v25, "SYNC4"

    const-string v10, "_ID"

    const-string v11, "SURL"

    const-string v12, "TITLE"

    const-string v13, "TOUCH_ICON"

    const-string v14, "EDITABLE"

    const-string v15, "bookmark_type"

    const-string v16, "FOLDER"

    const-string v17, "PARENT"

    const-string v18, "POSITION"

    const-string v19, "CHILDREN_COUNT"

    const-string v20, "guid"

    const-string v21, "FAVICON"

    const-string v22, "DOMINANT_COLOR"

    const-string v23, "CREATED"

    filled-new-array/range {v10 .. v25}, [Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getUri()Landroid/net/Uri;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->convertCursorToBookmarkItem(Landroid/database/Cursor;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

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

    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    const-string v0, "BookmarkModelBase"

    const-string v2, "Error in add bookmark getBookmark query."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_3
    return-object v1
.end method

.method public getBookmarkItemForBookmarkID(Ljava/lang/Long;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/main_activity/a;

    const/16 v1, 0x16

    invoke-direct {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/main_activity/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->runBookmarkDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getBookmarkParent(J)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/trans/h;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/sec/android/app/sbrowser/extensions/trans/h;-><init>(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->runBookmarkDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getBookmarkRoot()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->getBookmarkRoot(Landroid/net/Uri;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p0

    return-object p0
.end method

.method public getBookmarksHierarchy()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase$1;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->runBookmarkDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getChildrenSize(J)I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p1, p2, v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->getChildrenSize(JLandroid/content/Context;Landroid/net/Uri;)I

    move-result p0

    return p0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->mBookmarkModelListener:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;->getHandler()Landroid/os/Handler;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getOrCreatePCOtherFolderId(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getPCOtherFolderId()J

    move-result-wide v0

    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants;->INVALID_BOOKMARK_ID:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModificationUtil;->createPCOtherBookmarkFolder(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public getPCBookmarkBarId()J
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->getPCBookmarkBarId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPCOtherFolderId()J
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->getPCOtherFolderId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPosition(Ljava/lang/Long;Ljava/lang/Long;)I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p1, p2, v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getPosition(Ljava/lang/Long;Ljava/lang/Long;Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result p0

    return p0
.end method

.method public getRootNodeId()J
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkRoot()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->mBookmarkUri:Landroid/net/Uri;

    return-object p0
.end method

.method public isActivityDestroyed()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->mBookmarkModelListener:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;->isActivityDestroyed()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public runBookmarkDbThread(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkThread;->getBookmarkThread()Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkThread;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setOriginalParentId(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v0

    const-wide/16 v2, -0x5

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getSYNC4()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PC_BOOKMARK_BAR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setParentId(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getPCOtherFolderId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setParentId(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPCFolderId(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .locals 2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->getPCOtherFolderId()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const-wide/16 p0, -0x5

    invoke-virtual {p2, p0, p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setParentId(J)V

    :cond_0
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->mBookmarkUri:Landroid/net/Uri;

    return-void
.end method

.method public unRegisterListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->mBookmarkModelListener:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;

    return-void
.end method
