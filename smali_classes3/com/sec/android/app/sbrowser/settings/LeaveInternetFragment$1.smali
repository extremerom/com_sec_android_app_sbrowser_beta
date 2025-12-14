.class Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->o(Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->o(Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->p(Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->q(Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;)Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->q(Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;)Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->o(Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->q(Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;)Landroidx/core/widget/NestedScrollView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    return-void
.end method
