.class public Lorg/chromium/base/ValueChangedCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/ValueChangedCallback$ValueChangedObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/chromium/base/Callback<",
        "TT;>;"
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mLastValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mValueChangedObserver:Lorg/chromium/base/ValueChangedCallback$ValueChangedObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ValueChangedCallback$ValueChangedObserver<",
            "TT;>;"
        }
    .end annotation
.end field


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/base/ValueChangedCallback;->mLastValue:Ljava/lang/Object;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/base/ValueChangedCallback;->mLastValue:Ljava/lang/Object;

    iput-object p1, p0, Lorg/chromium/base/ValueChangedCallback;->mLastValue:Ljava/lang/Object;

    iget-object p0, p0, Lorg/chromium/base/ValueChangedCallback;->mValueChangedObserver:Lorg/chromium/base/ValueChangedCallback$ValueChangedObserver;

    invoke-interface {p0, p1, v0}, Lorg/chromium/base/ValueChangedCallback$ValueChangedObserver;->onValueChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
