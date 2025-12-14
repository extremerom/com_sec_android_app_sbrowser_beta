.class public Lorg/chromium/base/supplier/OneShotCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/supplier/OneShotCallback$CallbackWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mCallback:Lorg/chromium/base/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/Callback<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final mCallbackWrapper:Lorg/chromium/base/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/Callback<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final mWeakSupplier:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/chromium/base/supplier/ObservableSupplier<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic a(Lorg/chromium/base/supplier/OneShotCallback;)Lorg/chromium/base/Callback;
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/supplier/OneShotCallback;->mCallback:Lorg/chromium/base/Callback;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/chromium/base/supplier/OneShotCallback;)Lorg/chromium/base/Callback;
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/supplier/OneShotCallback;->mCallbackWrapper:Lorg/chromium/base/Callback;

    return-object p0
.end method

.method public static bridge synthetic c(Lorg/chromium/base/supplier/OneShotCallback;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/supplier/OneShotCallback;->mWeakSupplier:Ljava/lang/ref/WeakReference;

    return-object p0
.end method
