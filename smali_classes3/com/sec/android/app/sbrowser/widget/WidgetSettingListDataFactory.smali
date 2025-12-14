.class public final Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\r\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\nJ!\u0010\u0010\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\r\u0010\u0012\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u0016\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0019\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u001a\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\"0!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0016\u0010%\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010\u0017\u00a8\u0006&"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;",
        "Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;",
        "Landroid/content/Context;",
        "context",
        "",
        "widgetId",
        "<init>",
        "(Landroid/content/Context;I)V",
        "Ldb/r;",
        "setAdapterData",
        "()V",
        "onDestroy",
        "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;",
        "propertyType",
        "",
        "propertyValue",
        "onChange",
        "(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V",
        "getBookmarkCount",
        "()I",
        "mContext",
        "Landroid/content/Context;",
        "mWidgetId",
        "I",
        "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
        "mBookMarkRoot",
        "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
        "Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;",
        "mBookmarkWidgetModel",
        "Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;",
        "Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel;",
        "mWidgetListDataModel",
        "Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel;",
        "",
        "Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;",
        "mAdapterData",
        "Ljava/util/List;",
        "mBookmarkCount",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final mAdapterData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mBookMarkRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mBookmarkCount:I

.field private mBookmarkWidgetModel:Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mWidgetId:I

.field private mWidgetListDataModel:Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->mWidgetId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->mAdapterData:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->mBookmarkWidgetModel:Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;

    iput p2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->mWidgetId:I

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;->hasPCSyncedBookmarks()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkPCSyncInfo;

    move-result-object p2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;

    move-result-object v0

    iget v1, p2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkPCSyncInfo;->mPCBookmarkCount:I

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;->setPCBookmarkCount(ILandroid/content/Context;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;

    move-result-object v1

    iget v2, p2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkPCSyncInfo;->mPCBookmarkCount:I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p1

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->setPCBookmarkCount(IZ)V

    iget-object p1, p2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkPCSyncInfo;->mPCSyncList:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;->setPCFolderId(Ljava/util/List;)V

    iget p1, p2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkPCSyncInfo;->mPCBookmarkCount:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->mBookmarkWidgetModel:Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;->createPCBookmarkFolderIfNeeded()V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->mBookmarkWidgetModel:Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;->getBookmarkRoot()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->mBookMarkRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    sget-object p1, Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel;->Companion:Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel$Companion;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel$Companion;->getInstance()Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel;

    move-result-object p1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->mWidgetListDataModel:Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->registerBookmarkListener(Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;)V

    return-void
.end method


# virtual methods
.method public final getBookmarkCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->mBookmarkCount:I

    return p0
.end method

.method public onChange(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "propertyType"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_DELETE_SUCCESS:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    if-ne v0, p1, :cond_1

    if-eqz p2, :cond_1

    check-cast p2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object p2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->mContext:Landroid/content/Context;

    invoke-static {p2}, Ltb/k;->c(Ljava/lang/Object;)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->mWidgetId:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sbrowser_bookmark_widget_shared_preference_no_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->mBookMarkRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    const-string v2, "BOOKMARK_ID"

    invoke-interface {p2, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->Companion:Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->mContext:Landroid/content/Context;

    invoke-static {p2}, Ltb/k;->c(Ljava/lang/Object;)V

    iget p0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->mWidgetId:I

    invoke-virtual {p1, p2, p0}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;->updateWidget(Landroid/content/Context;I)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->mWidgetListDataModel:Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->mBookmarkWidgetModel:Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->mAdapterData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->unregisterBookmarkListener(Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;)V

    return-void
.end method

.method public final setAdapterData()V
    .locals 27

    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->mContext:Landroid/content/Context;

    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    iget v4, v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->mWidgetId:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sbrowser_bookmark_widget_shared_preference_no_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "BOOKMARK_ID"

    invoke-static {}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->getDefaultBookmarkIdForWidget()J

    move-result-wide v6

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;->getBookmarkRoot()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v6

    sget-object v8, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->MY_DEVICE:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v8

    cmp-long v8, v3, v8

    if-nez v8, :cond_0

    cmp-long v8, v3, v6

    if-eqz v8, :cond_0

    sget-object v3, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v3

    :cond_0
    iget-object v8, v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->mAdapterData:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    sget-object v8, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->Companion:Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;

    iget-object v9, v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->mContext:Landroid/content/Context;

    invoke-static {v9}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v8, v9}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;->hasMoreThenOneWidget(Landroid/content/Context;)Z

    move-result v8

    iget-object v9, v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->mBookmarkWidgetModel:Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;

    invoke-static {v9}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v9, v3, v4, v5, v8}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;->getChildren(JZZ)Ljava/util/ArrayList;

    move-result-object v9

    iget-object v10, v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->mBookmarkWidgetModel:Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;

    invoke-static {v10}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v10, v3, v4}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;->getBookmarkItem(J)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v10

    if-eqz v9, :cond_1

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    if-nez v10, :cond_1

    iget-object v9, v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->mBookmarkWidgetModel:Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;

    invoke-static {v9}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v9, v6, v7, v5, v8}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;->getChildren(JZZ)Ljava/util/ArrayList;

    move-result-object v9

    invoke-static {v9}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-nez v9, :cond_2

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :cond_2
    iget-object v7, v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->mBookMarkRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v7

    cmp-long v7, v3, v7

    const-string v8, "getTitle(...)"

    const-string v11, "null cannot be cast to non-null type android.content.Context"

    if-eqz v7, :cond_3

    if-eqz v10, :cond_3

    new-instance v7, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v13

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v15

    iget-object v12, v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->mContext:Landroid/content/Context;

    invoke-static {v12, v11}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v18

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getGUID()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getSYNC4()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v17, v12

    move-object/from16 v20, v5

    invoke-static/range {v17 .. v22}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->getUpdatedStrings(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getDominantColor()I

    move-result v5

    move-wide/from16 v25, v1

    int-to-long v1, v5

    iget v5, v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->mWidgetId:I

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object v12, v7

    move-wide/from16 v22, v1

    move/from16 v24, v5

    invoke-direct/range {v12 .. v24}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;-><init>(JJLjava/lang/String;Ljava/lang/String;ZZ[BJI)V

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->mAdapterData:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-wide/from16 v25, v1

    :goto_1
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    new-instance v5, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v13

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v15

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->mContext:Landroid/content/Context;

    invoke-static {v7, v11}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v18

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getGUID()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getSYNC4()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v17, v7

    move-object/from16 v20, v9

    invoke-static/range {v17 .. v22}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->getUpdatedStrings(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getDominantColor()I

    move-result v7

    int-to-long v9, v7

    iget v7, v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->mWidgetId:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v12, v5

    move-wide/from16 v22, v9

    move/from16 v24, v7

    invoke-direct/range {v12 .. v24}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;-><init>(JJLjava/lang/String;Ljava/lang/String;ZZ[BJI)V

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v7

    sget-object v9, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    const/4 v10, 0x1

    if-ne v7, v9, :cond_4

    invoke-virtual {v5, v10}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->setFolder(Z)V

    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    iget v7, v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->mBookmarkCount:I

    add-int/2addr v7, v10

    iput v7, v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->mBookmarkCount:I

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->setFolder(Z)V

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->setUrl(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTouchiconData()[B

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->setTouchIcon([B)V

    :goto_3
    iget-object v2, v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->mAdapterData:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->shouldShowNewWidget()Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_4

    :cond_6
    iget-object v1, v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->mBookmarkWidgetModel:Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;->getChildrenCountWithoutFolder(J)I

    move-result v1

    :goto_4
    iput v1, v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->mBookmarkCount:I

    :cond_7
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->mWidgetListDataModel:Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->mAdapterData:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel;->setWidgetData(Ljava/util/List;)V

    return-void
.end method
