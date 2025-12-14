.class Lorg/chromium/base/supplier/OneShotCallback$CallbackWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/supplier/OneShotCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallbackWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/base/Callback<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/base/supplier/OneShotCallback;


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/base/supplier/OneShotCallback$CallbackWrapper;->this$0:Lorg/chromium/base/supplier/OneShotCallback;

    invoke-static {v0}, Lorg/chromium/base/supplier/OneShotCallback;->a(Lorg/chromium/base/supplier/OneShotCallback;)Lorg/chromium/base/Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/chromium/base/supplier/OneShotCallback$CallbackWrapper;->this$0:Lorg/chromium/base/supplier/OneShotCallback;

    invoke-static {p1}, Lorg/chromium/base/supplier/OneShotCallback;->c(Lorg/chromium/base/supplier/OneShotCallback;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/base/supplier/ObservableSupplier;

    iget-object p0, p0, Lorg/chromium/base/supplier/OneShotCallback$CallbackWrapper;->this$0:Lorg/chromium/base/supplier/OneShotCallback;

    invoke-static {p0}, Lorg/chromium/base/supplier/OneShotCallback;->b(Lorg/chromium/base/supplier/OneShotCallback;)Lorg/chromium/base/Callback;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/base/supplier/ObservableSupplier;->removeObserver(Lorg/chromium/base/Callback;)V

    return-void
.end method
