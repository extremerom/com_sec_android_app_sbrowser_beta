.class Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$1;->this$0:Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const-string p1, "HandoffHelper"

    const-string v0, "HandoffObserver onChange()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$1;->this$0:Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->b(Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.samsung.android.mcfds.HandoffProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "getHandoffData"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "handoffData"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Handoff data is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$1;->this$0:Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->unregisterObserver()V

    return-void

    :cond_1
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/handoff/HandoffUtil;->getType(Ljava/lang/String;)I

    move-result v1

    const-string v2, "Handoff type: "

    invoke-static {v1, v2, p1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    const-string v2, "Handoff Url is empty"

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/handoff/HandoffUtil;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$1;->this$0:Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->unregisterObserver()V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$1;->this$0:Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->d(Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    if-ne v1, v3, :cond_6

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/handoff/HandoffUtil;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/handoff/HandoffUtil;->getWebStateFromData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$1;->this$0:Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;

    invoke-static {p1, v1, v0}, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->e(Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    :goto_0
    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$1;->this$0:Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->unregisterObserver()V

    return-void

    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$1;->this$0:Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->unregisterObserver()V

    return-void

    :cond_7
    :goto_2
    const-string v0, "No result from Handoff get data"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$1;->this$0:Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->unregisterObserver()V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Handoff get data: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$1;->this$0:Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->unregisterObserver()V

    return-void
.end method
