.class public interface abstract Lorg/chromium/blink/mojom/AiWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/AiWriter$MeasureUsage_Response;,
        Lorg/chromium/blink/mojom/AiWriter$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/AiWriter;",
            "Lorg/chromium/blink/mojom/AiWriter$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/blink/mojom/AiWriter_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/blink/mojom/AiWriter;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract measureUsage(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/blink/mojom/AiWriter$MeasureUsage_Response;)V
.end method

.method public abstract write(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/blink/mojom/ModelStreamingResponder;)V
.end method
