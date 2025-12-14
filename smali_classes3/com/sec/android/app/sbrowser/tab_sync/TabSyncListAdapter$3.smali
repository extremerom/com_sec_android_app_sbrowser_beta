.class Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getHideSelectModeAnimListener(Landroid/view/View;)Landroid/animation/AnimatorListenerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

.field final synthetic val$listItem:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$3;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$3;->val$listItem:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private restoreListItemPosition()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$3;->val$listItem:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$3;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$3;->restoreListItemPosition()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$3;->restoreListItemPosition()V

    return-void
.end method
