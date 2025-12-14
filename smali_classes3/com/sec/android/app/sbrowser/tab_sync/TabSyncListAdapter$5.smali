.class Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getShowSelectModeListener(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Landroid/animation/AnimatorListenerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

.field final synthetic val$container:Landroid/view/View;

.field final synthetic val$params:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$5;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$5;->val$container:Landroid/view/View;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$5;->val$params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    const-string p1, "TabSyncListAdapter"

    const-string v0, "setShowSelectModeAnimation: Cancel"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$5;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string p1, "TabSyncListAdapter"

    const-string v0, "setShowSelectModeAnimation: onAnimationEnd"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$5;->val$container:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$5;->val$params:Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$5;->val$container:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$5;->val$params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$5;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->k(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$5;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->k(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;Z)V

    const-string p0, "TabSyncListAdapter"

    const-string p1, "setShowSelectModeAnimation: onAnimationStart"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
