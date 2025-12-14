.class Lorg/chromium/midi/MidiInputPortAndroid;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/midi/MidiInputPortAndroid$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private final mDevice:Landroid/media/midi/MidiDevice;

.field private final mIndex:I

.field private mNativeReceiverPointer:J

.field private mPort:Landroid/media/midi/MidiOutputPort;


# direct methods
.method public constructor <init>(Landroid/media/midi/MidiDevice;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/midi/MidiInputPortAndroid;->mDevice:Landroid/media/midi/MidiDevice;

    iput p2, p0, Lorg/chromium/midi/MidiInputPortAndroid;->mIndex:I

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/midi/MidiInputPortAndroid;)J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/midi/MidiInputPortAndroid;->mNativeReceiverPointer:J

    return-wide v0
.end method

.method public static bridge synthetic b(Lorg/chromium/midi/MidiInputPortAndroid;)Landroid/media/midi/MidiOutputPort;
    .locals 0

    iget-object p0, p0, Lorg/chromium/midi/MidiInputPortAndroid;->mPort:Landroid/media/midi/MidiOutputPort;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/chromium/midi/MidiInputPortAndroid;->mPort:Landroid/media/midi/MidiOutputPort;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/media/midi/MidiOutputPort;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :goto_0
    const-wide/16 v0, 0x0

    :try_start_2
    iput-wide v0, p0, Lorg/chromium/midi/MidiInputPortAndroid;->mNativeReceiverPointer:J

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/midi/MidiInputPortAndroid;->mPort:Landroid/media/midi/MidiOutputPort;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public open(J)Z
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/midi/MidiInputPortAndroid;->mPort:Landroid/media/midi/MidiOutputPort;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/chromium/midi/MidiInputPortAndroid;->mDevice:Landroid/media/midi/MidiDevice;

    iget v2, p0, Lorg/chromium/midi/MidiInputPortAndroid;->mIndex:I

    invoke-virtual {v0, v2}, Landroid/media/midi/MidiDevice;->openOutputPort(I)Landroid/media/midi/MidiOutputPort;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/midi/MidiInputPortAndroid;->mPort:Landroid/media/midi/MidiOutputPort;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iput-wide p1, p0, Lorg/chromium/midi/MidiInputPortAndroid;->mNativeReceiverPointer:J

    new-instance p1, Lorg/chromium/midi/MidiInputPortAndroid$1;

    invoke-direct {p1, p0}, Lorg/chromium/midi/MidiInputPortAndroid$1;-><init>(Lorg/chromium/midi/MidiInputPortAndroid;)V

    invoke-virtual {v0, p1}, Landroid/media/midi/MidiSender;->connect(Landroid/media/midi/MidiReceiver;)V

    return v1
.end method
