.class public interface abstract Lorg/chromium/service_manager/mojom/ServiceManagerListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/service_manager/mojom/ServiceManagerListener$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/service_manager/mojom/ServiceManagerListener;",
            "Lorg/chromium/service_manager/mojom/ServiceManagerListener$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/service_manager/mojom/ServiceManagerListener_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/service_manager/mojom/ServiceManagerListener;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract onInit([Lorg/chromium/service_manager/mojom/RunningServiceInfo;)V
.end method

.method public abstract onServiceCreated(Lorg/chromium/service_manager/mojom/RunningServiceInfo;)V
.end method

.method public abstract onServiceFailedToStart(Lorg/chromium/service_manager/mojom/Identity;)V
.end method

.method public abstract onServicePidReceived(Lorg/chromium/service_manager/mojom/Identity;I)V
.end method

.method public abstract onServiceStarted(Lorg/chromium/service_manager/mojom/Identity;I)V
.end method

.method public abstract onServiceStopped(Lorg/chromium/service_manager/mojom/Identity;)V
.end method
