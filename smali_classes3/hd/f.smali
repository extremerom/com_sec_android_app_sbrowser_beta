.class public final Lhd/f;
.super Lwd/k;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lhd/g;

.field public final synthetic c:Lcom/google/firebase/messaging/l;


# direct methods
.method public constructor <init>(Lhd/g;Lcom/google/firebase/messaging/l;Lwd/x;)V
    .locals 0

    iput-object p1, p0, Lhd/f;->b:Lhd/g;

    iput-object p2, p0, Lhd/f;->c:Lcom/google/firebase/messaging/l;

    invoke-direct {p0, p3}, Lwd/k;-><init>(Lwd/x;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    iget-object v0, p0, Lhd/f;->b:Lhd/g;

    iget-object v1, p0, Lhd/f;->c:Lcom/google/firebase/messaging/l;

    monitor-enter v0

    :try_start_0
    iget-boolean v2, v1, Lcom/google/firebase/messaging/l;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, v1, Lcom/google/firebase/messaging/l;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    invoke-super {p0}, Lwd/k;->close()V

    iget-object p0, p0, Lhd/f;->c:Lcom/google/firebase/messaging/l;

    iget-object p0, p0, Lcom/google/firebase/messaging/l;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/scloud/lib/setting/e;

    invoke-virtual {p0}, Lcom/samsung/android/scloud/lib/setting/e;->b()V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
