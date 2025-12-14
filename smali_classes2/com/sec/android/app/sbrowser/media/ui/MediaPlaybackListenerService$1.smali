.class Lcom/sec/android/app/sbrowser/media/ui/MediaPlaybackListenerService$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/media/ui/MediaPlaybackListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/ui/MediaPlaybackListenerService;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/ui/MediaPlaybackListenerService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaPlaybackListenerService$1;->this$0:Lcom/sec/android/app/sbrowser/media/ui/MediaPlaybackListenerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/ui/MediaListenerService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/sec/android/app/sbrowser/media/ui/MediaPlaybackListenerService;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaForegroundServiceUtils;->startForegroundService(Landroid/content/Intent;)V

    return-void
.end method
