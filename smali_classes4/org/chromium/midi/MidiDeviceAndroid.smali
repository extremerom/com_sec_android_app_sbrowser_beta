.class Lorg/chromium/midi/MidiDeviceAndroid;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private final mDevice:Landroid/media/midi/MidiDevice;

.field private final mInputPorts:[Lorg/chromium/midi/MidiInputPortAndroid;

.field private mIsOpen:Z

.field private final mOutputPorts:[Lorg/chromium/midi/MidiOutputPortAndroid;


# direct methods
.method public constructor <init>(Landroid/media/midi/MidiDevice;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/midi/MidiDeviceAndroid;->mIsOpen:Z

    iput-object p1, p0, Lorg/chromium/midi/MidiDeviceAndroid;->mDevice:Landroid/media/midi/MidiDevice;

    invoke-virtual {p0}, Lorg/chromium/midi/MidiDeviceAndroid;->getInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceInfo;->getInputPortCount()I

    move-result v0

    new-array v0, v0, [Lorg/chromium/midi/MidiOutputPortAndroid;

    iput-object v0, p0, Lorg/chromium/midi/MidiDeviceAndroid;->mOutputPorts:[Lorg/chromium/midi/MidiOutputPortAndroid;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/chromium/midi/MidiDeviceAndroid;->mOutputPorts:[Lorg/chromium/midi/MidiOutputPortAndroid;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    new-instance v3, Lorg/chromium/midi/MidiOutputPortAndroid;

    invoke-direct {v3, p1, v1}, Lorg/chromium/midi/MidiOutputPortAndroid;-><init>(Landroid/media/midi/MidiDevice;I)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/midi/MidiDeviceAndroid;->getInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/midi/MidiDeviceInfo;->getOutputPortCount()I

    move-result v1

    new-array v1, v1, [Lorg/chromium/midi/MidiInputPortAndroid;

    iput-object v1, p0, Lorg/chromium/midi/MidiDeviceAndroid;->mInputPorts:[Lorg/chromium/midi/MidiInputPortAndroid;

    :goto_1
    iget-object v1, p0, Lorg/chromium/midi/MidiDeviceAndroid;->mInputPorts:[Lorg/chromium/midi/MidiInputPortAndroid;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    new-instance v2, Lorg/chromium/midi/MidiInputPortAndroid;

    invoke-direct {v2, p1, v0}, Lorg/chromium/midi/MidiInputPortAndroid;-><init>(Landroid/media/midi/MidiDevice;I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/midi/MidiDeviceAndroid;->mDevice:Landroid/media/midi/MidiDevice;

    invoke-virtual {p0}, Landroid/media/midi/MidiDevice;->getInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/midi/MidiDeviceInfo;->getProperties()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/midi/MidiDeviceAndroid;->mIsOpen:Z

    iget-object v1, p0, Lorg/chromium/midi/MidiDeviceAndroid;->mInputPorts:[Lorg/chromium/midi/MidiInputPortAndroid;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lorg/chromium/midi/MidiInputPortAndroid;->close()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/chromium/midi/MidiDeviceAndroid;->mOutputPorts:[Lorg/chromium/midi/MidiOutputPortAndroid;

    array-length v1, p0

    :goto_1
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    invoke-virtual {v2}, Lorg/chromium/midi/MidiOutputPortAndroid;->close()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getInfo()Landroid/media/midi/MidiDeviceInfo;
    .locals 0

    iget-object p0, p0, Lorg/chromium/midi/MidiDeviceAndroid;->mDevice:Landroid/media/midi/MidiDevice;

    invoke-virtual {p0}, Landroid/media/midi/MidiDevice;->getInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public getInputPorts()[Lorg/chromium/midi/MidiInputPortAndroid;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/midi/MidiDeviceAndroid;->mInputPorts:[Lorg/chromium/midi/MidiInputPortAndroid;

    return-object p0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "manufacturer"

    invoke-direct {p0, v0}, Lorg/chromium/midi/MidiDeviceAndroid;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOutputPorts()[Lorg/chromium/midi/MidiOutputPortAndroid;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/midi/MidiDeviceAndroid;->mOutputPorts:[Lorg/chromium/midi/MidiOutputPortAndroid;

    return-object p0
.end method

.method public getProduct()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "product"

    invoke-direct {p0, v0}, Lorg/chromium/midi/MidiDeviceAndroid;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const-string v0, "name"

    invoke-direct {p0, v0}, Lorg/chromium/midi/MidiDeviceAndroid;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "version"

    invoke-direct {p0, v0}, Lorg/chromium/midi/MidiDeviceAndroid;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isOpen()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/midi/MidiDeviceAndroid;->mIsOpen:Z

    return p0
.end method
