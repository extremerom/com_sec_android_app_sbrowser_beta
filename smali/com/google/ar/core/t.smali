.class public final Lcom/google/ar/core/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ar/core/s;


# instance fields
.field public final synthetic a:Lcom/google/ar/core/v;


# direct methods
.method public constructor <init>(Lcom/google/ar/core/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ar/core/t;->a:Lcom/google/ar/core/v;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ar/core/ArCoreApk$Availability;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ar/core/t;->a:Lcom/google/ar/core/v;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/google/ar/core/t;->a:Lcom/google/ar/core/v;

    iput-object p1, p0, Lcom/google/ar/core/v;->g:Lcom/google/ar/core/ArCoreApk$Availability;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/ar/core/v;->h:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
