.class public final Lt/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field public final synthetic a:Lt/q0;


# direct methods
.method public constructor <init>(Lt/q0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/n0;->a:Lt/q0;

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lt/n0;->a:Lt/q0;

    invoke-virtual {p0}, Lt/q0;->isInputMethodNotNeeded()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lt/q0;->mPopup:Lt/C;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lt/q0;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lt/q0;->mResizePopupRunnable:Lt/p0;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lt/q0;->mResizePopupRunnable:Lt/p0;

    invoke-virtual {p0}, Lt/p0;->run()V

    :cond_0
    return-void
.end method
