.class Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->showMoreMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeAllTab()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isInRoot()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->getMoreMenuButton()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->showCloseAllConfirmDialog(Landroid/view/View;)V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->closeAllTab()V

    return-void
.end method

.method public editTabs(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->editTabs(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;ZZ)V

    return-void
.end method

.method public filterOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->filterOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public groupTabs()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->groupTabs()V

    return-void
.end method

.method public onDismiss()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->J(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;)V

    return-void
.end method

.method public recordMoreSecretModeSecurity()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isSecretModeEnabled()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/RecordUserAction;->recordMoreSecretModeSecurity(Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;Z)V

    return-void
.end method

.method public removeSyncedDevice()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->removeSyncedDevice()V

    return-void
.end method

.method public renameGroup(Z)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->getMoreMenuButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->renameGroup(Landroid/view/View;Z)V

    return-void
.end method

.method public reopenClosedTab()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->reopenClosedTab()V

    return-void
.end method

.method public sendSALoggingForMoreMenu(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsSecretModeEnabled:Z

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showChangeViewTypeDialog()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->showChangeViewTypeDialog(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isSecretModeEnabled()Z

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMode:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->sendSALoggingForShowChangeViewTypeDialog(ZLjava/lang/String;)V

    return-void
.end method

.method public showReopenClosedTabMenu(Landroid/view/Menu;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->showReopenClosedTabMenu(Landroid/view/Menu;)V

    return-void
.end method
