.class Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->getMoreMenuButton()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mChangeViewTypeDialog:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->updateAnchor(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mGroupDialog:Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mGroupDialog:Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->updateAnchorView()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mGroupTabsNavigate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mGroupTabsNavigate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->updateTouchDelegate()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->M(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
