.class public Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageContextMenuDelegate;
.implements Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$SavedPageDeleteTask;
    }
.end annotation


# static fields
.field public static final SAVED_PAGES_PROJECTION:[Ljava/lang/String;

.field public static final SAVED_PAGES_SEARCH_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mIsSavedPageDeleteRunning:Z

.field private mSavedPageDeleteList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedPageDeleteTask:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$SavedPageDeleteTask;

.field private mSavedPageItemList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedPageView:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;

.field private mShowUnsyncedIcon:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v9, "sync1"

    const-string v10, "created"

    const-string v0, "_id"

    const-string v1, "path"

    const-string v2, "dir_path"

    const-string v3, "title"

    const-string v4, "description"

    const-string v5, "url"

    const-string v6, "device_id"

    const-string v7, "isReadingItem"

    const-string v8, "image_style"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->SAVED_PAGES_PROJECTION:[Ljava/lang/String;

    const-string v6, "created"

    const-string v7, "favicon"

    const-string v1, "_id"

    const-string v2, "path"

    const-string v3, "title"

    const-string v4, "description"

    const-string v5, "url"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->SAVED_PAGES_SEARCH_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageDeleteList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->lambda$setSearchData$0()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageDeleteList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private clearSavedPagesList()V
    .locals 2

    const-string v0, "SavedPageController"

    const-string v1, "SavedPage clearSavedPagesList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->destroy()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mShowUnsyncedIcon:Z

    :cond_2
    :goto_1
    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->deleteSavedPageFile(Ljava/lang/String;)V

    return-void
.end method

.method private deleteSavedPageFile(Ljava/lang/String;)V
    .locals 2

    const-string p0, "SavedPageController"

    const-string v0, "Error cannot delete file: "

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception while deleting save page files "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->onPostDelete(Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->sendDeleteMessage(Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;)V

    return-void
.end method

.method public static declared-synchronized insertSavedPageItems(Landroid/content/Context;ZLcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;Z)Ljava/util/LinkedHashMap;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;",
            "Z)",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;"
        }
    .end annotation

    const-class v1, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v3, Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants;->SAVED_PAGE_INTERNAL_URL:Landroid/net/Uri;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_0
    sget-object v3, Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants;->SAVED_PAGE_URI:Landroid/net/Uri;

    :goto_0
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v4, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->SAVED_PAGES_SEARCH_PROJECTION:[Ljava/lang/String;

    const-string v5, "_id >= 0 AND is_deleted = 0"

    const-string v7, "created DESC"

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_4

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez p1, :cond_1

    if-nez p3, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->clear()V

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    goto/16 :goto_3

    :cond_1
    :goto_1
    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "title"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v4, "url"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v4, "description"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v13, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sget-object v14, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->SAVED_PAGE:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    const/4 v8, 0x0

    const/4 v10, 0x1

    move-object v3, v13

    move-object v5, v14

    move v11, v0

    invoke-direct/range {v3 .. v11}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;-><init>(Ljava/lang/Long;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    if-nez p3, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSmartSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    move-result-object v3

    invoke-virtual {v3, v13, v14}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->add(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;)V

    goto :goto_2

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;

    move-result-object v3

    invoke-virtual {v3, v13, v14}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->add(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;)V

    :cond_3
    :goto_2
    const-string v3, "favicon"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->setTouchIcon([B)V

    const-string v3, "path"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->setContentUri(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getSmartSearchKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3, v13}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v0, "SavedPageController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createSavedPageItemList - saved page list created #items = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :goto_3
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_4
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v3

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_4
    :goto_5
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    :goto_6
    :try_start_5
    const-string v2, "SavedPageController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while retrieving data from READINGLISTtable :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    :goto_7
    monitor-exit v1

    return-object v12

    :goto_8
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method

.method private isSitesSearchViewVisible()Z
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    if-nez v1, :cond_1

    return v0

    :cond_1
    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->isSitesSearchViewVisible()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$setSearchData$0()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageView:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;->setOptionMenuVisibility(Z)V

    goto :goto_0

    :cond_0
    const-string p0, "SavedPageController"

    const-string v0, "Saved Page view is null"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private onPostDelete(Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;)V
    .locals 3

    const-string v0, "SavedPage DeleteTask onPostExecute"

    const-string v1, "SavedPageController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;->isSelectAllSavedPageList()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->clearSavedPagesList()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageDeleteList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->isSitesSearchViewVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->sendDeleteMessage(Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$2;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$2;-><init>(Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;)V

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;->setSceneTransition(Lcom/sec/android/app/sbrowser/sites/model/SitesTransitionListener;)V

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->updateShowUnsyncedIcon()V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;->notifyDataSetChanged()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_2

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;->setOnChange(Z)V

    :cond_2
    const-string p0, "SavePageDeleteTask - saved page items deleted"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendBulkDeleteRequest(Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;Ljava/lang/StringBuilder;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->removeInBulk(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private sendDeleteMessage(Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;)V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageDeleteList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getId()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;->finishActionMode()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$MESSAGES;->DELETED:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$MESSAGES;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->sendMessage(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$MESSAGES;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->isSmartSearchValidForSites()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v3

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    const/16 v7, 0x1f4

    if-ne v5, v7, :cond_1

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->sendBulkDeleteRequest(Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;Ljava/lang/StringBuilder;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v5, v4

    :cond_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->SAVED_PAGE:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7, v3}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->removeFromDataMap(Ljava/lang/Long;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->sendBulkDeleteRequest(Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;Ljava/lang/StringBuilder;)V

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;->DELETED:Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->SAVED_PAGE:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;->updateInformativeAppBarInfo()V

    return-void
.end method


# virtual methods
.method public clearSavedPageDeleteList()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageDeleteList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageDeleteList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->destroy()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageDeleteList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public createSavedPageItemList(Landroid/content/Context;)V
    .locals 8

    const-string v0, "SavedPage createSavedPageItemList"

    const-string v1, "SavedPageController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->getSavedPageUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->SAVED_PAGES_PROJECTION:[Ljava/lang/String;

    const-string v5, "_id >= 0 AND is_deleted = 0"

    const-string v7, "created ASC"

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->clearSavedPagesList()V

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    new-instance v2, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    invoke-direct {v2, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->fillSavedPageItem(Landroid/database/Cursor;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "createSavedPageItemList - saved page list created #items = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    :goto_1
    if-eqz v0, :cond_3

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p0
    :try_end_4
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error while retrieving data from READINGLISTtable :"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Landroidx/recyclerview/widget/P;->t(Ljava/lang/RuntimeException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_4
    :goto_4
    return-void
.end method

.method public delete(Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->clearSavedPageDeleteList()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageDeleteList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$1;-><init>(Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageView:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchMoreKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageView:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;->dispatchMoreKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public executeSavedPageDeleteTask(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    const-string v0, "SavedPageController"

    const-string v2, "executeSavedPageDeleteTask - executing SavedPageDeleteTask"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$SavedPageDeleteTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$SavedPageDeleteTask;-><init>(Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;Landroid/content/Context;Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageDeleteTask:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$SavedPageDeleteTask;

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageThreadPool;->getInstance()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageThreadPool;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageThreadPool;->getThreadPoolExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result p1

    if-nez p1, :cond_0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mIsSavedPageDeleteRunning:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageDeleteTask:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$SavedPageDeleteTask;

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageThreadPool;->getInstance()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageThreadPool;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageThreadPool;->getThreadPoolExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public getContextMenuDelegate()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageContextMenuDelegate;
    .locals 0

    return-object p0
.end method

.method public getCurrentTabInformativeSubTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageView:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;->getCurrentTabInformativeSubTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTabInformativeTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageView:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;->getCurrentTabInformativeTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDndList()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageView:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;->getDndList()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0
.end method

.method public getSavedPageDeleteList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageDeleteList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public getSavedPageItemList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public getSavedPageUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->getSavedPageContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public getShowUnsyncedIcon()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mShowUnsyncedIcon:Z

    return p0
.end method

.method public getSitesSearchItemMap(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;)Ljava/util/LinkedHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x1

    invoke-static {p1, p0, p2, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->insertSavedPageItems(Landroid/content/Context;ZLcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;Z)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method

.method public getSitesSearchItems(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;)V
    .locals 1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->clearLists()V

    const/4 p0, 0x1

    const/4 v0, 0x0

    invoke-static {p1, p0, p2, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->insertSavedPageItems(Landroid/content/Context;ZLcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;Z)Ljava/util/LinkedHashMap;

    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->SAVEPAGES:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->getValue()I

    move-result p0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p1

    invoke-virtual {p2, p0, p1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->orderData(IZ)V

    return-void
.end method

.method public isItemsEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

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

.method public isSavedPageDeleteRunning()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mIsSavedPageDeleteRunning:Z

    return p0
.end method

.method public onAppBarHeightChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageView:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;->onAppBarHeightChanged(I)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageView:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    const-string v0, "SavedPageController"

    const-string v1, "SavedPage onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageDeleteTask:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$SavedPageDeleteTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageDeleteTask:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$SavedPageDeleteTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageDeleteTask:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$SavedPageDeleteTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageDeleteTask:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$SavedPageDeleteTask;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mIsSavedPageDeleteRunning:Z

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageView:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageView:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageView:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string v0, "SavedPageController"

    const-string v1, "SavedPage onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageView:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDeleteButtonClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageView:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;->onDeleteButtonClicked()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "SavedPageController"

    const-string v1, "SavedPage onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageView:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageView:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->clearSavedPagesList()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->clearSavedPageDeleteList()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageDeleteTask:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$SavedPageDeleteTask;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageDeleteTask:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$SavedPageDeleteTask;

    :cond_0
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mIsSavedPageDeleteRunning:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mShowUnsyncedIcon:Z

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->clearSavedPagesList()V

    return-void
.end method

.method public onDialogDismissed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageView:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;->onDialogDismissed()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageView:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageView:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;->onResume()V

    return-void
.end method

.method public onSearchDelete(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageView:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;->onSearchDelete(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageView:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public openInNewTab(Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;)V
    .locals 0

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;->onSavedPageClick(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;)V

    return-void
.end method

.method public openInNewWindow(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getContentUri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->openInNewWindow(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public setActionModeTitleAlpha(F)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageView:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;->setActionModeTitleAlpha(F)V

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public setOnClickForSearchItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getId()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageView:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;

    invoke-interface {p0, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;->handleOnClickForSearchItem(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setSavedPageDeleteRunning(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mIsSavedPageDeleteRunning:Z

    return-void
.end method

.method public setSavedPageView(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageView:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;

    return-void
.end method

.method public setSearchData(Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/download/b;

    const/16 v2, 0x1b

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/download/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->insertSavedPageItems(Landroid/content/Context;ZLcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;Z)Ljava/util/LinkedHashMap;

    :cond_1
    :goto_0
    return-void
.end method

.method public setViewForNewConfig(Landroid/view/ViewGroup;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageView:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;->setViewForNewConfig(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public share()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->share(Landroid/os/Bundle;)Z

    return-void
.end method

.method public share(Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->share(Ljava/lang/StringBuilder;Landroid/os/Bundle;)Z

    return-void
.end method

.method public share(Landroid/os/Bundle;)Z
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "\n"

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->share(Ljava/lang/StringBuilder;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public share(Ljava/lang/StringBuilder;Landroid/os/Bundle;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/16 v0, 0x4e20

    if-le p2, v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mActivity:Landroid/app/Activity;

    const p1, 0x1020002

    const p2, 0x7f140dc8

    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->q(Landroid/app/Activity;III)V

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance p2, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mActivity:Landroid/app/Activity;

    invoke-direct {p2, v0}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->chooserIntent(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->bringToFront()Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mActivity:Landroid/app/Activity;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivityShare(Landroid/app/Activity;Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateShowUnsyncedIcon()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mShowUnsyncedIcon:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mSavedPageItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getIsSyncable()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->mShowUnsyncedIcon:Z

    :cond_2
    :goto_0
    return-void
.end method
