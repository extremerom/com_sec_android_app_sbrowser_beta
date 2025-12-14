.class Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$MediaSessionBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaSessionBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;


# direct methods
.method private constructor <init>(Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$MediaSessionBroadcastReceiver;->this$0:Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$MediaSessionBroadcastReceiver;-><init>(Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-static {p2}, Lcom/sec/terrace/content/browser/pip/TerracePipIntentUtils;->isTrustedIntentFromSelf(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "com.sec.terrace.content.browser.pip.TerracePictureInPictureConstants.NativePointer"

    const-wide/16 v0, 0x0

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iget-object p1, p0, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$MediaSessionBroadcastReceiver;->this$0:Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;

    invoke-static {p1}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->q(Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;)J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_9

    iget-object p0, p0, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$MediaSessionBroadcastReceiver;->this$0:Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->q(Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;)J

    move-result-wide p0

    cmp-long p0, p0, v0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.sec.terrace.content.browser.pip.TerracePictureInPictureConstants.MediaAction"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "com.sec.terrace.content.browser.pip.TerracePictureInPictureConstants.ControlType"

    const/4 p1, -0x1

    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_8

    if-eq p0, p1, :cond_7

    const/4 p1, 0x2

    if-eq p0, p1, :cond_6

    const/4 p1, 0x3

    if-eq p0, p1, :cond_5

    const/16 p1, 0x12

    if-eq p0, p1, :cond_4

    const/16 p1, 0x13

    if-eq p0, p1, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivityJni;->get()Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$Natives;

    move-result-object p0

    invoke-interface {p0, v2, v3}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$Natives;->nextSlide(J)V

    return-void

    :cond_4
    invoke-static {}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivityJni;->get()Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$Natives;

    move-result-object p0

    invoke-interface {p0, v2, v3}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$Natives;->previousSlide(J)V

    return-void

    :cond_5
    invoke-static {}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivityJni;->get()Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$Natives;

    move-result-object p0

    invoke-interface {p0, v2, v3}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$Natives;->nextTrack(J)V

    return-void

    :cond_6
    invoke-static {}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivityJni;->get()Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$Natives;

    move-result-object p0

    invoke-interface {p0, v2, v3}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$Natives;->previousTrack(J)V

    return-void

    :cond_7
    invoke-static {}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivityJni;->get()Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$Natives;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, v2, v3, p1}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$Natives;->togglePlayPause(JZ)V

    return-void

    :cond_8
    invoke-static {}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivityJni;->get()Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$Natives;

    move-result-object p0

    invoke-interface {p0, v2, v3, p1}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$Natives;->togglePlayPause(JZ)V

    :cond_9
    :goto_0
    return-void
.end method
