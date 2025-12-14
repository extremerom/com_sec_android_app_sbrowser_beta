.class public final LN5/d;
.super Lb5/j;
.source "SourceFile"


# static fields
.field public static a:I = 0x1


# direct methods
.method public static e(Lcom/google/android/gms/wearable/Channel;)Lcom/google/android/gms/wearable/internal/zzbq;
    .locals 1

    const-string v0, "channel must not be null"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/o;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/google/android/gms/wearable/internal/zzbq;

    return-object p0
.end method


# virtual methods
.method public c(Lcom/google/android/gms/wearable/ChannelClient$Channel;)V
    .locals 2

    const-string v0, "channel must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/o;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzbq;

    invoke-virtual {p0}, Lb5/j;->asGoogleApiClient()Lb5/m;

    move-result-object p0

    new-instance v0, LZ5/f;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, LZ5/f;-><init>(Lcom/google/android/gms/wearable/internal/zzbq;Lb5/m;I)V

    check-cast p0, Lc5/C;

    iget-object p0, p0, Lc5/C;->b:Lb5/j;

    invoke-virtual {p0, v0}, Lb5/j;->doRead(Lc5/e;)Lc5/e;

    move-result-object p0

    new-instance p1, Lz7/d;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/o;->l(Lcom/google/android/gms/common/api/internal/BasePendingResult;Lcom/google/android/gms/common/internal/n;)LR5/p;

    return-void
.end method

.method public declared-synchronized d()I
    .locals 4

    monitor-enter p0

    :try_start_0
    sget v0, LN5/d;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lb5/j;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, La5/b;->d:La5/b;

    const v2, 0xbdfcb8

    invoke-virtual {v1, v2, v0}, La5/c;->b(ILandroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x4

    sput v0, LN5/d;->a:I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, La5/c;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "com.google.android.gms.auth.api.fallback"

    invoke-static {v0, v1}, Ln5/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    sput v0, LN5/d;->a:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    sput v0, LN5/d;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
