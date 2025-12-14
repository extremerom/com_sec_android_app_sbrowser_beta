.class public final Ljd/c;
.super Lwd/l;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final synthetic b:Ljd/g;

.field public final synthetic c:Ljd/d;


# direct methods
.method public constructor <init>(Lwd/c;Ljd/g;Ljd/d;)V
    .locals 0

    iput-object p2, p0, Ljd/c;->b:Ljd/g;

    iput-object p3, p0, Ljd/c;->c:Ljd/d;

    invoke-direct {p0, p1}, Lwd/l;-><init>(Lwd/z;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    invoke-super {p0}, Lwd/l;->close()V

    iget-boolean v0, p0, Ljd/c;->a:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljd/c;->a:Z

    iget-object v0, p0, Ljd/c;->b:Ljd/g;

    iget-object p0, p0, Ljd/c;->c:Ljd/d;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Ljd/d;->h:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljd/d;->h:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Ljd/d;->f:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Ljd/g;->t(Ljd/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    :goto_2
    return-void
.end method
