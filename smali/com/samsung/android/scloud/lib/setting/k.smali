.class public final Lcom/samsung/android/scloud/lib/setting/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/samsung/android/scloud/lib/setting/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/scloud/lib/setting/p;

    sget-object v1, Lcom/samsung/android/scloud/lib/setting/g;->a:Landroid/net/Uri;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lcom/samsung/android/scloud/lib/setting/p;->a:Ljava/lang/Object;

    iput-object v1, v0, Lcom/samsung/android/scloud/lib/setting/p;->b:Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/scloud/lib/setting/e;

    invoke-direct {v2, p1, v1}, Lcom/samsung/android/scloud/lib/setting/e;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iput-object v2, v0, Lcom/samsung/android/scloud/lib/setting/p;->c:Ljava/lang/Object;

    const-string p1, "[scsettingv2][2.0.36.0]"

    sput-object p1, Lcom/samsung/android/scloud/lib/setting/p;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/scloud/lib/setting/k;->a:Lcom/samsung/android/scloud/lib/setting/p;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 4

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/k;->a:Lcom/samsung/android/scloud/lib/setting/p;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/samsung/android/scloud/lib/setting/p;->e:Ljava/lang/String;

    const-string v2, "getIsContentSyncable"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "authority"

    const-string v3, "com.sec.android.app.sbrowser.beta"

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "content_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "application_type"

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "library_version"

    const-wide/16 v2, 0x4eca

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/samsung/android/scloud/lib/setting/p;->a:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/p;->b:Ljava/lang/Object;

    check-cast p0, Landroid/net/Uri;

    const-string v2, "get_content_sync"

    const/4 v3, 0x0

    invoke-virtual {p1, p0, v2, v3, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "auto_sync"

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/scloud/lib/setting/p;->e:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public final b()V
    .locals 4

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/k;->a:Lcom/samsung/android/scloud/lib/setting/p;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v0, Lcom/samsung/android/scloud/lib/setting/p;

    iget-object v1, p0, Lcom/samsung/android/scloud/lib/setting/p;->a:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/p;->b:Ljava/lang/Object;

    check-cast p0, Landroid/net/Uri;

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/scloud/lib/setting/p;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    new-instance p0, Lca/c;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lca/c;-><init>(I)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, LGa/d;

    const/16 v3, 0xd

    invoke-direct {v2, v3, v0, p0}, LGa/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/scloud/lib/setting/p;->e:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final c(Ljava/util/ArrayList;)V
    .locals 4

    const-string v0, ", forceSync: false"

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/k;->a:Lcom/samsung/android/scloud/lib/setting/p;

    if-eqz p0, :cond_0

    const-string v1, "requestSync: "

    :try_start_0
    sget-object v2, Lcom/samsung/android/scloud/lib/setting/p;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "authority"

    const-string v2, "com.sec.android.app.sbrowser.beta"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    new-instance v2, LH9/d;

    const/16 v3, 0xd

    invoke-direct {v2, v3, v1}, LH9/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    const-string p1, "content_ids"

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "force_sync"

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "library_version"

    const-wide/16 v1, 0x4eca

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/samsung/android/scloud/lib/setting/p;->a:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/p;->b:Ljava/lang/Object;

    check-cast p0, Landroid/net/Uri;

    const-string v1, "start_sync_by_content_id"

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v1, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final d(Z)V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/k;->a:Lcom/samsung/android/scloud/lib/setting/p;

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lcom/samsung/android/scloud/lib/setting/p;->e:Ljava/lang/String;

    const-string v1, "setAutoSync"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "authority"

    const-string v2, "com.sec.android.app.sbrowser.beta"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "auto_sync"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "library_version"

    const-wide/16 v1, 0x4eca

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/samsung/android/scloud/lib/setting/p;->a:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/p;->b:Ljava/lang/Object;

    check-cast p0, Landroid/net/Uri;

    const-string v1, "set_auto_sync"

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v1, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/scloud/lib/setting/p;->e:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final e(Landroid/app/Activity;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/k;->a:Lcom/samsung/android/scloud/lib/setting/p;

    if-eqz p0, :cond_0

    :try_start_0
    sget-object p0, Lcom/samsung/android/scloud/lib/setting/p;->e:Ljava/lang/String;

    const-string v0, "showSetting - flag:536870912"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/samsung/android/scloud/lib/setting/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x20000000

    iput v0, p0, Lcom/samsung/android/scloud/lib/setting/r;->a:I

    const-string v0, "com.sec.android.app.sbrowser.beta"

    invoke-virtual {p0, v0}, Lcom/samsung/android/scloud/lib/setting/r;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/scloud/lib/setting/p;->e:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
