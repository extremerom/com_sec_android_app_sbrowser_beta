.class Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSecretModeChanged(ZLandroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->h()Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_0

    const-string p1, "enabled."

    goto :goto_0

    :cond_0
    const-string p1, "disabled."

    :goto_0
    const-string v0, "Secret Mode is "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->g(Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;)Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->g(Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;)Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->onSecretModeChanged()V

    :cond_1
    return-void
.end method
