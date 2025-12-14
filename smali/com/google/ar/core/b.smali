.class public final Lcom/google/ar/core/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/google/ar/core/s;

.field public final synthetic c:Lcom/google/ar/core/G;


# direct methods
.method public constructor <init>(Lcom/google/ar/core/G;Landroid/content/Context;Lcom/google/ar/core/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/ar/core/b;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/ar/core/b;->b:Lcom/google/ar/core/s;

    iput-object p1, p0, Lcom/google/ar/core/b;->c:Lcom/google/ar/core/G;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/google/ar/core/b;->c:Lcom/google/ar/core/G;

    iget-object v0, v0, Lcom/google/ar/core/G;->c:Lcom/google/ar/core/dependencies/h;

    iget-object v1, p0, Lcom/google/ar/core/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "package.name"

    const-string v4, "com.google.ar.core"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/google/ar/core/I;

    invoke-direct {v3, p0}, Lcom/google/ar/core/I;-><init>(Lcom/google/ar/core/b;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/google/ar/core/dependencies/h;->e(Ljava/lang/String;Landroid/os/Bundle;Lcom/google/ar/core/dependencies/j;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "ARCore-InstallService"

    const-string v2, "requestInfo threw"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lcom/google/ar/core/b;->b:Lcom/google/ar/core/s;

    sget-object v0, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_ERROR:Lcom/google/ar/core/ArCoreApk$Availability;

    invoke-interface {p0, v0}, Lcom/google/ar/core/s;->a(Lcom/google/ar/core/ArCoreApk$Availability;)V

    return-void
.end method
