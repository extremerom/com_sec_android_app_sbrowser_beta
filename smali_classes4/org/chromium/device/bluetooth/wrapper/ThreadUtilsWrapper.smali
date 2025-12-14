.class public Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper$Factory;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static sFactory:Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper$Factory;

.field private static sInstance:Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;
    .locals 1

    sget-object v0, Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;->sInstance:Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;

    if-nez v0, :cond_1

    sget-object v0, Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;->sFactory:Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper$Factory;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;

    invoke-direct {v0}, Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;-><init>()V

    sput-object v0, Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;->sInstance:Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper$Factory;->create()Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;

    move-result-object v0

    sput-object v0, Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;->sInstance:Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;

    :cond_1
    :goto_0
    sget-object v0, Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;->sInstance:Lorg/chromium/device/bluetooth/wrapper/ThreadUtilsWrapper;

    return-object v0
.end method


# virtual methods
.method public assertOnBackgroundThread()V
    .locals 0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnBackgroundThread()V

    return-void
.end method

.method public postOnUiThreadDelayed(Ljava/lang/Runnable;J)V
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/chromium/base/ThreadUtils;->postOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p1}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
