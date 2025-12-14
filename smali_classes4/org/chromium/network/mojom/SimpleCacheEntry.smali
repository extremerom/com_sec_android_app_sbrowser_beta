.class public interface abstract Lorg/chromium/network/mojom/SimpleCacheEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/SimpleCacheEntry$Close_Response;,
        Lorg/chromium/network/mojom/SimpleCacheEntry$ReadSparseData_Response;,
        Lorg/chromium/network/mojom/SimpleCacheEntry$WriteSparseData_Response;,
        Lorg/chromium/network/mojom/SimpleCacheEntry$ReadData_Response;,
        Lorg/chromium/network/mojom/SimpleCacheEntry$WriteData_Response;,
        Lorg/chromium/network/mojom/SimpleCacheEntry$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/SimpleCacheEntry;",
            "Lorg/chromium/network/mojom/SimpleCacheEntry$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/network/mojom/SimpleCacheEntry;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract close(Lorg/chromium/network/mojom/SimpleCacheEntry$Close_Response;)V
.end method

.method public abstract readData(IIILorg/chromium/network/mojom/SimpleCacheEntry$ReadData_Response;)V
.end method

.method public abstract readSparseData(IILorg/chromium/network/mojom/SimpleCacheEntry$ReadSparseData_Response;)V
.end method

.method public abstract writeData(II[BZLorg/chromium/network/mojom/SimpleCacheEntry$WriteData_Response;)V
.end method

.method public abstract writeSparseData(I[BLorg/chromium/network/mojom/SimpleCacheEntry$WriteSparseData_Response;)V
.end method
