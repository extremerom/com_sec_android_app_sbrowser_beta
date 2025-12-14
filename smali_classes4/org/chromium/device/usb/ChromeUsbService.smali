.class final Lorg/chromium/device/usb/ChromeUsbService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/usb/ChromeUsbService$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field mUsbDeviceChangeReceiver:Landroid/content/BroadcastReceiver;

.field mUsbManager:Landroid/hardware/usb/UsbManager;

.field mUsbPermissionReceiver:Landroid/content/BroadcastReceiver;

.field mUsbServiceAndroid:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/chromium/device/usb/ChromeUsbService;->mUsbServiceAndroid:J

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "usb"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbManager;

    iput-object p1, p0, Lorg/chromium/device/usb/ChromeUsbService;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-direct {p0}, Lorg/chromium/device/usb/ChromeUsbService;->registerForUsbDeviceIntentBroadcasts()V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Usb"

    const-string p2, "ChromeUsbService created."

    invoke-static {p1, p2, p0}, Lorg/chromium/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private close()V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/device/usb/ChromeUsbService;->unregisterForUsbDeviceIntentBroadcasts()V

    return-void
.end method

.method private static create(J)Lorg/chromium/device/usb/ChromeUsbService;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/device/usb/ChromeUsbService;

    invoke-direct {v0, p0, p1}, Lorg/chromium/device/usb/ChromeUsbService;-><init>(J)V

    return-object v0
.end method

.method private getDevices()[Ljava/lang/Object;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/device/usb/ChromeUsbService;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private hasDevicePermission(Lorg/chromium/device/usb/ChromeUsbDevice;)Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p1}, Lorg/chromium/device/usb/ChromeUsbDevice;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/device/usb/ChromeUsbService;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result p0

    return p0
.end method

.method private openDevice(Lorg/chromium/device/usb/ChromeUsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p1}, Lorg/chromium/device/usb/ChromeUsbDevice;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/device/usb/ChromeUsbService;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object p0

    return-object p0
.end method

.method private registerForUsbDeviceIntentBroadcasts()V
    .locals 3

    new-instance v0, Lorg/chromium/device/usb/ChromeUsbService$1;

    invoke-direct {v0, p0}, Lorg/chromium/device/usb/ChromeUsbService$1;-><init>(Lorg/chromium/device/usb/ChromeUsbService;)V

    iput-object v0, p0, Lorg/chromium/device/usb/ChromeUsbService;->mUsbPermissionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lorg/chromium/device/usb/ChromeUsbService$2;

    invoke-direct {v0, p0}, Lorg/chromium/device/usb/ChromeUsbService$2;-><init>(Lorg/chromium/device/usb/ChromeUsbService;)V

    iput-object v0, p0, Lorg/chromium/device/usb/ChromeUsbService;->mUsbDeviceChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "org.chromium.device.ACTION_USB_PERMISSION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/chromium/device/usb/ChromeUsbService;->mUsbPermissionReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v2, v1}, Lorg/chromium/base/ContextUtils;->registerNonExportedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/chromium/device/usb/ChromeUsbService;->mUsbDeviceChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, p0, v1}, Lorg/chromium/base/ContextUtils;->registerProtectedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private requestDevicePermission(Lorg/chromium/device/usb/ChromeUsbDevice;)V
    .locals 8
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p1}, Lorg/chromium/device/usb/ChromeUsbDevice;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/device/usb/ChromeUsbService;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/chromium/device/usb/ChromeUsbServiceJni;->get()Lorg/chromium/device/usb/ChromeUsbService$Natives;

    move-result-object v2

    iget-wide v3, p0, Lorg/chromium/device/usb/ChromeUsbService;->mUsbServiceAndroid:J

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v6

    const/4 v7, 0x1

    move-object v5, p0

    invoke-interface/range {v2 .. v7}, Lorg/chromium/device/usb/ChromeUsbService$Natives;->devicePermissionRequestComplete(JLorg/chromium/device/usb/ChromeUsbService;IZ)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.chromium.device.ACTION_USB_PERMISSION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v1}, Lorg/chromium/base/IntentUtils;->addTrustedIntentExtras(Landroid/content/Intent;)V

    const/4 v2, 0x1

    invoke-static {v2}, Lorg/chromium/base/IntentUtils;->getPendingIntentMutabilityFlag(Z)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object p0, p0, Lorg/chromium/device/usb/ChromeUsbService;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p1}, Lorg/chromium/device/usb/ChromeUsbDevice;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    :goto_0
    return-void
.end method

.method private unregisterForUsbDeviceIntentBroadcasts()V
    .locals 3

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/device/usb/ChromeUsbService;->mUsbDeviceChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/device/usb/ChromeUsbService;->mUsbDeviceChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/device/usb/ChromeUsbService;->mUsbPermissionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v0, p0, Lorg/chromium/device/usb/ChromeUsbService;->mUsbPermissionReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method
