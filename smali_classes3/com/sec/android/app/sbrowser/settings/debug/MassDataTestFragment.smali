.class public Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;
.super Lw2/A;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;
    }
.end annotation


# instance fields
.field private mMassSavePageTestHelper:Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;

.field private mRand:Ljava/util/Random;

.field mTestNotificationBody:Ljava/lang/String;

.field mTestNotificationOrigin:Ljava/lang/String;

.field mTestNotificationPersID:Ljava/lang/String;

.field mTestNotificationTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lw2/A;-><init>()V

    const-string v0, "Test notification"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;->mTestNotificationTitle:Ljava/lang/String;

    const-string v0, "https://pushalert.co/"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;->mTestNotificationOrigin:Ljava/lang/String;

    const-string v0, "This is a test notification"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;->mTestNotificationBody:Ljava/lang/String;

    const-string v0, "p#https://pushalert.co/#01000"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;->mTestNotificationPersID:Ljava/lang/String;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;->mRand:Ljava/util/Random;

    return-void
.end method

.method private addNotificationDataToDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 22

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    const-string v3, "Error "

    const-string v4, "MassDataTestFragment"

    const-string v5, "read"

    const-string v6, "time"

    const-string v7, "descreption"

    const-string v8, "url"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".webPushNotification"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "content://"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/notifications"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    const-string v0, "persid = ?"

    filled-new-array/range {p6 .. p6}, [Ljava/lang/String;

    move-result-object v14

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/4 v13, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v11, Lcom/sec/android/app/sbrowser/settings/debug/NotificationProviderConstants;->NOTIFICATIONS_PROJECTION:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v20, 0x0

    move-object v10, v15

    move-object v12, v0

    move-object v13, v14

    move-object/from16 v21, v4

    move-object v4, v14

    move-object/from16 v14, v20

    :try_start_1
    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v13, :cond_1

    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_1

    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v9, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "seen"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, v15, v9, v0, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    return-void

    :cond_1
    if-eqz v13, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object/from16 v4, v21

    goto :goto_3

    :catchall_1
    move-exception v0

    const/4 v13, 0x0

    goto/16 :goto_7

    :catch_1
    move-exception v0

    :goto_1
    const/4 v13, 0x0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v21, v4

    goto :goto_1

    :goto_2
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v4, v21

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_3
    :try_start_4
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "title"

    move-object/from16 v11, p1

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tag"

    move-object/from16 v2, p3

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "persid"

    move-object/from16 v2, p6

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "domain"

    invoke-virtual {v9, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "clicked"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p4, :cond_4

    const-string v0, "icon"

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_5

    :cond_4
    :goto_4
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_3

    :try_start_5
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v15, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_6

    :catch_4
    move-exception v0

    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_6

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    return-void

    :goto_7
    if-eqz v13, :cond_5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private createMassBookmarks(IIZZ)V
    .locals 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Start saving massive bookmarks"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v3, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$3;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;)V

    invoke-direct {v3, v0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants;->BOOKMARK_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->setUri(Landroid/net/Uri;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/h;

    move-object v1, v0

    move-object v2, p0

    move v4, p2

    move v5, p4

    move v6, p1

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/settings/debug/h;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;IZIZ)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkThread;->getBookmarkThread()Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkThread;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private createMassBookmarksTestDialog()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lm/k;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lm/k;-><init>(Landroid/content/Context;)V

    const-string v1, "Saving massive bookmarks"

    invoke-virtual {v0, v1}, Lm/k;->setTitle(Ljava/lang/CharSequence;)Lm/k;

    iget-object v1, v0, Lm/k;->a:Lm/h;

    const-string v2, "Enter how many bookmarks you want to save. (1 ~ 1000)"

    iput-object v2, v1, Lm/h;->f:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e04a4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm/k;->setView(Landroid/view/View;)Lm/k;

    const v2, 0x7f0b06d1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v3, 0x7f0b06d2

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    new-instance v4, Lcom/sec/android/app/sbrowser/settings/debug/g;

    invoke-direct {v4, p0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/settings/debug/g;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;Landroid/view/View;Landroid/widget/EditText;Landroid/widget/EditText;)V

    const p0, 0x7f14084e

    invoke-virtual {v0, p0, v4}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    new-instance p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;

    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;-><init>(I)V

    const v1, 0x7f1402c1

    invoke-virtual {v0, v1, p0}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    invoke-virtual {v0}, Lm/k;->f()Lm/l;

    return-void
.end method

.method private createMassHistory()V
    .locals 13

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Start saving massive history"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Lcom/sec/terrace/browser/history/TerraceHistoryModel;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$1;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;)V

    invoke-direct {v0, v1}, Lcom/sec/terrace/browser/history/TerraceHistoryModel;-><init>(Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v1, 0x1

    :goto_0
    const/16 v5, 0x258

    if-gt v1, v5, :cond_0

    int-to-long v5, v1

    add-long v10, v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "https://www.test"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ".com/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9, v10, v11}, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->addHistoryItem(Ljava/lang/String;J)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;

    move-result-object v7

    const/4 v12, 0x1

    move-object v8, v9

    invoke-virtual/range {v7 .. v12}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->insertFromLocal(Ljava/lang/String;Ljava/lang/String;JI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "Finish saving massive history"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private createMassNotifications(I)V
    .locals 12

    if-gtz p1, :cond_0

    const-string p0, "MassDataTestFragment"

    const-string p1, "[saveMassiveNotifications] - parameter is wrong"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Start saving massive notifications"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    add-int/lit8 v2, p1, 0x1

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;->mTestNotificationTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;->mTestNotificationOrigin:Ljava/lang/String;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;->mTestNotificationBody:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;->mTestNotificationPersID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v8, ""

    const/4 v9, 0x0

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;->addNotificationDataToDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private createMassSavePageTestDialog()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lm/k;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lm/k;-><init>(Landroid/content/Context;)V

    const-string v1, "Saving massive pages"

    invoke-virtual {v0, v1}, Lm/k;->setTitle(Ljava/lang/CharSequence;)Lm/k;

    iget-object v1, v0, Lm/k;->a:Lm/h;

    const-string v2, "Enter how many pages you want to save. (1 ~ 100)\nPlease note that the Mass data test screen must be kept open until the required number of pages are saved."

    iput-object v2, v1, Lm/h;->f:Ljava/lang/CharSequence;

    new-instance v1, Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    invoke-virtual {v0, v1}, Lm/k;->setView(Landroid/view/View;)Lm/k;

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/debug/k;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const p0, 0x7f14084e

    invoke-virtual {v0, p0, v2}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    new-instance p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;

    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;-><init>(I)V

    const v1, 0x7f1402c1

    invoke-virtual {v0, v1, p0}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    invoke-virtual {v0}, Lm/k;->f()Lm/l;

    return-void
.end method

.method private createOldHistory()V
    .locals 13

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Start saving old history"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Lcom/sec/terrace/browser/history/TerraceHistoryModel;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$2;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;)V

    invoke-direct {v0, v1}, Lcom/sec/terrace/browser/history/TerraceHistoryModel;-><init>(Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide v5, 0x1ca55fc00L

    sub-long/2addr v3, v5

    const/4 v1, 0x1

    :goto_0
    const/4 v5, 0x5

    if-gt v1, v5, :cond_0

    int-to-long v5, v1

    add-long v10, v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "https://www.89days_ago"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ".com/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9, v10, v11}, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->addHistoryItem(Ljava/lang/String;J)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;

    move-result-object v7

    const/4 v12, 0x1

    move-object v8, v9

    invoke-virtual/range {v7 .. v12}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->insertFromLocal(Ljava/lang/String;Ljava/lang/String;JI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "Finish saving old history"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private getMassSavePageTestHelper()Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;->mMassSavePageTestHelper:Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;->mMassSavePageTestHelper:Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;->mMassSavePageTestHelper:Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;

    return-object p0
.end method

.method private getRandomParentId(Ljava/util/ArrayList;)J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;->mRand:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;->lambda$onActivityCreated$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;->lambda$onActivityCreated$4(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;->lambda$onActivityCreated$3(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;->lambda$onActivityCreated$2(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;Landroid/view/View;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;->lambda$createMassBookmarksTestDialog$7(Landroid/view/View;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic lambda$createMassBookmarks$9(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;IZIZ)V
    .locals 19

    move-object/from16 v1, p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkRoot()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestUtils;->getBookmarkFolderIds(Landroid/app/Activity;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestUtils;->getLastBookmarkId(Landroid/app/Activity;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x1

    move v7, v6

    :goto_0
    add-int/lit8 v0, p2, 0x1

    if-ge v7, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "Folder"

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v8

    goto :goto_1

    :cond_0
    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;->getRandomParentId(Ljava/util/ArrayList;)J

    move-result-wide v8

    :goto_1
    int-to-long v10, v7

    add-long/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "PARENT"

    invoke-virtual {v12, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "_ID"

    invoke-virtual {v12, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "TITLE"

    invoke-virtual {v12, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v8, "FOLDER"

    invoke-virtual {v12, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v0, v8, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v8, "MassDataTestFragment"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    move v0, v6

    :goto_3
    add-int/lit8 v4, p4, 0x1

    if-ge v0, v4, :cond_3

    if-eqz p5, :cond_2

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;->getRandomParentId(Ljava/util/ArrayList;)J

    move-result-wide v4

    :goto_4
    move-wide v13, v4

    goto :goto_5

    :cond_2
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v4

    goto :goto_4

    :goto_5
    new-instance v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    sget-object v5, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants;->INVALID_BOOKMARK_ID:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sget-object v10, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->URL:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Google"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v5, "http://www.google.com/search?q="

    invoke-static {v0, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget-object v16, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    const-wide/16 v17, 0x0

    const/4 v15, 0x1

    move-object v7, v4

    invoke-direct/range {v7 .. v18}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;-><init>(JLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;Ljava/lang/String;Ljava/lang/String;JZLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;J)V

    const/4 v5, 0x0

    move-object/from16 v7, p1

    invoke-virtual {v7, v4, v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->addBookmark(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method private synthetic lambda$createMassBookmarksTestDialog$7(Landroid/view/View;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 2

    const p5, 0x7f0b06d4

    invoke-virtual {p1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/CheckBox;

    const v0, 0x7f0b06d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "0"

    if-eqz v0, :cond_0

    move-object p2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p5

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-direct {p0, p2, p3, p5, p1}, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;->createMassBookmarks(IIZZ)V

    invoke-interface {p4}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$createMassBookmarksTestDialog$8(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$createMassSavePageTestDialog$5(Landroidx/appcompat/widget/AppCompatEditText;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;->getMassSavePageTestHelper()Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;->b(Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;I)V

    :cond_1
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$createMassSavePageTestDialog$6(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onActivityCreated$0(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;->createMassSavePageTestDialog()V

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onActivityCreated$1(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;->createMassHistory()V

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onActivityCreated$2(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;->createOldHistory()V

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onActivityCreated$3(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;->createMassBookmarksTestDialog()V

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onActivityCreated$4(Landroidx/preference/Preference;)Z
    .locals 0

    const/16 p1, 0x1f4

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;->createMassNotifications(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic m(Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;IZIZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;->lambda$createMassBookmarks$9(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;IZIZ)V

    return-void
.end method

.method public static synthetic n(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;->lambda$createMassBookmarksTestDialog$8(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic o(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;->lambda$createMassSavePageTestDialog$6(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic p(Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;->lambda$onActivityCreated$1(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic q(Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;Landroidx/appcompat/widget/AppCompatEditText;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;->lambda$createMassSavePageTestDialog$5(Landroidx/appcompat/widget/AppCompatEditText;Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "MassDataTestFragment"

    const-string v0, "[onActivityCreated]"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    const v0, 0x7f140a0c

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    const p1, 0x7f180047

    invoke-virtual {p0, p1}, Lw2/A;->addPreferencesFromResource(I)V

    const-string p1, "pref_create_massive_saved_pages"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/f;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;I)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    :cond_1
    const-string p1, "pref_create_massive_history"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/f;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/f;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;I)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    :cond_2
    const-string p1, "pref_create_old_history"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/f;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/f;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;I)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    :cond_3
    const-string p1, "pref_create_massive_bookmarks"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/f;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/f;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;I)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    :cond_4
    const-string p1, "pref_create_massive_notifications"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/f;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/f;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;I)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    :cond_5
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;->mMassSavePageTestHelper:Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;->mMassSavePageTestHelper:Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method
