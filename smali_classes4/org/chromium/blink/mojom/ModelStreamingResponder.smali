.class public interface abstract Lorg/chromium/blink/mojom/ModelStreamingResponder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/ModelStreamingResponder$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/ModelStreamingResponder;",
            "Lorg/chromium/blink/mojom/ModelStreamingResponder$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/blink/mojom/ModelStreamingResponder_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/blink/mojom/ModelStreamingResponder;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract onCompletion(Lorg/chromium/blink/mojom/ModelExecutionContextInfo;)V
.end method

.method public abstract onError(I)V
.end method

.method public abstract onQuotaOverflow()V
.end method

.method public abstract onStreaming(Ljava/lang/String;)V
.end method
