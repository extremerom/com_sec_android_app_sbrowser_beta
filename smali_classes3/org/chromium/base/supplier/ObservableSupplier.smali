.class public interface abstract Lorg/chromium/base/supplier/ObservableSupplier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/supplier/Supplier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/supplier/ObservableSupplier$NotifyBehavior;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/chromium/base/supplier/Supplier<",
        "TE;>;"
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# virtual methods
.method public addObserver(Lorg/chromium/base/Callback;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-interface {p0, p1}, Lorg/chromium/base/supplier/ObservableSupplier;->addSyncObserverAndPostIfNonNull(Lorg/chromium/base/Callback;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract addObserver(Lorg/chromium/base/Callback;I)Ljava/lang/Object;
    .param p2    # I
        .annotation build Lorg/chromium/base/supplier/ObservableSupplier$NotifyBehavior;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback<",
            "TE;>;I)TE;"
        }
    .end annotation
.end method

.method public addSyncObserver(Lorg/chromium/base/Callback;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback<",
            "TE;>;)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lorg/chromium/base/supplier/ObservableSupplier;->addObserver(Lorg/chromium/base/Callback;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public addSyncObserverAndCallIfNonNull(Lorg/chromium/base/Callback;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback<",
            "TE;>;)TE;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lorg/chromium/base/supplier/ObservableSupplier;->addObserver(Lorg/chromium/base/Callback;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public addSyncObserverAndPostIfNonNull(Lorg/chromium/base/Callback;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback<",
            "TE;>;)TE;"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-interface {p0, p1, v0}, Lorg/chromium/base/supplier/ObservableSupplier;->addObserver(Lorg/chromium/base/Callback;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract removeObserver(Lorg/chromium/base/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback<",
            "TE;>;)V"
        }
    .end annotation
.end method
