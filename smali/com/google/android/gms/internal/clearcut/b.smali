.class public abstract Lcom/google/android/gms/internal/clearcut/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ljava/lang/Object;

.field public static g:Landroid/content/Context;

.field public static volatile h:Ljava/lang/Boolean;


# instance fields
.field public final a:Lcom/google/android/gms/internal/clearcut/f;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/Object;

.field public volatile e:Lcom/google/android/gms/internal/clearcut/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/b;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/clearcut/f;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/b;->e:Lcom/google/android/gms/internal/clearcut/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/google/android/gms/internal/clearcut/f;->a:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/b;->a:Lcom/google/android/gms/internal/clearcut/f;

    iget-object v0, p1, Lcom/google/android/gms/internal/clearcut/f;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/b;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/clearcut/f;->c:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_1
    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/clearcut/b;->d:Ljava/lang/Object;

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must pass a valid SharedPreferences file name or ContentProvider URI"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lcom/google/android/gms/internal/clearcut/e;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/clearcut/e;->M()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_1
    invoke-interface {p0}, Lcom/google/android/gms/internal/clearcut/e;->M()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public static d()Z
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/clearcut/b;->h:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/clearcut/b;->g:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const-string v5, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    invoke-static {v0, v5, v3, v4, v2}, LV0/a;->a(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/clearcut/b;->h:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    :goto_1
    sget-object v0, Lcom/google/android/gms/internal/clearcut/b;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/clearcut/b;->g:Landroid/content/Context;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/b;->a:Lcom/google/android/gms/internal/clearcut/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/b;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, LLa/f;

    const-string v2, "gms:phenotype:phenotype_flag:debug_bypass_phenotype"

    invoke-direct {v0, v2}, LLa/f;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/b;->b(Lcom/google/android/gms/internal/clearcut/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/b;->a:Lcom/google/android/gms/internal/clearcut/f;

    iget-object v0, v0, Lcom/google/android/gms/internal/clearcut/f;->a:Landroid/net/Uri;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/b;->e:Lcom/google/android/gms/internal/clearcut/a;

    if-nez v0, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/clearcut/b;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/b;->a:Lcom/google/android/gms/internal/clearcut/f;

    iget-object v2, v2, Lcom/google/android/gms/internal/clearcut/f;->a:Landroid/net/Uri;

    sget-object v3, Lcom/google/android/gms/internal/clearcut/a;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/clearcut/a;

    if-nez v4, :cond_2

    new-instance v4, Lcom/google/android/gms/internal/clearcut/a;

    invoke-direct {v4, v0, v2}, Lcom/google/android/gms/internal/clearcut/a;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    invoke-virtual {v3, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/a;

    if-nez v0, :cond_1

    iget-object v0, v4, Lcom/google/android/gms/internal/clearcut/a;->c:Lcom/google/android/gms/internal/auth/h;

    iget-object v2, v4, Lcom/google/android/gms/internal/clearcut/a;->a:Landroid/content/ContentResolver;

    iget-object v3, v4, Lcom/google/android/gms/internal/clearcut/a;->b:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_1

    :cond_1
    move-object v4, v0

    :cond_2
    :goto_1
    iput-object v4, p0, Lcom/google/android/gms/internal/clearcut/b;->e:Lcom/google/android/gms/internal/clearcut/a;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/b;->e:Lcom/google/android/gms/internal/clearcut/a;

    new-instance v1, Lo3/l;

    invoke-direct {v1, p0, v0}, Lo3/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/clearcut/b;->b(Lcom/google/android/gms/internal/clearcut/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/clearcut/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/b;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Bypass reading Phenotype values for flag: "

    if-eqz v1, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    const-string v1, "PhenotypeFlag"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/b;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/b;->a:Lcom/google/android/gms/internal/clearcut/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/b;->d()Z

    move-result v1

    if-eqz v1, :cond_8

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/clearcut/b;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/clearcut/D0;->b(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_1
    sget-object v3, Lcom/google/android/gms/internal/clearcut/b;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/clearcut/D0;->b(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_4
    if-eqz v0, :cond_8

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/clearcut/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_8
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/b;->d:Ljava/lang/Object;

    return-object p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Must call PhenotypeFlag.init() first"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract c(Ljava/lang/String;)Ljava/lang/Object;
.end method
