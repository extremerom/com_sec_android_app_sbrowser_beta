.class Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->createToolbarListener()Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$3;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishCustomTab()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$3;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->i(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->finishAndClose()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$3;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->i(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "9001"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$3;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->t(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onOptionMenuIconClicked()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$3;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->n(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$3;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->n(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->destroySelectActionMode()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$3;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->i(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "9003"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRequestFocus()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$3;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->s(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)V

    return-void
.end method

.method public onShareUrl()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$3;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->u(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$3;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->i(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "9002"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onShowPageInfo()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$3;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->v(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)V

    return-void
.end method

.method public onSwipeBottom()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$3;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->i(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "9030"

    const-string v2, "Scroll down from app bar to minimize the custom tab"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$3;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->i(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->onSwipeBottom()V

    return-void
.end method
