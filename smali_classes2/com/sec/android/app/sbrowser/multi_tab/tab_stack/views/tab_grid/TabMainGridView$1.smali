.class Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->updateTabStacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->access$000(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->isMultiTabOutroAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "TabMainViewGrid"

    const-string p1, "[onDismissed] isMultiTabOutroAnimating"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->access$100(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;IZ)V

    return-void
.end method

.method public onLayoutCompleted()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->C(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->E(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->access$300(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->getTabViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->access$400(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;->onTabStackViewLoaded(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    const-string v0, "TabMainViewGrid"

    const-string v1, "currentTab is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->G(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)V

    :cond_1
    return-void
.end method

.method public onTouch()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->access$200(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->onTouchContent()V

    return-void
.end method
