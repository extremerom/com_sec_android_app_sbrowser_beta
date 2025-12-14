.class Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->initEditBottomBar()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;->lambda$onGroupButtonClick$0(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$onGroupButtonClick$0(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->groupTabs(Ljava/lang/String;I)V

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->sendSALoggingForTabGroupDialog(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->exitEditMode()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->updateTabs(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getFilter()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->searchTabs(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->onConfirmGroupDialog()V

    return-void
.end method


# virtual methods
.method public onCloseButtonClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isTabDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isCloseBySuggestion()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->sendSALoggingForCloseSuggestedTabs()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->closeTabsWithConfirmDialog(Landroid/view/View;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsSecretModeEnabled:Z

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "4058"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGroupButtonClick(ZLandroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isTabDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getSelectedGroupCount()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->sendSALoggingForShowTabGroupDialog()V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/m;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/m;-><init>(ILjava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->showGroupNameDialog(ILcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$Listener;Landroid/view/View;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsSecretModeEnabled:Z

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "4500"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->getCurrentGroup()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    iget-object v0, p2, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->getGroupColorId(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->groupTabs(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->exitEditMode()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsSecretModeEnabled:Z

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "4511"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onLockButtonClick()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isTabDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->lockSelected()V

    :cond_1
    return-void
.end method

.method public onMoveButtonClick()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isTabDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->readyForMoveMode()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->isGroupSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->x(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsSecretModeEnabled:Z

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object p0

    const-string v0, "4514"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRenameButtonClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isTabDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->renameGroup(Landroid/view/View;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsSecretModeEnabled:Z

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "4528"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onShareButtonClick()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isTabDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->shareSelected()V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsSecretModeEnabled:Z

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object p0

    const-string v0, "4048"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUngroupButtonClick()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isTabDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->ungroupTabs()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->exitEditMode()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsSecretModeEnabled:Z

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object p0

    const-string v0, "4510"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUnlockButtonClick()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isTabDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->unlockSelected()V

    :cond_1
    return-void
.end method
