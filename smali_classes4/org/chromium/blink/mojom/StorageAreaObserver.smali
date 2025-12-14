.class public interface abstract Lorg/chromium/blink/mojom/StorageAreaObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/StorageAreaObserver$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/StorageAreaObserver;",
            "Lorg/chromium/blink/mojom/StorageAreaObserver$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/blink/mojom/StorageAreaObserver_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/blink/mojom/StorageAreaObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract allDeleted(ZLjava/lang/String;)V
.end method

.method public abstract keyChangeFailed([BLjava/lang/String;)V
.end method

.method public abstract keyChanged([B[B[BLjava/lang/String;)V
.end method

.method public abstract keyDeleted([B[BLjava/lang/String;)V
.end method

.method public abstract shouldSendOldValueOnMutations(Z)V
.end method
