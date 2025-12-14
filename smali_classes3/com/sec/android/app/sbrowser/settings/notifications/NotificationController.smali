.class public Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;
.implements Landroid/view/ActionMode$Callback;
.implements Lcom/sec/android/app/sbrowser/settings/notifications/NotificationNotifier;
.implements Lcom/sec/android/app/sbrowser/settings/notifications/NotificationObserver;
.implements Lcom/sec/android/app/sbrowser/settings/notifications/NotificationContextMenuDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController$DeleteNotificationAsyncTask;
    }
.end annotation


# static fields
.field private static sInstanceId:I

.field private static final sLockObject:Ljava/lang/Object;

.field private static sNotificationObserversList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/notifications/NotificationObserver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field mDbObserver:Landroid/database/ContentObserver;

.field private mNotificationItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationModel:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;

.field private mNotificationUi:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

.field private mSeenUpdates:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->sLockObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController$3;-><init>(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mDbObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationItemList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationUi:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    return-object p0
.end method

.method private deleteSearchData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method private onClearNotificationURLsDone()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController$1;-><init>(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private recordUserInNotificationManager(Z)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "user_in_notification_manager"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setNotificationData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationItemList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationItemList:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mSeenUpdates:I

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationItemList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mSeenUpdates:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mSeenUpdates:I

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationUi:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationItemList:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->setNotificationData(Ljava/util/List;)V

    return-void
.end method

.method private setNotifications(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "NotificationController"

    const-string v1, "onNotificationDataReceived"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->setNotificationData(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private updateNotificationBadgeVisibility()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "show_notification_badge"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationCountListener;->getInstance()Lcom/sec/android/app/sbrowser/settings/notifications/NotificationCountListener;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationCountListener;->notifyShowPrefChange()V

    return-void
.end method


# virtual methods
.method public createUi(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;
    .locals 0

    new-instance p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUi;-><init>()V

    return-object p0
.end method

.method public deleteAllFromNativeDB()V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->getPersID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController$DeleteNotificationAsyncTask;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationModel:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController$DeleteNotificationAsyncTask;-><init>(Ljava/util/List;Ljava/util/List;Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;ZLandroid/content/Context;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public getNotificationDataResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationItemList:Ljava/util/List;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNotificationItemList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationItemList:Ljava/util/List;

    return-object p0
.end method

.method public isNotificationListEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationItemList:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSearchDataEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->isNotificationListEmpty()Z

    move-result p0

    return p0
.end method

.method public modelPropertyChanged(ILjava/lang/Object;)V
    .locals 0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mSeenUpdates:I

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationModel:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;->getAllNotifications(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->setNotifications(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    sub-int/2addr p1, p2

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mSeenUpdates:I

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->updateNotificationBadgeVisibility()V

    :cond_1
    return-void
.end method

.method public notifyUpdate(ILjava/lang/Object;)V
    .locals 1

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->sNotificationObserversList:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationObserver;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationObserver;->modelPropertyChanged(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActionHome()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationUi:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->onActionHome()V

    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationUi:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onBackPressed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationUi:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationUi:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->createUi(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationUi:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->setActivity(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationUi:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->setContextMenuDelegate(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationContextMenuDelegate;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mDbObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationUi:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->onCreate()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mSeenUpdates:I

    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationUi:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationUi:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationConstants$OptionMenuAction;->OPTION_MENU_CREATE:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationConstants$OptionMenuAction;

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->onOptionMenu(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationConstants$OptionMenuAction;Landroid/view/Menu;Landroid/view/MenuItem;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->registerObserver(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationObserver;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->setNotification()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationUi:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onCtrlAndAKeyPressed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationUi:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->onCtrlAndAKeyPressed()V

    return-void
.end method

.method public onCtrlAndDKeyPressed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationUi:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->onCtrlAndDKeyPressed()V

    return-void
.end method

.method public onCtrlAndFKeyPressed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationUi:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->onCtrlAndFKeyPressed()V

    :cond_0
    return-void
.end method

.method public onCtrlAndMKeyPressed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationUi:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->onCtrlAndMKeyPressed()V

    return-void
.end method

.method public onDeleteNotificationData(Z)V
    .locals 8

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->deleteAllFromNativeDB()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationModel:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;->clearAllNotifications(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->onClearNotificationURLsDone()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->getPersID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->getVisitTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController$DeleteNotificationAsyncTask;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationModel:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mContext:Landroid/content/Context;

    move-object v1, v0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController$DeleteNotificationAsyncTask;-><init>(Ljava/util/List;Ljava/util/List;Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;ZLandroid/content/Context;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->onClearNotificationURLsDone()V

    invoke-direct {p0, v7}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->deleteSearchData(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationUi:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->setNotificationDelegate(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi$NotificationUiDelegate;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationUi:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->onDestroy()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationUi:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationItemList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationItemList:Ljava/util/List;

    :cond_2
    invoke-virtual {p0, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->unregisterObserver(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationObserver;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mDbObserver:Landroid/database/ContentObserver;

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mDbObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mDbObserver:Landroid/database/ContentObserver;

    :cond_3
    return-void
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationUi:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->onDestroyActionMode(Landroid/view/ActionMode;)V

    :cond_0
    return-void
.end method

.method public onLaunchSelectedUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "526"

    const-string v0, "5222"

    invoke-static {p2, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/sec/terrace/browser/webapps/TerraceWebApkValidator;->queryWebApkPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p1, "com.sec.terrace.browser.webapk_force_navigation"

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mContext:Landroid/content/Context;

    const-class v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationUi:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationConstants$OptionMenuAction;->OPTION_MENU_SELECT:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationConstants$OptionMenuAction;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->onOptionMenu(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationConstants$OptionMenuAction;Landroid/view/Menu;Landroid/view/MenuItem;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationUi:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->onPause()V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationUi:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationConstants$OptionMenuAction;->OPTION_MENU_PREPARE:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationConstants$OptionMenuAction;

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->onOptionMenu(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationConstants$OptionMenuAction;Landroid/view/Menu;Landroid/view/MenuItem;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstanceId(Landroid/app/Activity;)I

    move-result v0

    sput v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->sInstanceId:I

    goto :goto_0

    :cond_0
    const-string v0, "NotificationController"

    const-string v2, "[NotificationManager] Activity null, unable to get instance id"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput v1, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->sInstanceId:I

    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->recordUserInNotificationManager(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationItemList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mSeenUpdates:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mSeenUpdates:I

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationModel:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;->markAllNotificationsAsSeen(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationUi:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->onResume()V

    return-void
.end method

.method public onSearchKeyPressed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationUi:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->onSearchKeyPressed()V

    :cond_0
    return-void
.end method

.method public onShiftKeyPressed(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationUi:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->onShiftKeyPressed(Z)V

    return-void
.end method

.method public onStop()V
    .locals 5

    const-string v0, "[NotificationManager] N.Controller on stop"

    const-string v1, "NotificationController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstanceId(Landroid/app/Activity;)I

    move-result v0

    goto :goto_0

    :cond_0
    const-string v0, "[NotificationManager] unable to get instance id, activity null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    :goto_0
    sget v3, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->sInstanceId:I

    const/4 v4, 0x0

    if-ne v0, v3, :cond_1

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->recordUserInNotificationManager(Z)V

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->recordUserInNotificationManager(Z)V

    goto :goto_1

    :cond_2
    const-string v0, "[NotificationManager] Flag set by other instance."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationItemList:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mSeenUpdates:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mSeenUpdates:I

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationModel:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;->markAllNotificationsAsSeen(Landroid/content/Context;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationModel:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;->getAllNotifications(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->setNotifications(Ljava/util/List;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationUi:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController$2;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController$2;-><init>(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;)V

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->setNotificationDelegate(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi$NotificationUiDelegate;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationItemList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const-string p2, "5222"

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isIndia()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->updateNotificationBadgeVisibility()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isNotificationsVisited()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "Notification Manager"

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->removeNewFeatureFromList(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->recordNotificationManagerVisit()V

    :cond_0
    return-void
.end method

.method public prepareUrlsFromSelectedItemsforShareVia()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-eqz p0, :cond_2

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method public registerObserver(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationObserver;)V
    .locals 1

    sget-object p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->sLockObject:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->sNotificationObserversList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->sNotificationObserversList:Ljava/util/ArrayList;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->sNotificationObserversList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->sNotificationObserversList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setNotification()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationUi:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->setNotification(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;)V

    return-void
.end method

.method public setViewForNewConfig(Landroid/view/ViewGroup;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mNotificationUi:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUi;->setViewForNewConfig(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public shareUrls(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0x4e20

    if-ge p2, v0, :cond_0

    new-instance p2, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->chooserIntent(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivityShare(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    const p1, 0x1020002

    const p2, 0x7f140dc8

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->q(Landroid/app/Activity;III)V

    :goto_0
    return-void
.end method

.method public unregisterObserver(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationObserver;)V
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->sNotificationObserversList:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->sNotificationObserversList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    sget-object p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->sNotificationObserversList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    sput-object p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;->sNotificationObserversList:Ljava/util/ArrayList;

    :cond_2
    return-void
.end method
