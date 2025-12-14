.class Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "TabBarAnimatorLayout"

    const-string v1, "[onAnimationCancel]"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout;->onAnimationCanceled()V

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "TabBarAnimatorLayout"

    const-string v1, "[onAnimationEnd]"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout;->onAnimationEnded()V

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarAnimatorLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->setEnabled(Z)V

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
