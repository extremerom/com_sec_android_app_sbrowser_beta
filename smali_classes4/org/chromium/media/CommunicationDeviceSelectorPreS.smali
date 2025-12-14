.class Lorg/chromium/media/CommunicationDeviceSelectorPreS;
.super Lorg/chromium/media/CommunicationDeviceSelector;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mBluetoothScoReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothScoState:I

.field private mDeviceExistence:[Z

.field private mHasBluetoothPermission:Z


# direct methods
.method public constructor <init>(Landroid/media/AudioManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/media/CommunicationDeviceSelector;-><init>(Landroid/media/AudioManager;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/chromium/media/CommunicationDeviceSelectorPreS;->mBluetoothScoState:I

    const/4 p1, 0x5

    new-array p1, p1, [Z

    iput-object p1, p0, Lorg/chromium/media/CommunicationDeviceSelectorPreS;->mDeviceExistence:[Z

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/media/CommunicationDeviceSelectorPreS;)I
    .locals 0

    iget p0, p0, Lorg/chromium/media/CommunicationDeviceSelectorPreS;->mBluetoothScoState:I

    return p0
.end method

.method public static bridge synthetic b(Lorg/chromium/media/CommunicationDeviceSelectorPreS;I)V
    .locals 0

    iput p1, p0, Lorg/chromium/media/CommunicationDeviceSelectorPreS;->mBluetoothScoState:I

    return-void
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .locals 0

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private registerForBluetoothScoIntentBroadcast()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/chromium/media/CommunicationDeviceSelectorPreS$1;

    invoke-direct {v1, p0}, Lorg/chromium/media/CommunicationDeviceSelectorPreS$1;-><init>(Lorg/chromium/media/CommunicationDeviceSelectorPreS;)V

    iput-object v1, p0, Lorg/chromium/media/CommunicationDeviceSelectorPreS;->mBluetoothScoReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lorg/chromium/media/CommunicationDeviceSelectorPreS;->mBluetoothScoReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, p0, v0}, Lorg/chromium/base/ContextUtils;->registerProtectedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private startBluetoothSco()V
    .locals 3

    iget-boolean v0, p0, Lorg/chromium/media/CommunicationDeviceSelectorPreS;->mHasBluetoothPermission:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/chromium/media/CommunicationDeviceSelectorPreS;->mBluetoothScoState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/chromium/media/CommunicationDeviceSelector;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_2

    iput v1, p0, Lorg/chromium/media/CommunicationDeviceSelectorPreS;->mBluetoothScoState:I

    return-void

    :cond_2
    iput v2, p0, Lorg/chromium/media/CommunicationDeviceSelectorPreS;->mBluetoothScoState:I

    iget-object p0, p0, Lorg/chromium/media/CommunicationDeviceSelector;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->startBluetoothSco()V

    :cond_3
    :goto_0
    return-void
.end method

.method private stopBluetoothSco()V
    .locals 2

    iget-boolean v0, p0, Lorg/chromium/media/CommunicationDeviceSelectorPreS;->mHasBluetoothPermission:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/chromium/media/CommunicationDeviceSelectorPreS;->mBluetoothScoState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/chromium/media/CommunicationDeviceSelector;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Unable to stop BT SCO since it is already disabled"

    invoke-static {v0}, Lorg/chromium/media/CommunicationDeviceSelector;->loge(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/media/CommunicationDeviceSelectorPreS;->mBluetoothScoState:I

    return-void

    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lorg/chromium/media/CommunicationDeviceSelectorPreS;->mBluetoothScoState:I

    iget-object p0, p0, Lorg/chromium/media/CommunicationDeviceSelector;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    return-void
.end method

.method private unregisterForBluetoothScoIntentBroadcast()V
    .locals 2

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/media/CommunicationDeviceSelectorPreS;->mBluetoothScoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/media/CommunicationDeviceSelectorPreS;->mBluetoothScoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/media/CommunicationDeviceSelector;->mDeviceListener:Lorg/chromium/media/CommunicationDeviceListener;

    invoke-virtual {v0}, Lorg/chromium/media/CommunicationDeviceListener;->close()V

    iget-boolean v0, p0, Lorg/chromium/media/CommunicationDeviceSelectorPreS;->mHasBluetoothPermission:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/media/CommunicationDeviceSelectorPreS;->unregisterForBluetoothScoIntentBroadcast()V

    :cond_0
    return-void
.end method

.method public getAvailableDevices_Locked()[Z
    .locals 4

    iget-object p0, p0, Lorg/chromium/media/CommunicationDeviceSelectorPreS;->mDeviceExistence:[Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    const/4 v0, 0x1

    aget-boolean v0, p0, v0

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    aput-boolean v3, p0, v2

    aput-boolean v3, p0, v1

    goto :goto_0

    :cond_0
    aget-boolean v0, p0, v2

    if-eqz v0, :cond_1

    aput-boolean v3, p0, v1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public init()V
    .locals 2

    const-string v0, "android.permission.BLUETOOTH"

    invoke-direct {p0, v0}, Lorg/chromium/media/CommunicationDeviceSelectorPreS;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/media/CommunicationDeviceSelectorPreS;->mHasBluetoothPermission:Z

    iget-object v1, p0, Lorg/chromium/media/CommunicationDeviceSelector;->mDeviceListener:Lorg/chromium/media/CommunicationDeviceListener;

    invoke-virtual {v1, v0}, Lorg/chromium/media/CommunicationDeviceListener;->init(Z)V

    iget-boolean v0, p0, Lorg/chromium/media/CommunicationDeviceSelectorPreS;->mHasBluetoothPermission:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/media/CommunicationDeviceSelectorPreS;->registerForBluetoothScoIntentBroadcast()V

    :cond_0
    return-void
.end method

.method public isBluetoothMicrophoneOn()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/CommunicationDeviceSelector;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result p0

    return p0
.end method

.method public isSpeakerphoneOn()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/CommunicationDeviceSelector;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result p0

    return p0
.end method

.method public setAudioDevice(I)V
    .locals 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/media/CommunicationDeviceSelectorPreS;->startBluetoothSco()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/media/CommunicationDeviceSelectorPreS;->stopBluetoothSco()V

    :goto_0
    const/4 v1, 0x1

    if-eqz p1, :cond_4

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const-string p0, "Invalid audio device selection"

    invoke-static {p0}, Lorg/chromium/media/CommunicationDeviceSelector;->loge(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2}, Lorg/chromium/media/CommunicationDeviceSelectorPreS;->setSpeakerphoneOn(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Lorg/chromium/media/CommunicationDeviceSelectorPreS;->setSpeakerphoneOn(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2}, Lorg/chromium/media/CommunicationDeviceSelectorPreS;->setSpeakerphoneOn(Z)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v1}, Lorg/chromium/media/CommunicationDeviceSelectorPreS;->setSpeakerphoneOn(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method public setCommunicationAudioModeOn(Z)V
    .locals 0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/chromium/media/CommunicationDeviceSelectorPreS;->stopBluetoothSco()V

    iget-object p0, p0, Lorg/chromium/media/CommunicationDeviceSelector;->mDeviceStates:Lorg/chromium/media/CommunicationDeviceSelector$Devices;

    invoke-virtual {p0}, Lorg/chromium/media/CommunicationDeviceSelector$Devices;->clearRequestedDevice()V

    :cond_0
    return-void
.end method

.method public setDeviceExistence_Locked(IZ)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/CommunicationDeviceSelectorPreS;->mDeviceExistence:[Z

    aput-boolean p2, p0, p1

    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/media/CommunicationDeviceSelector;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/chromium/media/CommunicationDeviceSelector;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    return-void
.end method
