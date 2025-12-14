.class Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->touchEventsEnded(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

.field final synthetic val$draggedView:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$3;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$3;->val$draggedView:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$3;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$3;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$3;->val$draggedView:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->i(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$3;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$3;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$3;->val$draggedView:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->i(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$3;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
