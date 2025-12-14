.class Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/utils/ShareHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TargetChosenReceiver"
.end annotation


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static sLastRegisteredReceiver:Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;

.field private static sTargetChosenReceiveAction:Ljava/lang/String;


# instance fields
.field private mCallback:Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;)V
    .locals 0
    .param p1    # Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;->mCallback:Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;->onIntentCompleted(I)V

    return-void
.end method

.method public static bridge synthetic b(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/sbrowser/common/utils/ShareParams;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;->sendChooserIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/sbrowser/common/utils/ShareParams;)Z

    move-result p0

    return p0
.end method

.method private cancel()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;->mCallback:Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;->onCancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;->mCallback:Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;

    :cond_0
    return-void
.end method

.method private onIntentCompleted(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;->cancel()V

    :cond_0
    return-void
.end method

.method private static sendChooserIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/sbrowser/common/utils/ShareParams;)Z
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;->sTargetChosenReceiveAction:Ljava/lang/String;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_ACTION"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;->sTargetChosenReceiveAction:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;->sLastRegisteredReceiver:Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;

    if-eqz v3, :cond_1

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v3, Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;->sLastRegisteredReceiver:Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;

    invoke-direct {v3}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;->cancel()V

    :cond_1
    new-instance v3, Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams;->getCallback()Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;-><init>(Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;)V

    sput-object v3, Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;->sLastRegisteredReceiver:Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    sget-object v5, Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;->sTargetChosenReceiveAction:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/sbrowser/common/device/ContextUtils;->registerExportedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;->sTargetChosenReceiveAction:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "receiver_token"

    sget-object v3, Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;->sLastRegisteredReceiver:Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x0

    const/high16 v3, 0x54000000

    invoke-static {p0, v0, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams;->getChooserExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/utils/ShareHelper;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;->sLastRegisteredReceiver:Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/utils/ShareHelper;->b(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;)Z

    move-result p0

    monitor-exit v1

    return p0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;->sLastRegisteredReceiver:Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;

    if-eq v1, p0, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;->sLastRegisteredReceiver:Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    sput-object p1, Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;->sLastRegisteredReceiver:Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "receiver_token"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "receiver_token"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;->mCallback:Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;->onTargetChosen()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/utils/ShareHelper$TargetChosenReceiver;->mCallback:Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;

    :cond_2
    :goto_0
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
