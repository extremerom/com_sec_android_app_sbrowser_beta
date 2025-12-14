.class Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter$QuickAccessUrlBarViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter$QuickAccessUrlBarViewHolder;->updateBlurBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter$QuickAccessUrlBarViewHolder;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter$QuickAccessUrlBarViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter$QuickAccessUrlBarViewHolder$1;->this$1:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter$QuickAccessUrlBarViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter$QuickAccessUrlBarViewHolder$1;->this$1:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter$QuickAccessUrlBarViewHolder;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter$QuickAccessUrlBarViewHolder;->a(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter$QuickAccessUrlBarViewHolder;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter$QuickAccessUrlBarViewHolder$1;->this$1:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter$QuickAccessUrlBarViewHolder;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter$QuickAccessUrlBarViewHolder;->a(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter$QuickAccessUrlBarViewHolder;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->updateBlurBackground()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter$QuickAccessUrlBarViewHolder$1;->this$1:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter$QuickAccessUrlBarViewHolder;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter$QuickAccessUrlBarViewHolder;->a(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter$QuickAccessUrlBarViewHolder;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter$QuickAccessUrlBarViewHolder$1;->this$1:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter$QuickAccessUrlBarViewHolder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter$QuickAccessUrlBarViewHolder;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;->a(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;)Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f06088f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->setBackgroundColor(I)V

    return-void
.end method
