.class Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper$1;
.super LY2/h0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->setHideSelectModeAnimation(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;

.field final synthetic val$actionModeType:I

.field final synthetic val$touchActionDowned:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;

    iput p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper$1;->val$actionModeType:I

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper$1;->val$touchActionDowned:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(LY2/f0;)V
    .locals 1
    .param p1    # LY2/f0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->c(Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->setIsAnimating(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->c(Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->b(Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;)Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;

    move-result-object p1

    iget v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper$1;->val$actionModeType:I

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper$1;->val$touchActionDowned:Z

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;->updateBottomBar(IZ)V

    return-void
.end method

.method public onTransitionEnd(LY2/f0;)V
    .locals 1
    .param p1    # LY2/f0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->c(Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->setIsAnimating(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->c(Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->b(Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;)Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;

    move-result-object p1

    iget v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper$1;->val$actionModeType:I

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper$1;->val$touchActionDowned:Z

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;->updateBottomBar(IZ)V

    return-void
.end method
