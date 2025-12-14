.class Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity$2;->this$0:Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->h()Ljava/lang/String;

    move-result-object p1

    const-string p2, "locale is changed."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity$2;->this$0:Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->g(Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;)Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity$2;->this$0:Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->g(Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;)Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->onLocaleChanged()V

    :cond_0
    return-void
.end method
