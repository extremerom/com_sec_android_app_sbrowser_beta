.class public Lorg/chromium/ui/resources/dynamics/DynamicResourceReadyOnceCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/base/Callback<",
        "Lorg/chromium/ui/resources/Resource;",
        ">;"
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mCallback:Lorg/chromium/base/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/Callback<",
            "Lorg/chromium/ui/resources/Resource;",
            ">;"
        }
    .end annotation
.end field

.field private final mDynamicResource:Lorg/chromium/ui/resources/dynamics/DynamicResource;


# virtual methods
.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/chromium/ui/resources/Resource;

    invoke-virtual {p0, p1}, Lorg/chromium/ui/resources/dynamics/DynamicResourceReadyOnceCallback;->onResult(Lorg/chromium/ui/resources/Resource;)V

    return-void
.end method

.method public final onResult(Lorg/chromium/ui/resources/Resource;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/DynamicResourceReadyOnceCallback;->mCallback:Lorg/chromium/base/Callback;

    invoke-interface {v0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/chromium/ui/resources/dynamics/DynamicResourceReadyOnceCallback;->mDynamicResource:Lorg/chromium/ui/resources/dynamics/DynamicResource;

    invoke-interface {p1, p0}, Lorg/chromium/ui/resources/dynamics/DynamicResource;->removeOnResourceReadyCallback(Lorg/chromium/base/Callback;)V

    return-void
.end method
