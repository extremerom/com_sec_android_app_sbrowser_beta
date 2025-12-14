.class public interface abstract Lorg/chromium/network/mojom/CrossOriginEmbedderPolicyReporter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/CrossOriginEmbedderPolicyReporter$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/CrossOriginEmbedderPolicyReporter;",
            "Lorg/chromium/network/mojom/CrossOriginEmbedderPolicyReporter$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/network/mojom/CrossOriginEmbedderPolicyReporter_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/network/mojom/CrossOriginEmbedderPolicyReporter;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract clone(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/CrossOriginEmbedderPolicyReporter;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queueCorpViolationReport(Lorg/chromium/url/mojom/Url;IZ)V
.end method
