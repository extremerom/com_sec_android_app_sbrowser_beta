.class public interface abstract Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordDifferenceChecker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordDifferenceChecker$GetDeviceVertualViewSupportedStatus_Response;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordDifferenceChecker$OnQuery_Response;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordDifferenceChecker$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordDifferenceChecker;",
            "Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordDifferenceChecker$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordDifferenceChecker_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordDifferenceChecker;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract getDeviceVertualViewSupportedStatus(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordDifferenceChecker$GetDeviceVertualViewSupportedStatus_Response;)V
.end method

.method public abstract onQuery(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordDifferenceChecker$OnQuery_Response;)V
.end method
