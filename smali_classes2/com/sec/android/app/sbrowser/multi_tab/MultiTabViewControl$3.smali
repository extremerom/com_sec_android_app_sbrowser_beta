.class Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllTabsClicked()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->shouldIgnoreClicked()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "MultiTabView"

    const-string v1, "All Tabs button is clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->sendSALoggingForGroupAllTabs()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->closeGroupList()V

    return-void
.end method

.method public onCancelClicked()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->cancelMoveGroup()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isSecretModeEnabled()Z

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object p0

    const-string v0, "4535"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNewTabClicked()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->shouldIgnoreClicked()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "MultiTabView"

    const-string v1, "New Tab button is clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsSecretModeEnabled:Z

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    iget-boolean v2, v1, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsSecretModeEnabled:Z

    if-eqz v2, :cond_1

    const-string v1, "4107"

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mCurrentGroup:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "4006"

    goto :goto_0

    :cond_2
    const-string v1, "4524"

    :goto_0
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->setNewTabSelected(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsSecretModeEnabled:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mCurrentGroup:Ljava/lang/String;

    invoke-interface {v0, v2, v1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->createNewTab(ZZLjava/lang/String;)V

    return-void
.end method

.method public onSecretClicked()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->shouldIgnoreClicked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isInRoot()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "MultiTabView"

    const-string v1, "Secret Mode button is clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->onSecretClicked()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isSecretModeEnabled()Z

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->sendSALoggingForSecretModeButton(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSyncedTabsClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->onSyncedTabsClicked()V

    return-void
.end method
