.class public final Lcom/google/ar/core/c;
.super Landroid/content/pm/PackageInstaller$SessionCallback;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final synthetic b:LS3/F;

.field public final synthetic c:Lcom/google/ar/core/G;


# direct methods
.method public constructor <init>(Lcom/google/ar/core/G;LS3/F;)V
    .locals 0

    iput-object p2, p0, Lcom/google/ar/core/c;->b:LS3/F;

    iput-object p1, p0, Lcom/google/ar/core/c;->c:Lcom/google/ar/core/G;

    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$SessionCallback;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/ar/core/c;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final onActiveChanged(IZ)V
    .locals 0

    return-void
.end method

.method public final onBadgingChanged(I)V
    .locals 0

    return-void
.end method

.method public final onCreated(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/ar/core/c;->c:Lcom/google/ar/core/G;

    iget-object v0, v0, Lcom/google/ar/core/G;->g:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    iget-object p0, p0, Lcom/google/ar/core/c;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onFinished(IZ)V
    .locals 0

    iget-object p2, p0, Lcom/google/ar/core/c;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageInstaller$SessionInfo;

    if-eqz p1, :cond_0

    const-string p2, "com.google.ar.core"

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ARCore-InstallService"

    const-string p2, "Detected ARCore install completion"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/ar/core/c;->b:LS3/F;

    sget-object p1, Lcom/google/ar/core/F;->c:Lcom/google/ar/core/F;

    invoke-virtual {p0, p1}, LS3/F;->b(Lcom/google/ar/core/F;)V

    :cond_0
    return-void
.end method

.method public final onProgressChanged(IF)V
    .locals 0

    return-void
.end method
