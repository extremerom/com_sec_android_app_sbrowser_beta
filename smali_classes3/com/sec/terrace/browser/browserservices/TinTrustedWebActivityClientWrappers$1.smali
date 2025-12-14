.class Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$ConnectionPool;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers;->wrap(LI/j;)Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$ConnectionPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$pool:LI/j;


# direct methods
.method public constructor <init>(LI/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$1;->val$pool:LI/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$ExecutionCallback;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Lcom/google/common/util/concurrent/y;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$1;->lambda$connectAndExecute$0(Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$ExecutionCallback;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Lcom/google/common/util/concurrent/y;)V

    return-void
.end method

.method private static synthetic lambda$connectAndExecute$0(Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$ExecutionCallback;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Lcom/google/common/util/concurrent/y;)V
    .locals 1

    const-string v0, "TWAClient"

    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LI/h;

    invoke-static {p2}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers;->wrap(LI/h;)Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$Connection;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$ExecutionCallback;->onConnected(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$Connection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    const-string p2, "Failed to connect to TWA to execute command"

    invoke-static {v0, p2, p1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p0}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$ExecutionCallback;->onNoTwaFound()V

    goto :goto_2

    :goto_1
    const-string p1, "Failed to execute TWA command."

    invoke-static {v0, p1, p0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public connectAndExecute(Landroid/net/Uri;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Ljava/util/Set;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$ExecutionCallback;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/sec/terrace/browser/customtabs/TerraceOrigin;",
            "Ljava/util/Set<",
            "LI/b;",
            ">;",
            "Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$ExecutionCallback;",
            ")V"
        }
    .end annotation

    move-object v1, p1

    move-object v0, p0

    iget-object v2, v0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$1;->val$pool:LI/j;

    sget-object v3, Lorg/chromium/base/task/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, v2, LI/j;->b:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LI/a;

    if-eqz v0, :cond_0

    new-instance v1, LAa/a;

    const/4 v2, 0x6

    invoke-direct {v1, v2, v0}, LAa/a;-><init>(ILjava/lang/Object;)V

    invoke-static {v1}, LG5/K3;->b(LK0/j;)LK0/l;

    move-result-object v0

    goto/16 :goto_3

    :cond_0
    const/4 v5, 0x0

    iget-object v6, v2, LI/j;->a:Landroid/content/Context;

    const/4 v7, 0x0

    if-eqz p3, :cond_7

    invoke-interface/range {p3 .. p3}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/high16 v9, 0x10000

    invoke-virtual {v8, v0, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v9, v7

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface/range {p3 .. p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LI/b;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    iget-object v0, v0, LI/b;->a:LI/c;

    :try_start_0
    new-instance v13, Lu5/d;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v13, v10, v12, v0}, Lu5/d;->q(Ljava/lang/String;Landroid/content/pm/PackageManager;LI/c;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v12, "PackageIdentity"

    const-string v13, "Could not check if package matches token."

    invoke-static {v12, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v5

    :goto_1
    if-eqz v0, :cond_3

    move-object v9, v10

    goto :goto_0

    :cond_4
    const-string v0, "TWAConnectionPool"

    if-nez v9, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "No TWA candidates for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " have been registered."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "android.support.customtabs.trusted.TRUSTED_WEB_ACTIVITY_SERVICE"

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/high16 v11, 0x20000

    invoke-virtual {v10, v8, v11}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    if-nez v8, :cond_6

    const-string v8, "Could not find TWAService for "

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "Found "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " to handle request for "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v9, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_7
    :goto_2
    if-nez v7, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No service exists for scope"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    new-instance v1, LK0/m;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v0}, LK0/h;->n(Ljava/lang/Throwable;)Z

    move-object v0, v1

    goto :goto_3

    :cond_8
    new-instance v0, LI/a;

    new-instance v8, LGa/d;

    const/4 v9, 0x2

    invoke-direct {v8, v9, v2, p1}, LGa/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v8}, LI/a;-><init>(LGa/d;)V

    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, LI/i;

    invoke-direct {v1, v6, v7, v0}, LI/i;-><init>(Landroid/content/Context;Landroid/content/Intent;LI/a;)V

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v1, v3, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v1, LAa/a;

    const/4 v2, 0x6

    invoke-direct {v1, v2, v0}, LAa/a;-><init>(ILjava/lang/Object;)V

    invoke-static {v1}, LG5/K3;->b(LK0/j;)LK0/l;

    move-result-object v0

    :goto_3
    new-instance v1, Lcom/sec/terrace/browser/browserservices/b;

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v1, v3, v2, v0}, Lcom/sec/terrace/browser/browserservices/b;-><init>(Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$ExecutionCallback;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Lcom/google/common/util/concurrent/y;)V

    invoke-static {}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers;->b()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/y;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
