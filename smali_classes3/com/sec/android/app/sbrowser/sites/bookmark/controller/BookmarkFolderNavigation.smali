.class public Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation$BookmarkFolderNavigationHandler;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mDEBUG:Z

.field private mFolderHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation$BookmarkFolderNavigationHandler;

.field private mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

.field private final mModelListener:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;

.field private mRootId:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isEngBinary()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mDEBUG:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation$BookmarkFolderNavigationHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation$BookmarkFolderNavigationHandler;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mHandler:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation$BookmarkFolderNavigationHandler;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation$1;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mModelListener:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;

    const-string v1, "BookmarkFolderNavigation"

    invoke-static {v1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-direct {v1, p1, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getBookmarkContentUri(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->setUri(Landroid/net/Uri;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getBookmarkContentUri(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->getBookmarkRootId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mRootId:J

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;)Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation$BookmarkFolderNavigationHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mHandler:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation$BookmarkFolderNavigationHandler;

    return-object p0
.end method

.method private cleanup()V
    .locals 2

    const-string v0, "BookmarkFolderNavigation"

    const-string v1, "cleanup()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->unRegisterListener()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    :cond_0
    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mModelListener:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private getStackbuf()Ljava/lang/StringBuilder;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 10

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "BookmarkFolderNavigation"

    const-string v1, "handleMessage()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->values()[Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    aget-object v0, v0, v1

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation$3;->$SwitchMap$com$sec$android$app$sbrowser$common$constants$sites$BookmarkConstants$Messages:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    const-wide/16 v3, -0x63

    :goto_0
    if-ltz v2, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->isMarked()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->getPid()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->getId()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->setId(J)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->setMarked(Z)V

    :cond_4
    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->getPid()J

    move-result-wide v6

    cmp-long v6, v6, v3

    if-nez v6, :cond_5

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->setPid(J)V

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_6
    :goto_1
    return-void
.end method

.method public static isFeatureEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private markDeleteChildren(J)V
    .locals 6

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->getPid()J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->setMarked(Z)V

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->getId()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->markDeleteChildren(J)V

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private markForDelete(JLjava/lang/String;)V
    .locals 5

    const-string v0, "BookmarkFolderNavigation"

    const-string v1, "markForDelete(parent)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->getPid()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->setMarked(Z)V

    if-nez v1, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->getId()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->markDeleteChildren(J)V

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public add(JJLjava/lang/String;Z)V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mRootId:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    if-nez p6, :cond_0

    return-void

    :cond_0
    iget-object p6, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    if-nez p6, :cond_1

    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    iget-object p6, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    if-nez p6, :cond_1

    new-instance p6, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mModelListener:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;

    invoke-direct {p6, v0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;)V

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getBookmarkContentUri(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p6, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->setUri(Landroid/net/Uri;)V

    :cond_1
    iget-boolean p6, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mDEBUG:Z

    const-string v0, " Stack content = "

    const-string v1, "BookmarkFolderNavigation"

    if-eqz p6, :cond_2

    new-instance p6, Ljava/lang/StringBuilder;

    const-string v2, "add stack size="

    invoke-direct {p6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->getStackbuf()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {v1, p6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance p6, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;

    move-object v2, p6

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;-><init>(JJLjava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mDEBUG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "add end stack size="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->getStackbuf()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public clear()V
    .locals 2

    const-string v0, "BookmarkFolderNavigation"

    const-string v1, "clear() enter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->cleanup()V

    :cond_0
    return-void
.end method

.method public contains(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getPrevious()Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mDEBUG:Z

    const-string v1, " Stack content = "

    const-string v2, "BookmarkFolderNavigation"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "getPrevious stack size="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->getStackbuf()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->isMarked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mDEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "getPrevious-end stack size="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->getStackbuf()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;

    return-object p0

    :cond_3
    const-string v0, "getPrevious end stack size=0"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->cleanup()V

    new-instance p0, Ljava/util/EmptyStackException;

    invoke-direct {p0}, Ljava/util/EmptyStackException;-><init>()V

    throw p0

    :cond_4
    new-instance p0, Ljava/util/EmptyStackException;

    invoke-direct {p0}, Ljava/util/EmptyStackException;-><init>()V

    throw p0
.end method

.method public getTop()Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mDEBUG:Z

    const-string v1, " Stack content = "

    const-string v2, "BookmarkFolderNavigation"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "getTop stack size="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->getStackbuf()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->isMarked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mDEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "getTop end stack size="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->getStackbuf()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;

    return-object p0

    :cond_3
    const-string v0, "getTop end stack size=0"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->cleanup()V

    new-instance p0, Ljava/util/EmptyStackException;

    invoke-direct {p0}, Ljava/util/EmptyStackException;-><init>()V

    throw p0

    :cond_4
    new-instance p0, Ljava/util/EmptyStackException;

    invoke-direct {p0}, Ljava/util/EmptyStackException;-><init>()V

    throw p0
.end method

.method public handleFolderAdded(JJLjava/lang/String;Z)V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "BookmarkFolderNavigation"

    const-string v1, "handleFolderAdded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;

    const-wide/16 v2, -0x63

    invoke-direct {v1, p3, p4, v2, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;-><init>(JJ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-wide v4, v2

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->isMarked()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->getPid()J

    move-result-wide v6

    cmp-long v6, v6, p3

    if-nez v6, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->getId()J

    move-result-wide v4

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->setId(J)V

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->setMarked(Z)V

    goto :goto_0

    :cond_3
    cmp-long p3, v4, v2

    if-eqz p3, :cond_7

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;

    invoke-virtual {p4}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->getPid()J

    move-result-wide v0

    cmp-long p5, v0, v4

    if-nez p5, :cond_4

    invoke-virtual {p4, p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->setPid(J)V

    goto :goto_1

    :cond_5
    if-eqz p6, :cond_7

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    if-nez p3, :cond_6

    new-instance p3, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mActivity:Landroid/app/Activity;

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mModelListener:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;

    invoke-direct {p3, p4, p5}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mActivity:Landroid/app/Activity;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getBookmarkContentUri(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->setUri(Landroid/net/Uri;)V

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getBookmarkFolderHierarchyForId(J)V

    :cond_7
    return-void
.end method

.method public handleFolderMoved(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "BookmarkFolderNavigation"

    const-string v1, "handleFolderMoved"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    new-instance v5, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;

    invoke-direct {v5, v2, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    new-instance v4, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;

    invoke-direct {v4, v0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    return-void

    :cond_1
    const/4 v4, 0x2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    if-nez v6, :cond_2

    new-instance v6, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mActivity:Landroid/app/Activity;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mModelListener:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;

    invoke-direct {v6, v9, v10}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;)V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mActivity:Landroid/app/Activity;

    invoke-static {v9}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getBookmarkContentUri(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->setUri(Landroid/net/Uri;)V

    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {v6, v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkItem(Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v0, v1, v6}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->markForDelete(JLjava/lang/String;)V

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v9

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    move-object v6, p0

    invoke-virtual/range {v6 .. v12}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->handleFolderAdded(JJLjava/lang/String;Z)V

    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public handleHistoryNavigation(ZJIJLcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;ZLcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)Z
    .locals 5
    .param p9    # Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJIJ",
            "Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;",
            "Z",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->pop(J)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->getTop()Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->getId()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->getPid()J

    move-result-wide v3

    cmp-long p3, v1, v3

    if-nez p3, :cond_0

    if-le p4, v0, :cond_8

    add-int/lit8 p2, p4, -0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p9, p2}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_0
    move-exception p2

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->contains(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->getTop()Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->getId()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->getId()J

    move-result-wide v3

    cmp-long p3, v1, v3

    if-nez p3, :cond_2

    :cond_1
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->getId()J

    move-result-wide v1

    cmp-long p3, v1, p5

    if-nez p3, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->getTop()Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->getId()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p7, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getAllAncestorBookmarkItems(Ljava/lang/Long;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->getTop()Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->getId()J

    move-result-wide p5

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->getId()J

    move-result-wide v1

    cmp-long p3, p5, v1

    if-nez p3, :cond_4

    const-wide/16 p2, -0x1

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->pop(J)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;

    if-le p4, v0, :cond_8

    add-int/lit8 p2, p4, -0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p9, p2}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->getTop()Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->getPid()J

    move-result-wide p5

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->getId()J

    move-result-wide p2

    cmp-long p2, p5, p2

    if-eqz p2, :cond_5

    if-eqz p8, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->getTop()Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->getId()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p7, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getAllAncestorBookmarkItems(Ljava/lang/Long;)V

    goto :goto_0

    :cond_6
    if-le p4, v0, :cond_8

    if-eqz p8, :cond_7

    const/4 p0, 0x0

    return p0

    :cond_7
    add-int/lit8 p2, p4, -0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p9, p2}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_0
    move p1, v0

    goto :goto_2

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "handleHistoryNavigation: Size["

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ","

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BookmarkFolderNavigation"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_9

    if-ne p4, v0, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->size()I

    move-result p2

    if-nez p2, :cond_9

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p10, p1}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    :cond_9
    if-nez p1, :cond_a

    if-le p4, v0, :cond_a

    add-int/lit8 p4, p4, -0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p9, p0}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    goto :goto_0

    :cond_a
    :goto_2
    return p1
.end method

.method public handleSync(Landroid/os/Handler;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "BookmarkFolderNavigation"

    const-string v1, "handleSync"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation$2;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation$2;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;Landroid/os/Handler;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkThread;->getBookmarkThread()Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkThread;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

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

.method public isStackTopItemMarked()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->g(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->isMarked()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "BookmarkFolderNavigation"

    const-string v1, "topItem is marked & dirty stack"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public markForDelete(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "BookmarkFolderNavigation"

    const-string v1, "markForDelete(item)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->getId()J

    move-result-wide v5

    cmp-long v5, v0, v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->getPid()J

    move-result-wide v5

    cmp-long v5, v0, v5

    if-nez v5, :cond_2

    :cond_3
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->setMarked(Z)V

    if-nez v3, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->markDeleteChildren(J)V

    :cond_4
    move v3, v5

    goto :goto_0

    :cond_5
    return-void
.end method

.method public markForDelete(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "BookmarkFolderNavigation"

    const-string v1, "markForDelete(list)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->getId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->getPid()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    :cond_3
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->setMarked(Z)V

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->markDeleteChildren(J)V

    :cond_4
    move v2, v4

    goto :goto_0

    :cond_5
    return-void
.end method

.method public pop(J)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mDEBUG:Z

    const-string v1, " Stack content = "

    const-string v2, "BookmarkFolderNavigation"

    if-eqz v0, :cond_0

    const-string v0, "pop param="

    const-string v3, " stack size="

    invoke-static {p1, p2, v0, v3}, LB/e;->q(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->getStackbuf()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->isMarked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mDEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "removing marked"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants;->INVALID_BOOKMARK_ID:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, p1, v4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->getId()J

    move-result-wide v4

    cmp-long v0, v4, p1

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mDEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "removing marked 2"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mDEBUG:Z

    if-eqz p2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "removing for pop stack size="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->getStackbuf()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->cleanup()V

    :cond_6
    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mDEBUG:Z

    if-eqz p2, :cond_7

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "pop end stack size="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->getStackbuf()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-object p1

    :cond_8
    const-string p1, "pop end stack size=0"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->cleanup()V

    new-instance p0, Ljava/util/EmptyStackException;

    invoke-direct {p0}, Ljava/util/EmptyStackException;-><init>()V

    throw p0

    :cond_9
    new-instance p0, Ljava/util/EmptyStackException;

    invoke-direct {p0}, Ljava/util/EmptyStackException;-><init>()V

    throw p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->mFolderHistory:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method
