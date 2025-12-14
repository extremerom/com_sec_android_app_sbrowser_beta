.class public interface abstract Lorg/chromium/blink/mojom/StorageArea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/StorageArea$GetAll_Response;,
        Lorg/chromium/blink/mojom/StorageArea$Get_Response;,
        Lorg/chromium/blink/mojom/StorageArea$DeleteAll_Response;,
        Lorg/chromium/blink/mojom/StorageArea$Delete_Response;,
        Lorg/chromium/blink/mojom/StorageArea$Put_Response;,
        Lorg/chromium/blink/mojom/StorageArea$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/StorageArea;",
            "Lorg/chromium/blink/mojom/StorageArea$Proxy;",
            ">;"
        }
    .end annotation
.end field

.field public static final PER_STORAGE_AREA_OVER_QUOTA_ALLOWANCE:I = 0x19000

.field public static final PER_STORAGE_AREA_QUOTA:I = 0xa00000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/blink/mojom/StorageArea_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/blink/mojom/StorageArea;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract addObserver(Lorg/chromium/blink/mojom/StorageAreaObserver;)V
.end method

.method public abstract checkpoint()V
.end method

.method public abstract delete([B[BLjava/lang/String;Lorg/chromium/blink/mojom/StorageArea$Delete_Response;)V
.end method

.method public abstract deleteAll(Ljava/lang/String;Lorg/chromium/blink/mojom/StorageAreaObserver;Lorg/chromium/blink/mojom/StorageArea$DeleteAll_Response;)V
.end method

.method public abstract get([BLorg/chromium/blink/mojom/StorageArea$Get_Response;)V
.end method

.method public abstract getAll(Lorg/chromium/blink/mojom/StorageAreaObserver;Lorg/chromium/blink/mojom/StorageArea$GetAll_Response;)V
.end method

.method public abstract put([B[B[BLjava/lang/String;Lorg/chromium/blink/mojom/StorageArea$Put_Response;)V
.end method
