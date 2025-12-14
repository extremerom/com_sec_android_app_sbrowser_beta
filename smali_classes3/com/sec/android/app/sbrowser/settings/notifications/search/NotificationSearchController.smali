.class public Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchActivityController;
.implements Landroid/view/ActionMode$Callback;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotificationSearchView:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;-><init>(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->mNotificationSearchView:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;

    return-void
.end method


# virtual methods
.method public getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->mNotificationSearchView:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getUrlForShare()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->mNotificationSearchView:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->mNotificationSearchView:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->isSearchResultEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "\n"

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method public isShowingActionMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->mNotificationSearchView:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->isShowingActionMode()Z

    move-result p0

    return p0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->mNotificationSearchView:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->mNotificationSearchView:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->mNotificationSearchView:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->mNotificationSearchView:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->mNotificationSearchView:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->mNotificationSearchView:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->mNotificationSearchView:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->mNotificationSearchView:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onCtrlAndAKeyPressed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->mNotificationSearchView:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->onCtrlAndAKeyPressed()V

    return-void
.end method

.method public onCtrlAndDKeyPressed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->mNotificationSearchView:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->onCtrlAndDKeyPressed()V

    return-void
.end method

.method public onCtrlAndMKeyPressed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->mNotificationSearchView:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->onCtrlAndMKeyPressed()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->mNotificationSearchView:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->onDestroy()V

    return-void
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->mNotificationSearchView:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onEnterPressed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->mNotificationSearchView:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->onEnterPressed()V

    return-void
.end method

.method public onOffsetChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->mNotificationSearchView:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->onOffsetChanged(I)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->mNotificationSearchView:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->mNotificationSearchView:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->onResume()V

    return-void
.end method

.method public onShiftPressed(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->mNotificationSearchView:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->onShiftPressed(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->mNotificationSearchView:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public processSearchData(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->mNotificationSearchView:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->processSearchData(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->mNotificationSearchView:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->processSearchData()V

    return-void
.end method

.method public requestFocus()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->mNotificationSearchView:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->requestFocus()Z

    move-result p0

    return p0
.end method

.method public share(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->chooserIntent(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->bringToFront()Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivityShare(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method
