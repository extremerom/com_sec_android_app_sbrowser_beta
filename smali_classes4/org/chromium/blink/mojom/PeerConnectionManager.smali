.class public interface abstract Lorg/chromium/blink/mojom/PeerConnectionManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/PeerConnectionManager$Proxy;
    }
.end annotation


# virtual methods
.method public abstract getCurrentState()V
.end method

.method public abstract getStandardStats()V
.end method

.method public abstract onSuspend()V
.end method

.method public abstract onThermalStateChange(I)V
.end method

.method public abstract startEventLog(II)V
.end method

.method public abstract stopEventLog(I)V
.end method
