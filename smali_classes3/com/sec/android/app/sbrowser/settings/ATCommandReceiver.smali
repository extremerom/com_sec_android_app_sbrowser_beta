.class public Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CookieCountListener;
.implements Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CookieSizeListener;
.implements Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CacheSizeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver$PrivateHandler;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

.field private final mPrivateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver$PrivateHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver$PrivateHandler;-><init>(Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver;->mPrivateHandler:Landroid/os/Handler;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver;)Landroid/content/BroadcastReceiver$PendingResult;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver;->sendResponse(Ljava/lang/String;)V

    return-void
.end method

.method private sendResponse(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.BCS_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "response"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onGetCacheSize(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onGetCacheSize :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATCommandReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver;->mPrivateHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onGetCookieCount(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onGetCookieCount :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATCommandReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver;->mPrivateHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onGetCookieSize(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onGetCookieSize :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATCommandReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver;->mPrivateHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver;->mContext:Landroid/content/Context;

    const-string p1, "onReceive runs.."

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ATCommandReceiver"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "android.intent.action.BCS_REQUEST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "com.samsung.intent.action.BCS_REQUEST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p1, "command"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "AT+CWAP"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    const/4 v2, 0x4

    const-string v3, "AT+CWAP=CH,SZ"

    const/4 v4, 0x2

    const-string v5, "AT+CWAP=CK,NR"

    const/4 v6, 0x3

    const-string v7, "AT+CWAP=CK,SZ"

    const/4 v8, 0x0

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    :try_start_1
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v6

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :sswitch_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v4

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_1

    :sswitch_3
    const-string p2, "AT+CWAP=BM,SZ"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v0

    goto :goto_1

    :sswitch_4
    const-string p2, "AT+CWAP=BM,NR"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v8

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_8

    if-eq p1, v0, :cond_7

    if-eq p1, v4, :cond_6

    if-eq p1, v6, :cond_5

    if-eq p1, v2, :cond_4

    const-string p1, " ** onReceive : unknown command are received.."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;->getInstance()Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;->getCacheSize(Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CacheSizeListener;)V

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    goto :goto_3

    :cond_5
    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;->getInstance()Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;->getCookieSize(Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CookieSizeListener;)V

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    goto :goto_3

    :cond_6
    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;->getInstance()Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;->getCookieCount(Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CookieCountListener;)V

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    goto :goto_3

    :cond_7
    new-instance p1, Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver$2;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver$2;-><init>(Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver;)V

    new-array p2, v8, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_3

    :cond_8
    new-instance p1, Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver$1;-><init>(Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver;)V

    new-array p2, v8, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "ERROR "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "-1"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/ATCommandReceiver;->sendResponse(Ljava/lang/String;)V

    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4190759d -> :sswitch_4
        -0x419074fa -> :sswitch_3
        -0x4184a354 -> :sswitch_2
        -0x418346da -> :sswitch_1
        -0x41834637 -> :sswitch_0
    .end sparse-switch
.end method
