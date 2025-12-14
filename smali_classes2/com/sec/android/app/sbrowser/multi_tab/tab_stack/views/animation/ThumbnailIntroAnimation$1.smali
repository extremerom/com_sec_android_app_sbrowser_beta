.class Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->startIntroAnimation(Landroid/view/View;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;

.field final synthetic val$endActionRunnable:Ljava/lang/Runnable;

.field final synthetic val$outroView:Landroid/view/View;

.field final synthetic val$tabId:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;ILjava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;

    iput p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$1;->val$tabId:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$1;->val$endActionRunnable:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$1;->val$outroView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string p1, "ThumbnailIntroAnimation"

    const-string v0, "onAnimationEnd()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$1;->val$outroView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;->isSecretModeEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailAnimation;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Landroid/view/Window;Z)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;->showNoTabViewIfNeeded()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;->onEnterAnimationEnded()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "ThumbnailIntroAnimation"

    const-string v0, "onAnimationStart()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;->setFirstIntroAnimation(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$1;->val$tabId:I

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;->startTabViewIntroAnimation(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;->onEnterAnimationStarted()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$1;->val$endActionRunnable:Ljava/lang/Runnable;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->d(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
