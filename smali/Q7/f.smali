.class public final LQ7/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/Object;

.field public static c:LQ7/f;


# instance fields
.field public a:Lcom/google/firebase/components/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LQ7/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public static b()LQ7/f;
    .locals 3

    sget-object v0, LQ7/f;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LQ7/f;->c:LQ7/f;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "MlKitContext has not been initialized"

    invoke-static {v2, v1}, Lcom/google/android/gms/common/internal/o;->h(Ljava/lang/String;Z)V

    sget-object v1, LQ7/f;->c:LQ7/f;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    sget-object v0, LQ7/f;->c:LQ7/f;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "MlKitContext has been deleted"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/o;->h(Ljava/lang/String;Z)V

    iget-object v0, p0, LQ7/f;->a:Lcom/google/firebase/components/h;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    iget-object p0, p0, LQ7/f;->a:Lcom/google/firebase/components/h;

    invoke-interface {p0, p1}, Lcom/google/firebase/components/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
