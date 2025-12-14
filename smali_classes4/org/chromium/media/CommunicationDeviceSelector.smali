.class abstract Lorg/chromium/media/CommunicationDeviceSelector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/CommunicationDeviceSelector$Devices;,
        Lorg/chromium/media/CommunicationDeviceSelector$DeviceHelpers;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field protected static final DEBUG:Z = false


# instance fields
.field protected final mAudioManager:Landroid/media/AudioManager;

.field protected final mDeviceListener:Lorg/chromium/media/CommunicationDeviceListener;

.field protected mDeviceStates:Lorg/chromium/media/CommunicationDeviceSelector$Devices;


# direct methods
.method public constructor <init>(Landroid/media/AudioManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/media/CommunicationDeviceSelector$Devices;

    invoke-direct {v0, p0}, Lorg/chromium/media/CommunicationDeviceSelector$Devices;-><init>(Lorg/chromium/media/CommunicationDeviceSelector;)V

    iput-object v0, p0, Lorg/chromium/media/CommunicationDeviceSelector;->mDeviceStates:Lorg/chromium/media/CommunicationDeviceSelector$Devices;

    iput-object p1, p0, Lorg/chromium/media/CommunicationDeviceSelector;->mAudioManager:Landroid/media/AudioManager;

    new-instance p1, Lorg/chromium/media/CommunicationDeviceListener;

    invoke-direct {p1, v0}, Lorg/chromium/media/CommunicationDeviceListener;-><init>(Lorg/chromium/media/CommunicationDeviceSelector$Devices;)V

    iput-object p1, p0, Lorg/chromium/media/CommunicationDeviceSelector;->mDeviceListener:Lorg/chromium/media/CommunicationDeviceListener;

    return-void
.end method

.method public static loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "media"

    invoke-static {v0, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract getAvailableDevices_Locked()[Z
.end method

.method public getDevices()[Lorg/chromium/media/AudioManagerAndroid$AudioDevice;
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/CommunicationDeviceSelector;->mDeviceStates:Lorg/chromium/media/CommunicationDeviceSelector$Devices;

    invoke-virtual {p0}, Lorg/chromium/media/CommunicationDeviceSelector$Devices;->getDevices()[Lorg/chromium/media/AudioManagerAndroid$AudioDevice;

    move-result-object p0

    return-object p0
.end method

.method public abstract init()V
.end method

.method public abstract isBluetoothMicrophoneOn()Z
.end method

.method public abstract isSpeakerphoneOn()Z
.end method

.method public maybeUpdateSelectedDevice()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/media/CommunicationDeviceSelector;->mDeviceStates:Lorg/chromium/media/CommunicationDeviceSelector$Devices;

    invoke-virtual {v0}, Lorg/chromium/media/CommunicationDeviceSelector$Devices;->getNextDeviceIfRequested()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lorg/chromium/media/CommunicationDeviceSelector;->setAudioDevice(I)V

    return-void
.end method

.method public selectDevice(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lorg/chromium/media/CommunicationDeviceSelector$DeviceHelpers;->parseStringId(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lorg/chromium/media/CommunicationDeviceSelector;->mDeviceStates:Lorg/chromium/media/CommunicationDeviceSelector$Devices;

    invoke-virtual {v0, p1}, Lorg/chromium/media/CommunicationDeviceSelector$Devices;->setRequestedDeviceIdAndGetNextId(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/chromium/media/CommunicationDeviceSelector;->setAudioDevice(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public abstract setAudioDevice(I)V
.end method

.method public abstract setCommunicationAudioModeOn(Z)V
.end method

.method public setDeviceExistence_Locked(IZ)V
    .locals 0

    return-void
.end method

.method public abstract setSpeakerphoneOn(Z)V
.end method
