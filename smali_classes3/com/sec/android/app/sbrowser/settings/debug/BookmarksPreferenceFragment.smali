.class public Lcom/sec/android/app/sbrowser/settings/debug/BookmarksPreferenceFragment;
.super Lw2/A;
.source "SourceFile"


# instance fields
.field private mBookmarksHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lw2/A;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/debug/c;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/settings/debug/c;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/BookmarksPreferenceFragment;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/BookmarksPreferenceFragment;->mBookmarksHandler:Landroid/os/Handler;

    return-void
.end method

.method private cleanUpAbnormalBookmarks()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    const-string v1, "Start cleaning up abnormal bookmarks"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/debug/u;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/settings/debug/u;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getBookmarkUri()Landroid/net/Uri;
    .locals 2

    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants;->BOOKMARK_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "bookmark_sync_local_changes"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/settings/debug/BookmarksPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/BookmarksPreferenceFragment;->lambda$cleanUpAbnormalBookmarks$2()V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/settings/debug/BookmarksPreferenceFragment;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/BookmarksPreferenceFragment;->lambda$new$0(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/settings/debug/BookmarksPreferenceFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/BookmarksPreferenceFragment;->lambda$onActivityCreated$1(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$cleanUpAbnormalBookmarks$2()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/debug/BookmarksPreferenceFragment;->removeDuplicateItems()I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/BookmarksPreferenceFragment;->removeInvalidParentIdItems()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/BookmarksPreferenceFragment;->mBookmarksHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/os/Message;)Z
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-string p0, "BookmarksPreferenceFragment"

    const-string p1, "mBookmarksHandler.handleMessage - Incorrect msg"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    const-string p1, "Finished cleaning up abnormal bookmarks"

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return v0
.end method

.method private synthetic lambda$onActivityCreated$1(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/BookmarksPreferenceFragment;->cleanUpAbnormalBookmarks()V

    const/4 p0, 0x0

    return p0
.end method

.method private removeInvalidParentIdItems()V
    .locals 21

    const-string v1, "BookmarksPreferenceFragment"

    const-string v2, "removeInvalidParentIdItems cursor error : "

    const-string v0, "removeInvalidParentIdItems maxFolderCount : "

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v10, "DELETED = ? AND IS_COMMITED = ? AND bookmark_type = ?"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->getNumVal()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v12

    const-string v13, "_ID"

    const-string v14, "PARENT"

    const-string v15, "FOLDER"

    filled-new-array {v13, v14, v15}, [Ljava/lang/String;

    move-result-object v16

    const-string v7, "FOLDER = ? AND DELETED = ?"

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const/4 v6, 0x0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/settings/debug/BookmarksPreferenceFragment;->getBookmarkUri()Landroid/net/Uri;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v4, v3

    move-object v11, v6

    move-object/from16 v6, v18

    move-object v11, v9

    move-object/from16 v9, v19

    :try_start_1
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v6, :cond_0

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :catch_0
    move-exception v0

    const/4 v4, 0x0

    goto :goto_3

    :cond_0
    const/4 v4, 0x0

    :goto_0
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    move v0, v4

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    const/4 v6, 0x0

    goto/16 :goto_c

    :catch_2
    move-exception v0

    :goto_2
    const/4 v4, 0x0

    const/4 v6, 0x0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v11, v9

    goto :goto_2

    :goto_3
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :goto_4
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/settings/debug/BookmarksPreferenceFragment;->getBookmarkUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v9, 0x0

    move-object v4, v3

    move-object/from16 v6, v16

    move-object v7, v10

    move-object v8, v12

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    if-eqz v2, :cond_5

    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    new-instance v4, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkSet;

    invoke-direct {v4}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkSet;-><init>()V

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v4, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkSet;->mParentId:Ljava/lang/Long;

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v4, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkSet;->mFolder:I

    invoke-virtual {v11, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v3, v0

    const/4 v11, 0x0

    goto/16 :goto_7

    :cond_2
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeInvalidParentIdItems count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v4, :cond_5

    const/16 v20, 0x0

    :cond_3
    :try_start_7
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    sget-object v8, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v8

    cmp-long v8, v6, v8

    if-eqz v8, :cond_4

    sget-object v8, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->MY_DEVICE:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v8

    cmp-long v8, v6, v8

    if-eqz v8, :cond_4

    sget-object v8, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->FIREFOX:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v8

    cmp-long v8, v6, v8

    if-eqz v8, :cond_4

    sget-object v8, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->NONE:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v8

    cmp-long v8, v6, v8

    if-eqz v8, :cond_4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v8, v4, v0, v11, v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->isValidParent(Ljava/lang/Long;Ljava/lang/Long;ILjava/util/HashMap;Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/settings/debug/BookmarksPreferenceFragment;->getBookmarkUri()Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_ID = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move/from16 v20, v17

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v3, v0

    move/from16 v11, v20

    goto :goto_7

    :cond_4
    const/4 v6, 0x0

    :goto_6
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-nez v4, :cond_3

    move/from16 v11, v20

    goto :goto_9

    :goto_7
    :try_start_8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object v2, v0

    :try_start_9
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw v3

    :catch_4
    move-exception v0

    goto :goto_a

    :cond_5
    const/4 v11, 0x0

    :goto_9
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_b

    :catch_5
    move-exception v0

    const/4 v11, 0x0

    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "removeInvalidParentIdItems error : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v1}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_6
    :goto_b
    if-eqz v11, :cond_7

    const-string v0, "removeInvalidParentIdItems : Removed."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const-string v0, "removeInvalidParentIdItems finish"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_c
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    throw v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    const v0, 0x7f14028c

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    const p1, 0x7f180012

    invoke-virtual {p0, p1}, Lw2/A;->addPreferencesFromResource(I)V

    const-string p1, "Clean up abnormal bookmarks"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/a;-><init>(Lw2/A;I)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public removeDuplicateItems()I
    .locals 35

    const-string v1, "_ID = "

    const-string v2, "TITLE"

    const-string v3, "SYNC5"

    const-string v4, "SYNC1"

    const-string v5, "PARENT"

    const-string v6, "_ID"

    const-string v7, "BookmarksPreferenceFragment"

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v22, "SYNC5"

    const-string v23, "CREATED"

    const-string v15, "_ID"

    const-string v16, "URL"

    const-string v17, "TITLE"

    const-string v18, "FOLDER"

    const-string v19, "PARENT"

    const-string v20, "DELETED"

    const-string v21, "SYNC1"

    filled-new-array/range {v15 .. v23}, [Ljava/lang/String;

    move-result-object v15

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "DELETED!= 1 AND FOLDER = 0 AND bookmark_type = "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->getNumVal()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    const/4 v10, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/settings/debug/BookmarksPreferenceFragment;->getBookmarkUri()Landroid/net/Uri;

    move-result-object v9

    const-string v0, " _ID ASC"
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_5

    const/16 v18, 0x0

    move-object v8, v14

    move-object v10, v15

    move-object/from16 v19, v12

    move-object/from16 v12, v18

    move-object/from16 v18, v7

    move-object v7, v13

    move-object v13, v0

    :try_start_1
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v13, :cond_6

    move/from16 v12, v17

    :goto_0
    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v13, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v13, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v13, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    move-object/from16 v21, v2

    move v2, v12

    move-object/from16 v22, v13

    move-object/from16 v11, v18

    const/4 v13, 0x0

    goto/16 :goto_c

    :cond_1
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "URL"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    if-eqz v27, :cond_0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v11, "DELETED != ? AND FOLDER = ? AND URL = ? AND TITLE = ? AND PARENT = ? AND SYNC5 = ? AND _ID != ? AND bookmark_type = ?"

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v29

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v31

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->getNumVal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v32

    filled-new-array/range {v25 .. v32}, [Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/settings/debug/BookmarksPreferenceFragment;->getBookmarkUri()Landroid/net/Uri;

    move-result-object v9
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    const/16 v20, 0x0

    move-object v8, v14

    move-object v10, v15

    move-object/from16 v21, v2

    move v2, v12

    move-object v12, v0

    move-object/from16 v22, v13

    move-object/from16 v13, v20

    :try_start_4
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v8, :cond_3

    move v12, v2

    :goto_1
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/settings/debug/BookmarksPreferenceFragment;->getBookmarkUri()Landroid/net/Uri;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v13, 0x0

    :try_start_6
    invoke-virtual {v14, v2, v0, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    add-int/2addr v12, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_2
    move-object v2, v0

    goto :goto_3

    :catchall_1
    move-exception v0

    const/4 v13, 0x0

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    goto :goto_5

    :goto_3
    :try_start_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v8, v0

    :try_start_8
    invoke-virtual {v2, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v2

    :catchall_3
    move-exception v0

    move-object v2, v0

    move/from16 v17, v12

    move-object/from16 v11, v18

    goto/16 :goto_d

    :catch_0
    move-exception v0

    goto :goto_8

    :cond_3
    const/4 v13, 0x0

    move v12, v2

    :goto_5
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_4
    move-object/from16 v11, v18

    goto :goto_9

    :catchall_4
    move-exception v0

    :goto_6
    const/4 v13, 0x0

    move/from16 v17, v2

    move-object/from16 v11, v18

    :goto_7
    move-object v2, v0

    goto/16 :goto_d

    :catch_1
    move-exception v0

    const/4 v13, 0x0

    move v12, v2

    goto :goto_8

    :catchall_5
    move-exception v0

    move-object/from16 v21, v2

    move v2, v12

    move-object/from16 v22, v13

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v21, v2

    move v2, v12

    move-object/from16 v22, v13

    const/4 v13, 0x0

    :goto_8
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    move-object/from16 v11, v18

    :try_start_a
    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :goto_9
    move-object/from16 v18, v11

    move-object/from16 v2, v21

    move-object/from16 v13, v22

    goto/16 :goto_0

    :catchall_6
    move-exception v0

    :goto_a
    move-object v2, v0

    move/from16 v17, v12

    goto :goto_d

    :catchall_7
    move-exception v0

    move-object/from16 v11, v18

    goto :goto_a

    :catchall_8
    move-exception v0

    move-object/from16 v21, v2

    move v2, v12

    move-object/from16 v22, v13

    move-object/from16 v11, v18

    const/4 v13, 0x0

    :goto_b
    move/from16 v17, v2

    goto :goto_7

    :goto_c
    move v12, v2

    goto :goto_9

    :cond_5
    move-object/from16 v21, v2

    move v2, v12

    move-object/from16 v22, v13

    move-object/from16 v11, v18

    const/4 v13, 0x0

    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "duplicate entries : removed : "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    move/from16 v17, v2

    goto :goto_f

    :catchall_9
    move-exception v0

    goto :goto_b

    :goto_d
    :try_start_c
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    goto :goto_e

    :catchall_a
    move-exception v0

    move-object v8, v0

    :try_start_d
    invoke-virtual {v2, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e
    throw v2

    :catch_3
    move-exception v0

    goto :goto_10

    :cond_6
    move-object/from16 v21, v2

    move-object/from16 v22, v13

    move-object/from16 v11, v18

    const/4 v13, 0x0

    :goto_f
    if-eqz v22, :cond_7

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_3

    goto :goto_11

    :catch_4
    move-exception v0

    move-object/from16 v21, v2

    move-object/from16 v11, v18

    const/4 v13, 0x0

    goto :goto_10

    :catch_5
    move-exception v0

    move-object/from16 v21, v2

    move-object v11, v7

    move-object/from16 v19, v12

    move-object v7, v13

    move-object v13, v10

    :goto_10
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_11
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DELETED!= 1 AND FOLDER = 1 AND bookmark_type = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->getNumVal()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_e
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/settings/debug/BookmarksPreferenceFragment;->getBookmarkUri()Landroid/net/Uri;

    move-result-object v9

    const-string v2, " _ID ASC"
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_b

    const/4 v12, 0x0

    move-object v8, v14

    move-object v10, v15

    move-object/from16 v33, v11

    move-object v11, v0

    move-object/from16 v18, v1

    move-object v1, v13

    move-object v13, v2

    :try_start_f
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_a

    if-eqz v2, :cond_e

    move/from16 v13, v17

    :goto_12
    :try_start_10
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_13

    if-eqz v0, :cond_d

    :try_start_11
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    :goto_13
    move/from16 v34, v13

    move-object/from16 v12, v18

    move-object/from16 v10, v19

    move-object/from16 v8, v33

    goto/16 :goto_1e

    :cond_8
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v12, v21

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_c

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const-string v11, "DELETED != ? AND FOLDER = ? AND TITLE = ? AND PARENT = ? AND SYNC5 = ? AND _ID != ?"

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    filled-new-array/range {v20 .. v25}, [Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_14

    :try_start_12
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/settings/debug/BookmarksPreferenceFragment;->getBookmarkUri()Landroid/net/Uri;

    move-result-object v9
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_8
    .catchall {:try_start_12 .. :try_end_12} :catchall_11

    const/16 v20, 0x0

    move-object v8, v14

    move-object v10, v15

    move-object/from16 v21, v12

    move-object v12, v0

    move/from16 v34, v13

    move-object/from16 v13, v20

    :try_start_13
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_7
    .catchall {:try_start_13 .. :try_end_13} :catchall_10

    if-eqz v8, :cond_a

    move/from16 v13, v34

    :goto_14
    :try_start_14
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentValues;->clear()V

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_d

    move-object/from16 v10, v19

    :try_start_15
    invoke-virtual {v10, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/settings/debug/BookmarksPreferenceFragment;->getBookmarkUri()Landroid/net/Uri;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PARENT = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v9, v10, v11, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/settings/debug/BookmarksPreferenceFragment;->getBookmarkUri()Landroid/net/Uri;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    move-object/from16 v12, v18

    :try_start_16
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v9, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    add-int/2addr v13, v0

    move-object/from16 v19, v10

    move-object/from16 v18, v12

    goto :goto_14

    :catchall_b
    move-exception v0

    :goto_15
    move-object v9, v0

    goto :goto_16

    :catchall_c
    move-exception v0

    move-object/from16 v12, v18

    goto :goto_15

    :catchall_d
    move-exception v0

    move-object/from16 v12, v18

    move-object/from16 v10, v19

    goto :goto_15

    :cond_9
    move-object/from16 v12, v18

    move-object/from16 v10, v19

    goto :goto_18

    :goto_16
    :try_start_17
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_e

    goto :goto_17

    :catchall_e
    move-exception v0

    move-object v8, v0

    :try_start_18
    invoke-virtual {v9, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_17
    throw v9

    :catchall_f
    move-exception v0

    move-object v1, v0

    move/from16 v17, v13

    move-object/from16 v8, v33

    goto/16 :goto_1f

    :catch_6
    move-exception v0

    goto :goto_1b

    :cond_a
    move-object/from16 v12, v18

    move-object/from16 v10, v19

    move/from16 v13, v34

    :goto_18
    if-eqz v8, :cond_b

    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_18} :catch_6
    .catchall {:try_start_18 .. :try_end_18} :catchall_f

    :cond_b
    move-object/from16 v8, v33

    goto :goto_1c

    :catchall_10
    move-exception v0

    :goto_19
    move-object v1, v0

    move-object/from16 v8, v33

    :goto_1a
    move/from16 v17, v34

    goto/16 :goto_1f

    :catch_7
    move-exception v0

    move-object/from16 v12, v18

    move-object/from16 v10, v19

    move/from16 v13, v34

    goto :goto_1b

    :catchall_11
    move-exception v0

    move/from16 v34, v13

    goto :goto_19

    :catch_8
    move-exception v0

    move-object/from16 v21, v12

    move/from16 v34, v13

    move-object/from16 v12, v18

    move-object/from16 v10, v19

    :goto_1b
    :try_start_19
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_13

    move-object/from16 v8, v33

    :try_start_1a
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_12

    :goto_1c
    move-object/from16 v33, v8

    move-object/from16 v19, v10

    move-object/from16 v18, v12

    goto/16 :goto_12

    :catchall_12
    move-exception v0

    :goto_1d
    move-object v1, v0

    move/from16 v17, v13

    goto :goto_1f

    :catchall_13
    move-exception v0

    move-object/from16 v8, v33

    goto :goto_1d

    :catchall_14
    move-exception v0

    move/from16 v34, v13

    move-object/from16 v8, v33

    move-object v1, v0

    goto :goto_1a

    :cond_c
    move-object/from16 v21, v12

    goto/16 :goto_13

    :goto_1e
    move-object/from16 v33, v8

    move-object/from16 v19, v10

    move-object/from16 v18, v12

    move/from16 v13, v34

    goto/16 :goto_12

    :cond_d
    move/from16 v34, v13

    move-object/from16 v8, v33

    :try_start_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "duplicate entries : updated : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_15

    move/from16 v13, v34

    :try_start_1c
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_12

    move/from16 v17, v13

    goto :goto_21

    :catchall_15
    move-exception v0

    move/from16 v13, v34

    goto :goto_1d

    :goto_1f
    :try_start_1d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_16

    goto :goto_20

    :catchall_16
    move-exception v0

    move-object v2, v0

    :try_start_1e
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_20
    throw v1

    :catch_9
    move-exception v0

    goto :goto_22

    :cond_e
    move-object/from16 v8, v33

    :goto_21
    if-eqz v2, :cond_f

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e .. :try_end_1e} :catch_9

    goto :goto_23

    :catch_a
    move-exception v0

    move-object/from16 v8, v33

    goto :goto_22

    :catch_b
    move-exception v0

    move-object v8, v11

    :goto_22
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_23
    return v17
.end method
