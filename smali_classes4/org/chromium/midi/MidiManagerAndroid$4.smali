.class Lorg/chromium/midi/MidiManagerAndroid$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/midi/MidiManager$OnDeviceOpenedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/midi/MidiManagerAndroid;->openDevice(Landroid/media/midi/MidiDeviceInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/midi/MidiManagerAndroid;

.field final synthetic val$info:Landroid/media/midi/MidiDeviceInfo;


# direct methods
.method public constructor <init>(Lorg/chromium/midi/MidiManagerAndroid;Landroid/media/midi/MidiDeviceInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/midi/MidiManagerAndroid$4;->this$0:Lorg/chromium/midi/MidiManagerAndroid;

    iput-object p2, p0, Lorg/chromium/midi/MidiManagerAndroid$4;->val$info:Landroid/media/midi/MidiDeviceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceOpened(Landroid/media/midi/MidiDevice;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/midi/MidiManagerAndroid$4;->this$0:Lorg/chromium/midi/MidiManagerAndroid;

    iget-object p0, p0, Lorg/chromium/midi/MidiManagerAndroid$4;->val$info:Landroid/media/midi/MidiDeviceInfo;

    invoke-static {v0, p1, p0}, Lorg/chromium/midi/MidiManagerAndroid;->h(Lorg/chromium/midi/MidiManagerAndroid;Landroid/media/midi/MidiDevice;Landroid/media/midi/MidiDeviceInfo;)V

    return-void
.end method
