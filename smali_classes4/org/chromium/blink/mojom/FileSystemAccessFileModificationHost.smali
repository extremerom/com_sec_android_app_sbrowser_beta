.class public interface abstract Lorg/chromium/blink/mojom/FileSystemAccessFileModificationHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/FileSystemAccessFileModificationHost$RequestCapacityChange_Response;,
        Lorg/chromium/blink/mojom/FileSystemAccessFileModificationHost$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/FileSystemAccessFileModificationHost;",
            "Lorg/chromium/blink/mojom/FileSystemAccessFileModificationHost$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/blink/mojom/FileSystemAccessFileModificationHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/blink/mojom/FileSystemAccessFileModificationHost;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract onContentsModified()V
.end method

.method public abstract requestCapacityChange(JLorg/chromium/blink/mojom/FileSystemAccessFileModificationHost$RequestCapacityChange_Response;)V
.end method
