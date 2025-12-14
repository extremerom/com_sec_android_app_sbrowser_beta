.class public interface abstract Lorg/chromium/ui/resources/dynamics/DynamicResource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# virtual methods
.method public abstract onResourceRequested()V
.end method

.method public abstract removeOnResourceReadyCallback(Lorg/chromium/base/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback<",
            "Lorg/chromium/ui/resources/Resource;",
            ">;)V"
        }
    .end annotation
.end method
