.class public interface abstract Lorg/chromium/device/mojom/SmartCardContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/mojom/SmartCardContext$Connect_Response;,
        Lorg/chromium/device/mojom/SmartCardContext$Cancel_Response;,
        Lorg/chromium/device/mojom/SmartCardContext$GetStatusChange_Response;,
        Lorg/chromium/device/mojom/SmartCardContext$ListReaders_Response;,
        Lorg/chromium/device/mojom/SmartCardContext$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/device/mojom/SmartCardContext;",
            "Lorg/chromium/device/mojom/SmartCardContext$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/device/mojom/SmartCardContext_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/device/mojom/SmartCardContext;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract cancel(Lorg/chromium/device/mojom/SmartCardContext$Cancel_Response;)V
.end method

.method public abstract connect(Ljava/lang/String;ILorg/chromium/device/mojom/SmartCardProtocols;Lorg/chromium/device/mojom/SmartCardConnectionWatcher;Lorg/chromium/device/mojom/SmartCardContext$Connect_Response;)V
.end method

.method public abstract getStatusChange(Lorg/chromium/mojo_base/mojom/TimeDelta;[Lorg/chromium/device/mojom/SmartCardReaderStateIn;Lorg/chromium/device/mojom/SmartCardContext$GetStatusChange_Response;)V
.end method

.method public abstract listReaders(Lorg/chromium/device/mojom/SmartCardContext$ListReaders_Response;)V
.end method
