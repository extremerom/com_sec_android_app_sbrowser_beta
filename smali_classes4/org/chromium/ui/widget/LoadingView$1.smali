.class Lorg/chromium/ui/widget/LoadingView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/widget/LoadingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/widget/LoadingView;


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/chromium/ui/widget/LoadingView$1;->this$0:Lorg/chromium/ui/widget/LoadingView;

    invoke-static {v0}, Lorg/chromium/ui/widget/LoadingView;->c(Lorg/chromium/ui/widget/LoadingView;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/widget/LoadingView$1;->this$0:Lorg/chromium/ui/widget/LoadingView;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/chromium/ui/widget/LoadingView;->d(Lorg/chromium/ui/widget/LoadingView;J)V

    iget-object v0, p0, Lorg/chromium/ui/widget/LoadingView$1;->this$0:Lorg/chromium/ui/widget/LoadingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/chromium/ui/widget/LoadingView$1;->this$0:Lorg/chromium/ui/widget/LoadingView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lorg/chromium/ui/widget/LoadingView$1;->this$0:Lorg/chromium/ui/widget/LoadingView;

    invoke-static {p0}, Lorg/chromium/ui/widget/LoadingView;->b(Lorg/chromium/ui/widget/LoadingView;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/widget/LoadingView$Observer;

    invoke-interface {v0}, Lorg/chromium/ui/widget/LoadingView$Observer;->onShowLoadingUiComplete()V

    goto :goto_0

    :cond_1
    return-void
.end method
