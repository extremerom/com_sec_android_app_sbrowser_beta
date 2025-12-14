.class public interface abstract Lorg/chromium/media/mojom/AudioLog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/AudioLog$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media/mojom/AudioLog;",
            "Lorg/chromium/media/mojom/AudioLog$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/media/mojom/AudioLog_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/media/mojom/AudioLog;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract onClosed()V
.end method

.method public abstract onCreated(Lorg/chromium/media/mojom/AudioParameters;Ljava/lang/String;)V
.end method

.method public abstract onError()V
.end method

.method public abstract onLogMessage(Ljava/lang/String;)V
.end method

.method public abstract onProcessingStateChanged(Ljava/lang/String;)V
.end method

.method public abstract onSetVolume(D)V
.end method

.method public abstract onStarted()V
.end method

.method public abstract onStopped()V
.end method
