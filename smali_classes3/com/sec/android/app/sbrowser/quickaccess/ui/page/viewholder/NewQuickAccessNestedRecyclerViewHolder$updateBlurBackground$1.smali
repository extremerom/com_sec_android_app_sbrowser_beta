.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder$updateBlurBackground$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder;->updateBlurBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "com/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder$updateBlurBackground$1",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Ldb/r;",
        "onGlobalLayout",
        "()V",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder$updateBlurBackground$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder$updateBlurBackground$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder;->access$getCardView$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "cardView"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder$updateBlurBackground$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder;->access$getCardView$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->updateBlurBackground()V

    return-void

    :cond_0
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method
