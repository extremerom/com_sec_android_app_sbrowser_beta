.class Lorg/chromium/media/CommunicationDeviceListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/CommunicationDeviceListener$ConnectionStatus;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mBluetoothHeadsetReceiver:Landroid/content/BroadcastReceiver;

.field private final mDeviceStates:Lorg/chromium/media/CommunicationDeviceSelector$Devices;

.field private mHasBluetoothPermission:Z

.field private mIsBluetoothLeAudioSupported:Z

.field private mUsbAudioReceiver:Landroid/content/BroadcastReceiver;

.field private final mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mWiredHeadsetReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lorg/chromium/media/CommunicationDeviceSelector$Devices;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lorg/chromium/media/CommunicationDeviceListener;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iput-object p1, p0, Lorg/chromium/media/CommunicationDeviceListener;->mDeviceStates:Lorg/chromium/media/CommunicationDeviceSelector$Devices;

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/media/CommunicationDeviceListener;)Lorg/chromium/media/CommunicationDeviceSelector$Devices;
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/CommunicationDeviceListener;->mDeviceStates:Lorg/chromium/media/CommunicationDeviceSelector$Devices;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/chromium/media/CommunicationDeviceListener;)Z
    .locals 0

    invoke-direct {p0}, Lorg/chromium/media/CommunicationDeviceListener;->hasUsbAudio()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Lorg/chromium/media/CommunicationDeviceListener;Landroid/hardware/usb/UsbDevice;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/media/CommunicationDeviceListener;->hasUsbAudioCommInterface(Landroid/hardware/usb/UsbDevice;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic d(ILjava/lang/String;)V
    .locals 0

    invoke-static {p1, p0}, Lorg/chromium/media/CommunicationDeviceListener;->recordConnectionHistogram(Ljava/lang/String;I)V

    return-void
.end method

.method private getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 2

    iget-boolean p0, p0, Lorg/chromium/media/CommunicationDeviceListener;->mHasBluetoothPermission:Z

    const-string v0, "media"

    if-nez p0, :cond_0

    const-string p0, "getBluetoothAdapter() requires BLUETOOTH permission"

    invoke-static {v0, p0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "bluetooth"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-nez p0, :cond_1

    const-string v1, "Couldn\'t get BluetoothAdapter. Bluetooth not supported on this device"

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method private hasBluetoothHeadset(Landroid/bluetooth/BluetoothAdapter;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    iget-boolean p0, p0, Lorg/chromium/media/CommunicationDeviceListener;->mIsBluetoothLeAudioSupported:Z

    if-eqz p0, :cond_2

    const/16 p0, 0x16

    invoke-virtual {p1, p0}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result p0

    if-ne p0, v3, :cond_2

    move p0, v1

    goto :goto_1

    :cond_2
    move p0, v0

    :goto_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    if-nez v2, :cond_3

    if-eqz p0, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    return v0
.end method

.method private hasEarpiece()Z
    .locals 1

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.telephony"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private hasUsbAudio()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/chromium/media/CommunicationDeviceListener;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    invoke-direct {p0, v2}, Lorg/chromium/media/CommunicationDeviceListener;->hasUsbAudioCommInterface(Landroid/hardware/usb/UsbDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    return v0
.end method

.method private hasUsbAudioCommInterface(Landroid/hardware/usb/UsbDevice;)Z
    .locals 4

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    return v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method

.method private static recordConnectionHistogram(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Media.AudioDeviceConnectionStatus."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    return-void
.end method

.method private registerBluetoothIntentsIfNeeded(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 2

    iget-boolean v0, p0, Lorg/chromium/media/CommunicationDeviceListener;->mHasBluetoothPermission:Z

    if-nez v0, :cond_0

    const-string p0, "media"

    const-string p1, "registerBluetoothIntentsIfNeeded: Requires BLUETOOTH permission"

    invoke-static {p0, p1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/media/CommunicationDeviceListener;->mDeviceStates:Lorg/chromium/media/CommunicationDeviceSelector$Devices;

    const/4 v1, 0x3

    invoke-direct {p0, p1}, Lorg/chromium/media/CommunicationDeviceListener;->hasBluetoothHeadset(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/chromium/media/CommunicationDeviceSelector$Devices;->setDeviceExistence(IZ)V

    invoke-direct {p0}, Lorg/chromium/media/CommunicationDeviceListener;->registerForBluetoothHeadsetIntentBroadcast()V

    return-void
.end method

.method private registerForBluetoothHeadsetIntentBroadcast()V
    .locals 2

    new-instance v0, Lorg/chromium/media/CommunicationDeviceListener$2;

    invoke-direct {v0, p0}, Lorg/chromium/media/CommunicationDeviceListener$2;-><init>(Lorg/chromium/media/CommunicationDeviceListener;)V

    iput-object v0, p0, Lorg/chromium/media/CommunicationDeviceListener;->mBluetoothHeadsetReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/chromium/media/CommunicationDeviceListener;->mIsBluetoothLeAudioSupported:Z

    if-eqz v1, :cond_0

    const-string v1, "android.bluetooth.action.LE_AUDIO_CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lorg/chromium/media/CommunicationDeviceListener;->mBluetoothHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, p0, v0}, Lorg/chromium/base/ContextUtils;->registerProtectedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerForUsbAudioIntentBroadcast()V
    .locals 2

    new-instance v0, Lorg/chromium/media/CommunicationDeviceListener$3;

    invoke-direct {v0, p0}, Lorg/chromium/media/CommunicationDeviceListener$3;-><init>(Lorg/chromium/media/CommunicationDeviceListener;)V

    iput-object v0, p0, Lorg/chromium/media/CommunicationDeviceListener;->mUsbAudioReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lorg/chromium/media/CommunicationDeviceListener;->mUsbAudioReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, p0, v0}, Lorg/chromium/base/ContextUtils;->registerProtectedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerForWiredHeadsetIntentBroadcast()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/chromium/media/CommunicationDeviceListener$1;

    invoke-direct {v1, p0}, Lorg/chromium/media/CommunicationDeviceListener$1;-><init>(Lorg/chromium/media/CommunicationDeviceListener;)V

    iput-object v1, p0, Lorg/chromium/media/CommunicationDeviceListener;->mWiredHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lorg/chromium/media/CommunicationDeviceListener;->mWiredHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, p0, v0}, Lorg/chromium/base/ContextUtils;->registerProtectedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unregisterBluetoothIntentsIfNeeded()V
    .locals 2

    iget-boolean v0, p0, Lorg/chromium/media/CommunicationDeviceListener;->mHasBluetoothPermission:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/media/CommunicationDeviceListener;->mBluetoothHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/media/CommunicationDeviceListener;->mBluetoothHeadsetReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private unregisterForUsbAudioIntentBroadcast()V
    .locals 2

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/media/CommunicationDeviceListener;->mUsbAudioReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/media/CommunicationDeviceListener;->mUsbAudioReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private unregisterForWiredHeadsetIntentBroadcast()V
    .locals 2

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/media/CommunicationDeviceListener;->mWiredHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/media/CommunicationDeviceListener;->mWiredHeadsetReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/media/CommunicationDeviceListener;->unregisterForWiredHeadsetIntentBroadcast()V

    invoke-direct {p0}, Lorg/chromium/media/CommunicationDeviceListener;->unregisterBluetoothIntentsIfNeeded()V

    invoke-direct {p0}, Lorg/chromium/media/CommunicationDeviceListener;->unregisterForUsbAudioIntentBroadcast()V

    return-void
.end method

.method public init(Z)V
    .locals 3

    iget-object v0, p0, Lorg/chromium/media/CommunicationDeviceListener;->mDeviceStates:Lorg/chromium/media/CommunicationDeviceSelector$Devices;

    const/4 v1, 0x2

    invoke-direct {p0}, Lorg/chromium/media/CommunicationDeviceListener;->hasEarpiece()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/media/CommunicationDeviceSelector$Devices;->setDeviceExistence(IZ)V

    iget-object v0, p0, Lorg/chromium/media/CommunicationDeviceListener;->mDeviceStates:Lorg/chromium/media/CommunicationDeviceSelector$Devices;

    const/4 v1, 0x4

    invoke-direct {p0}, Lorg/chromium/media/CommunicationDeviceListener;->hasUsbAudio()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/media/CommunicationDeviceSelector$Devices;->setDeviceExistence(IZ)V

    iget-object v0, p0, Lorg/chromium/media/CommunicationDeviceListener;->mDeviceStates:Lorg/chromium/media/CommunicationDeviceSelector$Devices;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/chromium/media/CommunicationDeviceSelector$Devices;->setDeviceExistence(IZ)V

    iput-boolean p1, p0, Lorg/chromium/media/CommunicationDeviceListener;->mHasBluetoothPermission:Z

    invoke-direct {p0}, Lorg/chromium/media/CommunicationDeviceListener;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/chromium/media/CommunicationDeviceListener;->isLeAudioSupported(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/media/CommunicationDeviceListener;->mIsBluetoothLeAudioSupported:Z

    invoke-direct {p0, p1}, Lorg/chromium/media/CommunicationDeviceListener;->registerBluetoothIntentsIfNeeded(Landroid/bluetooth/BluetoothAdapter;)V

    invoke-direct {p0}, Lorg/chromium/media/CommunicationDeviceListener;->registerForWiredHeadsetIntentBroadcast()V

    invoke-direct {p0}, Lorg/chromium/media/CommunicationDeviceListener;->registerForUsbAudioIntentBroadcast()V

    return-void
.end method

.method public isLeAudioSupported(Landroid/bluetooth/BluetoothAdapter;)Z
    .locals 2

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    const/4 v1, 0x0

    if-ge p0, v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-static {p1}, Lorg/chromium/components/autofill/a;->b(Landroid/bluetooth/BluetoothAdapter;)I

    move-result p0

    const/16 p1, 0xa

    if-ne p0, p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
