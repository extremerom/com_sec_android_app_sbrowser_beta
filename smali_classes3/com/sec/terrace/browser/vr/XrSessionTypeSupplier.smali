.class public Lcom/sec/terrace/browser/vr/XrSessionTypeSupplier;
.super Lorg/chromium/base/supplier/ObservableSupplierImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/base/supplier/ObservableSupplierImpl<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/base/supplier/ObservableSupplierImpl;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/vr/XrSessionTypeSupplier;->set(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public set(Ljava/lang/Integer;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/chromium/base/supplier/ObservableSupplierImpl;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/vr/XrSessionTypeSupplier;->set(Ljava/lang/Integer;)V

    return-void
.end method
