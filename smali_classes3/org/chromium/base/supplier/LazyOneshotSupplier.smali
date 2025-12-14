.class public interface abstract Lorg/chromium/base/supplier/LazyOneshotSupplier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public static fromSupplier(Lorg/chromium/base/supplier/Supplier;)Lorg/chromium/base/supplier/LazyOneshotSupplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/chromium/base/supplier/Supplier<",
            "TT;>;)",
            "Lorg/chromium/base/supplier/LazyOneshotSupplier<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lorg/chromium/base/supplier/LazyOneshotSupplier$2;

    invoke-direct {v0, p0}, Lorg/chromium/base/supplier/LazyOneshotSupplier$2;-><init>(Lorg/chromium/base/supplier/Supplier;)V

    return-object v0
.end method


# virtual methods
.method public abstract get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
