.class Lorg/chromium/base/supplier/LazyOneshotSupplier$2;
.super Lorg/chromium/base/supplier/LazyOneshotSupplierImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/base/supplier/LazyOneshotSupplier;->fromSupplier(Lorg/chromium/base/supplier/Supplier;)Lorg/chromium/base/supplier/LazyOneshotSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/base/supplier/LazyOneshotSupplierImpl<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$supplier:Lorg/chromium/base/supplier/Supplier;


# direct methods
.method public constructor <init>(Lorg/chromium/base/supplier/Supplier;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/base/supplier/LazyOneshotSupplier$2;->val$supplier:Lorg/chromium/base/supplier/Supplier;

    invoke-direct {p0}, Lorg/chromium/base/supplier/LazyOneshotSupplierImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public doSet()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/base/supplier/LazyOneshotSupplier$2;->val$supplier:Lorg/chromium/base/supplier/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/base/supplier/LazyOneshotSupplierImpl;->set(Ljava/lang/Object;)V

    return-void
.end method
