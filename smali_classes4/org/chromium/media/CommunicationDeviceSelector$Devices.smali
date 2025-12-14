.class public Lorg/chromium/media/CommunicationDeviceSelector$Devices;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/CommunicationDeviceSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Devices"
.end annotation


# static fields
.field public static final DEVICE_COUNT:I = 0x5

.field public static final ID_BLUETOOTH_HEADSET:I = 0x3

.field public static final ID_DEFAULT:I = -0x2

.field public static final ID_EARPIECE:I = 0x2

.field public static final ID_INVALID:I = -0x1

.field public static final ID_SPEAKERPHONE:I = 0x0

.field public static final ID_USB_AUDIO:I = 0x4

.field public static final ID_WIRED_HEADSET:I = 0x1


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mRequestedAudioDevice:I

.field final synthetic this$0:Lorg/chromium/media/CommunicationDeviceSelector;


# direct methods
.method public constructor <init>(Lorg/chromium/media/CommunicationDeviceSelector;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/media/CommunicationDeviceSelector$Devices;->this$0:Lorg/chromium/media/CommunicationDeviceSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/media/CommunicationDeviceSelector$Devices;->mLock:Ljava/lang/Object;

    const/4 p1, -0x1

    iput p1, p0, Lorg/chromium/media/CommunicationDeviceSelector$Devices;->mRequestedAudioDevice:I

    return-void
.end method


# virtual methods
.method public clearRequestedDevice()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/media/CommunicationDeviceSelector$Devices;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    :try_start_0
    iput v1, p0, Lorg/chromium/media/CommunicationDeviceSelector$Devices;->mRequestedAudioDevice:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getDevices()[Lorg/chromium/media/AudioManagerAndroid$AudioDevice;
    .locals 7

    iget-object v0, p0, Lorg/chromium/media/CommunicationDeviceSelector$Devices;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/chromium/media/CommunicationDeviceSelector$Devices;->this$0:Lorg/chromium/media/CommunicationDeviceSelector;

    invoke-virtual {p0}, Lorg/chromium/media/CommunicationDeviceSelector;->getAvailableDevices_Locked()[Z

    move-result-object p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lorg/chromium/media/CommunicationDeviceSelector$DeviceHelpers;->getActiveDeviceCount([Z)I

    move-result v1

    new-array v1, v1, [Lorg/chromium/media/AudioManagerAndroid$AudioDevice;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_1

    aget-boolean v4, p0, v2

    if-eqz v4, :cond_0

    new-instance v4, Lorg/chromium/media/AudioManagerAndroid$AudioDevice;

    sget-object v5, Lorg/chromium/media/CommunicationDeviceSelector$DeviceHelpers;->DEVICE_NAMES:[Ljava/lang/String;

    aget-object v6, v5, v2

    invoke-direct {v4, v2, v6}, Lorg/chromium/media/AudioManagerAndroid$AudioDevice;-><init>(ILjava/lang/String;)V

    aput-object v4, v1, v3

    aget-object v4, v5, v2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getNextDeviceIfRequested()I
    .locals 3

    iget-object v0, p0, Lorg/chromium/media/CommunicationDeviceSelector$Devices;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/chromium/media/CommunicationDeviceSelector$Devices;->mRequestedAudioDevice:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/chromium/media/CommunicationDeviceSelector$Devices;->this$0:Lorg/chromium/media/CommunicationDeviceSelector;

    invoke-virtual {v1}, Lorg/chromium/media/CommunicationDeviceSelector;->getAvailableDevices_Locked()[Z

    move-result-object v1

    iget p0, p0, Lorg/chromium/media/CommunicationDeviceSelector$Devices;->mRequestedAudioDevice:I

    const/4 v2, -0x2

    if-eq p0, v2, :cond_2

    aget-boolean v2, v1, p0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return p0

    :cond_2
    :goto_0
    invoke-static {v1}, Lorg/chromium/media/CommunicationDeviceSelector$DeviceHelpers;->selectDefaultDevice([Z)I

    move-result p0

    monitor-exit v0

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPotentialDeviceStatusChange()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/CommunicationDeviceSelector$Devices;->this$0:Lorg/chromium/media/CommunicationDeviceSelector;

    invoke-virtual {p0}, Lorg/chromium/media/CommunicationDeviceSelector;->maybeUpdateSelectedDevice()V

    return-void
.end method

.method public setDeviceExistence(IZ)V
    .locals 1

    invoke-static {p1}, Lorg/chromium/media/CommunicationDeviceSelector$DeviceHelpers;->isDeviceValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/media/CommunicationDeviceSelector$Devices;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/chromium/media/CommunicationDeviceSelector$Devices;->this$0:Lorg/chromium/media/CommunicationDeviceSelector;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/media/CommunicationDeviceSelector;->setDeviceExistence_Locked(IZ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setRequestedDeviceIdAndGetNextId(I)I
    .locals 4

    invoke-static {p1}, Lorg/chromium/media/CommunicationDeviceSelector$DeviceHelpers;->isDeviceValidOrDefault(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/chromium/media/CommunicationDeviceSelector$Devices;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lorg/chromium/media/CommunicationDeviceSelector$Devices;->mRequestedAudioDevice:I

    iget-object v2, p0, Lorg/chromium/media/CommunicationDeviceSelector$Devices;->this$0:Lorg/chromium/media/CommunicationDeviceSelector;

    invoke-virtual {v2}, Lorg/chromium/media/CommunicationDeviceSelector;->getAvailableDevices_Locked()[Z

    move-result-object v2

    const/4 v3, -0x2

    if-ne p1, v3, :cond_1

    invoke-static {v2}, Lorg/chromium/media/CommunicationDeviceSelector$DeviceHelpers;->selectDefaultDevice([Z)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    aget-boolean p1, v2, p1

    if-eqz p1, :cond_2

    iget v1, p0, Lorg/chromium/media/CommunicationDeviceSelector$Devices;->mRequestedAudioDevice:I

    :cond_2
    monitor-exit v0

    return v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
