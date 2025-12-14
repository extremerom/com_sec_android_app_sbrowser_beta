.class interface abstract Lorg/chromium/device/usb/ChromeUsbService$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/usb/ChromeUsbService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract deviceAttached(JLorg/chromium/device/usb/ChromeUsbService;Landroid/hardware/usb/UsbDevice;)V
.end method

.method public abstract deviceDetached(JLorg/chromium/device/usb/ChromeUsbService;I)V
.end method

.method public abstract devicePermissionRequestComplete(JLorg/chromium/device/usb/ChromeUsbService;IZ)V
.end method
