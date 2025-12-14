.class Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$6;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$6;->this$0:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    const-string p1, "screen_brightness"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->getScreenBrightness()F

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$6;->this$0:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->f(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;)Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$ScreenBrightnessObserver;

    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$ScreenBrightnessObserver;->onScreenBrightnessChanged(F)V

    goto :goto_0

    :cond_1
    return-void
.end method
