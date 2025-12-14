.class public abstract Lm/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LJ2/k0;

.field public static b:I

.field public static c:Lb1/e;

.field public static d:Lb1/e;

.field public static e:Ljava/lang/Boolean;

.field public static f:Z

.field public static final g:LN/g;

.field public static final h:Ljava/lang/Object;

.field public static final i:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJ2/k0;

    new-instance v1, LR5/n;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, LR5/n;-><init>(I)V

    invoke-direct {v0, v1}, LJ2/k0;-><init>(LR5/n;)V

    sput-object v0, Lm/p;->a:LJ2/k0;

    const/16 v0, -0x64

    sput v0, Lm/p;->b:I

    const/4 v0, 0x0

    sput-object v0, Lm/p;->c:Lb1/e;

    sput-object v0, Lm/p;->d:Lb1/e;

    sput-object v0, Lm/p;->e:Ljava/lang/Boolean;

    const/4 v0, 0x0

    sput-boolean v0, Lm/p;->f:Z

    new-instance v1, LN/g;

    invoke-direct {v1, v0}, LN/g;-><init>(I)V

    sput-object v1, Lm/p;->g:LN/g;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lm/p;->h:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lm/p;->i:Ljava/lang/Object;

    return-void
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 3

    sget-object v0, Lm/p;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    sget v0, Lm/B;->a:I

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lm/B;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 p0, 0x280

    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string v0, "autoStoreLocales"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lm/p;->e:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AppCompatDelegate"

    const-string v0, "Checking for metadata for AppLocalesMetadataHolderService : Service not found"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object p0, Lm/p;->e:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    sget-object p0, Lm/p;->e:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static i(Lm/w;)V
    .locals 3

    sget-object v0, Lm/p;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lm/p;->g:LN/g;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LN/b;

    invoke-direct {v2, v1}, LN/b;-><init>(LN/g;)V

    :cond_0
    :goto_0
    invoke-virtual {v2}, LN/b;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, LN/b;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm/p;

    if-eq v1, p0, :cond_1

    if-nez v1, :cond_0

    :cond_1
    invoke-virtual {v2}, LN/b;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static n(I)V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    if-eq p0, v1, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "AppCompatDelegate"

    const-string v0, "setDefaultNightMode() called with an unknown mode"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    sget v0, Lm/p;->b:I

    if-eq v0, p0, :cond_3

    sput p0, Lm/p;->b:I

    sget-object p0, Lm/p;->h:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lm/p;->g:LN/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LN/b;

    invoke-direct {v2, v0}, LN/b;-><init>(LN/g;)V

    :cond_1
    :goto_0
    invoke-virtual {v2}, LN/b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, LN/b;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/p;

    if-eqz v0, :cond_1

    check-cast v0, Lm/w;

    invoke-virtual {v0, v1, v1}, Lm/w;->q(ZZ)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract d()V
.end method

.method public abstract f()V
.end method

.method public abstract g()V
.end method

.method public abstract h()V
.end method

.method public abstract j(I)Z
.end method

.method public abstract k(I)V
.end method

.method public abstract l(Landroid/view/View;)V
.end method

.method public abstract m(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract o(Ljava/lang/CharSequence;)V
.end method

.method public abstract p(Lr/a;)Lr/b;
.end method
