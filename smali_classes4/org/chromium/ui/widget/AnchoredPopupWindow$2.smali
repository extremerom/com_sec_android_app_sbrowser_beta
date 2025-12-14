.class Lorg/chromium/ui/widget/AnchoredPopupWindow$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/widget/AnchoredPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/widget/AnchoredPopupWindow;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/widget/AnchoredPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow$2;->this$0:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow$2;->this$0:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    invoke-static {v0}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->d(Lorg/chromium/ui/widget/AnchoredPopupWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow$2;->this$0:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    invoke-static {v0}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->c(Lorg/chromium/ui/widget/AnchoredPopupWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow$2;->this$0:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    invoke-static {v1}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->b(Lorg/chromium/ui/widget/AnchoredPopupWindow;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow$2;->this$0:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    invoke-static {v0}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->a(Lorg/chromium/ui/widget/AnchoredPopupWindow;)Lorg/chromium/base/ObserverList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v1}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow$2;->this$0:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    invoke-static {v0}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->f(Lorg/chromium/ui/widget/AnchoredPopupWindow;)Lorg/chromium/ui/widget/RectProvider;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/widget/RectProvider;->stopObserving()V

    iget-object p0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow$2;->this$0:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    invoke-static {p0}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->g(Lorg/chromium/ui/widget/AnchoredPopupWindow;)Lorg/chromium/ui/widget/RectProvider;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/ui/widget/RectProvider;->stopObserving()V

    return-void
.end method
