.class Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->startTabAnimation(Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

.field final synthetic val$animationType:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;

.field final synthetic val$endAction:Ljava/lang/Runnable;

.field final synthetic val$onBitmapReady:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$5;->val$animationType:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$5;->val$endAction:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$5;->val$onBitmapReady:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    const-string v0, "si__MainViewPhone"

    const-string v1, "[startTabAnimation:onAnimationEnd]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIsTabAnimationRunning:Z

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->shouldShowBottomBarShadow()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->notifyBackgroundColorChanged(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$5;->val$endAction:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onAnimationStarted()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIsTabAnimationRunning:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$5;->val$animationType:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;->BACKGROUND:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;

    if-eq v1, v2, :cond_1

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewReader:Lcom/sec/android/app/sbrowser/main_view/MainViewReader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->notifyReaderStatusChanged(ZZ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->notifyBackgroundColorChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->notifyBackgroundColorChanged(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onAnimationViewRemoved()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mIsTabAnimationRunning:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->notifyBackgroundColorChanged()V

    return-void
.end method

.method public onBitmapReady()V
    .locals 2

    const-string v0, "si__MainViewPhone"

    const-string v1, "[startTabAnimation:onBitmapReady]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$5;->val$onBitmapReady:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
