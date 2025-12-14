.class public interface abstract Lorg/chromium/IsReadyToPayService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/IsReadyToPayService$Stub;,
        Lorg/chromium/IsReadyToPayService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "org.chromium.IsReadyToPayService"


# virtual methods
.method public abstract isReadyToPay(Lorg/chromium/IsReadyToPayServiceCallback;)V
.end method
