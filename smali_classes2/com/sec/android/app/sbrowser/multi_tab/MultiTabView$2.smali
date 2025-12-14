.class Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->getTabMainViewCallbacks()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnterAnimationEnded()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->onMultiTabLaunched()V

    return-void
.end method

.method public onEnterEditMode(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->editTabs(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;ZZ)V

    return-void
.end method

.method public onExitAnimationStarted(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mEventListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabEventListener;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabEventListener;->onExitAnimationStarted(Z)V

    return-void
.end method

.method public onExitEditMode()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->exitEditModeWithoutList(Z)V

    return-void
.end method

.method public onLongClickTab(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->I(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    sget-object v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->EDIT:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->editTabs(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;ZZ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->selectTabAfterModeChange(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->setLongClickedPosition(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->K(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;)V

    return-void
.end method

.method public onNewTabAnimationStarted()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mEventListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabEventListener;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabEventListener;->onNewTabAnimationStarted()V

    return-void
.end method

.method public onRunningCloseTabAnimation(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsCloseTabAnimation:Z

    return-void
.end method

.method public onTabStackViewLoaded(Landroid/view/View;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->L(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;Landroid/view/View;I)V

    return-void
.end method

.method public requestToolbarCapture()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mEventListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabEventListener;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabEventListener;->requestToolbarCapture()V

    return-void
.end method
