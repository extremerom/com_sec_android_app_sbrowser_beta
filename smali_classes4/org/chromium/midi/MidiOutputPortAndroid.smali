.class Lorg/chromium/midi/MidiOutputPortAndroid;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private final mDevice:Landroid/media/midi/MidiDevice;

.field private final mIndex:I

.field private mPort:Landroid/media/midi/MidiInputPort;


# direct methods
.method public constructor <init>(Landroid/media/midi/MidiDevice;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/midi/MidiOutputPortAndroid;->mDevice:Landroid/media/midi/MidiDevice;

    iput p2, p0, Lorg/chromium/midi/MidiOutputPortAndroid;->mIndex:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/midi/MidiOutputPortAndroid;->mPort:Landroid/media/midi/MidiInputPort;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/midi/MidiInputPort;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/midi/MidiOutputPortAndroid;->mPort:Landroid/media/midi/MidiInputPort;

    return-void
.end method

.method public open()Z
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/midi/MidiOutputPortAndroid;->mPort:Landroid/media/midi/MidiInputPort;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/chromium/midi/MidiOutputPortAndroid;->mDevice:Landroid/media/midi/MidiDevice;

    iget v2, p0, Lorg/chromium/midi/MidiOutputPortAndroid;->mIndex:I

    invoke-virtual {v0, v2}, Landroid/media/midi/MidiDevice;->openInputPort(I)Landroid/media/midi/MidiInputPort;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/midi/MidiOutputPortAndroid;->mPort:Landroid/media/midi/MidiInputPort;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public send([B)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/midi/MidiOutputPortAndroid;->mPort:Landroid/media/midi/MidiInputPort;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/media/midi/MidiReceiver;->send([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "MidiOutputPortAndroid.send: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "midi"

    invoke-static {p1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
