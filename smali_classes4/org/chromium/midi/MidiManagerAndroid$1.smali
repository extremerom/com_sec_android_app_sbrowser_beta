.class Lorg/chromium/midi/MidiManagerAndroid$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/midi/MidiManagerAndroid;->postOnInitializationFailed()V
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

    iput-object p1, p0, Lorg/chromium/midi/MidiManagerAndroid$1;->this$0:Lorg/chromium/midi/MidiManagerAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/chromium/midi/MidiManagerAndroid$1;->this$0:Lorg/chromium/midi/MidiManagerAndroid;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/chromium/midi/MidiManagerAndroid$1;->this$0:Lorg/chromium/midi/MidiManagerAndroid;

    invoke-static {v1}, Lorg/chromium/midi/MidiManagerAndroid;->e(Lorg/chromium/midi/MidiManagerAndroid;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/chromium/midi/MidiManagerAndroidJni;->get()Lorg/chromium/midi/MidiManagerAndroid$Natives;

    move-result-object v1

    iget-object p0, p0, Lorg/chromium/midi/MidiManagerAndroid$1;->this$0:Lorg/chromium/midi/MidiManagerAndroid;

    invoke-static {p0}, Lorg/chromium/midi/MidiManagerAndroid;->c(Lorg/chromium/midi/MidiManagerAndroid;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lorg/chromium/midi/MidiManagerAndroid$Natives;->onInitializationFailed(J)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
