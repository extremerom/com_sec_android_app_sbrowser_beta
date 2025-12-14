.class Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result p3

    or-int/2addr p2, p3

    const/16 p3, 0x15

    const/4 v0, 0x1

    if-eq p2, p3, :cond_3

    const/16 p3, 0x16

    if-eq p2, p3, :cond_1

    const/16 p3, 0x3d

    if-eq p2, p3, :cond_1

    const p3, 0x2000003d

    if-eq p2, p3, :cond_3

    return v1

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->isLastEnabledButton(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->onFocusOutRight()V

    return v0

    :cond_2
    return v1

    :cond_3
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->isFirstEnabledButton(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;->isTabBarShowingWithOneLine()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->focusNewTabButton()Z

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLocationBar:Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->focusInRight()V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->resetStates(Landroid/view/View;)V

    :goto_0
    return v0

    :cond_5
    return v1
.end method
