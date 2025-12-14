.class Lorg/chromium/media/CommunicationDeviceSelectorPostS;
.super Lorg/chromium/media/CommunicationDeviceSelector;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mHasBluetoothConnectPermission:Z


# direct methods
.method public constructor <init>(Landroid/media/AudioManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/media/CommunicationDeviceSelector;-><init>(Landroid/media/AudioManager;)V

    return-void
.end method

.method private static getTargetTypesFromId(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    if-eqz p0, :cond_4

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq p0, v4, :cond_3

    if-eq p0, v1, :cond_2

    if-eq p0, v3, :cond_1

    if-eq p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x16

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p0, 0xb

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/16 p0, 0x1a

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p0, 0x1b

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p0, 0x8

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/CommunicationDeviceSelector;->mDeviceListener:Lorg/chromium/media/CommunicationDeviceListener;

    invoke-virtual {p0}, Lorg/chromium/media/CommunicationDeviceListener;->close()V

    return-void
.end method

.method public getAvailableDevices_Locked()[Z
    .locals 6

    iget-object p0, p0, Lorg/chromium/media/CommunicationDeviceSelector;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {p0}, Lj9/a;->q(Landroid/media/AudioManager;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x5

    new-array v0, v0, [Z

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceInfo;

    invoke-virtual {v1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v4, 0x4

    if-eq v1, v4, :cond_2

    const/4 v5, 0x7

    if-eq v1, v5, :cond_1

    const/16 v5, 0x8

    if-eq v1, v5, :cond_1

    const/16 v5, 0xb

    if-eq v1, v5, :cond_0

    const/16 v5, 0x16

    if-eq v1, v5, :cond_0

    const/16 v4, 0x1a

    if-eq v1, v4, :cond_1

    const/16 v4, 0x1b

    if-eq v1, v4, :cond_1

    goto :goto_0

    :cond_0
    aput-boolean v3, v0, v4

    goto :goto_0

    :cond_1
    aput-boolean v3, v0, v2

    goto :goto_0

    :cond_2
    aput-boolean v3, v0, v3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    goto :goto_0

    :cond_4
    aput-boolean v3, v0, v2

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public getMatchingCommunicationDevice(Ljava/util/List;)Landroid/media/AudioDeviceInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/media/AudioDeviceInfo;"
        }
    .end annotation

    iget-object p0, p0, Lorg/chromium/media/CommunicationDeviceSelector;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {p0}, Lj9/a;->q(Landroid/media/AudioManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceInfo;

    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public init()V
    .locals 4

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const-string v3, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {v0, v3, v1, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/media/CommunicationDeviceSelectorPostS;->mHasBluetoothConnectPermission:Z

    if-nez v0, :cond_1

    const-string v0, "media"

    const-string v1, "BLUETOOTH_CONNECT permission is missing."

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lorg/chromium/media/CommunicationDeviceSelector;->mDeviceListener:Lorg/chromium/media/CommunicationDeviceListener;

    iget-boolean p0, p0, Lorg/chromium/media/CommunicationDeviceSelectorPostS;->mHasBluetoothConnectPermission:Z

    invoke-virtual {v0, p0}, Lorg/chromium/media/CommunicationDeviceListener;->init(Z)V

    return-void
.end method

.method public isBluetoothMicrophoneOn()Z
    .locals 1

    iget-object p0, p0, Lorg/chromium/media/CommunicationDeviceSelector;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {p0}, Lj9/a;->d(Landroid/media/AudioManager;)Landroid/media/AudioDeviceInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result p0

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSpeakerphoneOn()Z
    .locals 1

    iget-object p0, p0, Lorg/chromium/media/CommunicationDeviceSelector;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {p0}, Lj9/a;->d(Landroid/media/AudioManager;)Landroid/media/AudioDeviceInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setAudioDevice(I)V
    .locals 1

    invoke-static {p1}, Lorg/chromium/media/CommunicationDeviceSelector$DeviceHelpers;->isDeviceValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lorg/chromium/media/CommunicationDeviceSelectorPostS;->getTargetTypesFromId(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/media/CommunicationDeviceSelectorPostS;->getMatchingCommunicationDevice(Ljava/util/List;)Landroid/media/AudioDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/chromium/media/CommunicationDeviceSelector;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {p0, v0}, Lj9/a;->A(Landroid/media/AudioManager;Landroid/media/AudioDeviceInfo;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "Error setting communication device"

    invoke-static {p0}, Lorg/chromium/media/CommunicationDeviceSelector;->loge(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Couldn\'t find available device for: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/chromium/media/CommunicationDeviceSelector$DeviceHelpers;->getDeviceName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/media/CommunicationDeviceSelector;->loge(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setCommunicationAudioModeOn(Z)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/chromium/media/CommunicationDeviceSelector;->mDeviceStates:Lorg/chromium/media/CommunicationDeviceSelector$Devices;

    invoke-virtual {p1}, Lorg/chromium/media/CommunicationDeviceSelector$Devices;->clearRequestedDevice()V

    iget-object p0, p0, Lorg/chromium/media/CommunicationDeviceSelector;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {p0}, Lj9/a;->s(Landroid/media/AudioManager;)V

    :goto_0
    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/media/CommunicationDeviceSelectorPostS;->isSpeakerphoneOn()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/chromium/media/CommunicationDeviceSelectorPostS;->setAudioDevice(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/chromium/media/CommunicationDeviceSelector;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {p1}, Lj9/a;->s(Landroid/media/AudioManager;)V

    invoke-virtual {p0}, Lorg/chromium/media/CommunicationDeviceSelector;->maybeUpdateSelectedDevice()V

    :goto_0
    return-void
.end method
