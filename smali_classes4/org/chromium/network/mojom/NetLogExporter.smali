.class public interface abstract Lorg/chromium/network/mojom/NetLogExporter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/NetLogExporter$Stop_Response;,
        Lorg/chromium/network/mojom/NetLogExporter$Start_Response;,
        Lorg/chromium/network/mojom/NetLogExporter$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/NetLogExporter;",
            "Lorg/chromium/network/mojom/NetLogExporter$Proxy;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNLIMITED_FILE_SIZE:J = -0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/network/mojom/NetLogExporter_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/network/mojom/NetLogExporter;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract start(Lorg/chromium/mojo_base/mojom/File;Lorg/chromium/mojo_base/mojom/DictionaryValue;IJLorg/chromium/network/mojom/NetLogExporter$Start_Response;)V
.end method

.method public abstract stop(Lorg/chromium/mojo_base/mojom/DictionaryValue;Lorg/chromium/network/mojom/NetLogExporter$Stop_Response;)V
.end method
