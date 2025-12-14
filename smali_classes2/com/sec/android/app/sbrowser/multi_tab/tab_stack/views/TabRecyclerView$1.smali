.class Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->initialize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mIsDismissAnimation:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->setScrollBlock(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mCallback:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Callback;

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mSelectedView:Landroid/view/View;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->getPositionForView(Landroid/view/View;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Callback;->onDismissed(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mSelectedView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mSelectedView:Landroid/view/View;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mIsDismissAnimation:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->setScrollBlock(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mCallback:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Callback;

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mSelectedView:Landroid/view/View;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->getPositionForView(Landroid/view/View;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Callback;->onDismissed(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mSelectedView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->mSelectedView:Landroid/view/View;

    return-void
.end method
