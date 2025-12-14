.class Lorg/chromium/media/AudioManagerAndroid$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/media/AudioManagerAndroid;->startObservingVolumeChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/media/AudioManagerAndroid;


# direct methods
.method public constructor <init>(Lorg/chromium/media/AudioManagerAndroid;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/media/AudioManagerAndroid$1;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lorg/chromium/media/AudioManagerAndroid$1;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    invoke-static {p1}, Lorg/chromium/media/AudioManagerAndroid;->a(Lorg/chromium/media/AudioManagerAndroid;)Landroid/media/AudioManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    invoke-static {}, Lorg/chromium/media/AudioManagerAndroidJni;->get()Lorg/chromium/media/AudioManagerAndroid$Natives;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/media/AudioManagerAndroid$1;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    invoke-static {v2}, Lorg/chromium/media/AudioManagerAndroid;->b(Lorg/chromium/media/AudioManagerAndroid;)J

    move-result-wide v2

    iget-object p0, p0, Lorg/chromium/media/AudioManagerAndroid$1;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-interface {v1, v2, v3, p0, v0}, Lorg/chromium/media/AudioManagerAndroid$Natives;->setMute(JLorg/chromium/media/AudioManagerAndroid;Z)V

    return-void
.end method
