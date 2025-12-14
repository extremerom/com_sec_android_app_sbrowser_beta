.class interface abstract Lorg/chromium/base/MemoryPressureListener$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/MemoryPressureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract isTrimMemoryBackgroundCritical()Z
.end method

.method public abstract onMemoryPressure(I)V
.end method

.method public abstract onPreFreeze()V
.end method
