.class Lorg/chromium/midi/MidiManagerAndroid$2;
.super Landroid/media/midi/MidiManager$DeviceCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/midi/MidiManagerAndroid;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/midi/MidiManagerAndroid;


# direct methods
.method public constructor <init>(Lorg/chromium/midi/MidiManagerAndroid;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/midi/MidiManagerAndroid$2;->this$0:Lorg/chromium/midi/MidiManagerAndroid;

    invoke-direct {p0}, Landroid/media/midi/MidiManager$DeviceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceAdded(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/midi/MidiManagerAndroid$2;->this$0:Lorg/chromium/midi/MidiManagerAndroid;

    invoke-static {p0, p1}, Lorg/chromium/midi/MidiManagerAndroid;->g(Lorg/chromium/midi/MidiManagerAndroid;Landroid/media/midi/MidiDeviceInfo;)V

    return-void
.end method

.method public onDeviceRemoved(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/midi/MidiManagerAndroid$2;->this$0:Lorg/chromium/midi/MidiManagerAndroid;

    invoke-static {p0, p1}, Lorg/chromium/midi/MidiManagerAndroid;->i(Lorg/chromium/midi/MidiManagerAndroid;Landroid/media/midi/MidiDeviceInfo;)V

    return-void
.end method
