.class public interface abstract Lorg/chromium/blink/mojom/SaLoggingHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/SaLoggingHelper$Proxy;
    }
.end annotation


# virtual methods
.method public abstract crossBrowsingContextNonEmptyNameAccessed()V
.end method

.method public abstract logHasStorageAccessCalled()V
.end method

.method public abstract logStorageAccessPermissionRequested()V
.end method

.method public abstract reportFixedFrameRemoved()V
.end method

.method public abstract reportPatChallengeReceived()V
.end method

.method public abstract reportWebAudioRandomizationApplied(I)V
.end method
