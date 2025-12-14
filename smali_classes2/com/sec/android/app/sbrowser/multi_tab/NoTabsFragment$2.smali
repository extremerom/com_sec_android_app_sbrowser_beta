.class Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->showMoreMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeAllTab()V
    .locals 0

    return-void
.end method

.method public editTabs(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;)V
    .locals 0

    return-void
.end method

.method public filterOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->filterOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public groupTabs()V
    .locals 0

    return-void
.end method

.method public onDismiss()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->n(Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;)V

    return-void
.end method

.method public recordMoreSecretModeSecurity()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->isSecretModeEnabled()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/RecordUserAction;->recordMoreSecretModeSecurity(Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;Z)V

    return-void
.end method

.method public removeSyncedDevice()V
    .locals 0

    return-void
.end method

.method public renameGroup(Z)V
    .locals 0

    return-void
.end method

.method public reopenClosedTab()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->l(Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;)Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$Delegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$Delegate;->reopenClosedTab()V

    return-void
.end method

.method public sendSALoggingForMoreMenu(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showChangeViewTypeDialog()V
    .locals 0

    return-void
.end method

.method public showReopenClosedTabMenu(Landroid/view/Menu;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment;->showReopenClosedTabMenu(Landroid/view/Menu;)V

    return-void
.end method
