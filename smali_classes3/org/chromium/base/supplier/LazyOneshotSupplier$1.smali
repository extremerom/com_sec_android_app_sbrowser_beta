.class Lorg/chromium/base/supplier/LazyOneshotSupplier$1;
.super Lorg/chromium/base/supplier/LazyOneshotSupplierImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/base/supplier/LazyOneshotSupplierImpl<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$value:Ljava/lang/Object;


# virtual methods
.method public doSet()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/base/supplier/LazyOneshotSupplier$1;->val$value:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/chromium/base/supplier/LazyOneshotSupplierImpl;->set(Ljava/lang/Object;)V

    return-void
.end method
