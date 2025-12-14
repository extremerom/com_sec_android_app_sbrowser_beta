.class public final LX3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW3/t;


# static fields
.field public static final b:LQ3/j;


# instance fields
.field public final a:Lo3/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9c4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout"

    invoke-static {v0, v1}, LQ3/j;->a(Ljava/lang/Object;Ljava/lang/String;)LQ3/j;

    move-result-object v0

    sput-object v0, LX3/a;->b:LQ3/j;

    return-void
.end method

.method public constructor <init>(Lo3/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX3/a;->a:Lo3/f;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILQ3/k;)LW3/s;
    .locals 1

    check-cast p1, LW3/j;

    iget-object p0, p0, LX3/a;->a:Lo3/f;

    if-eqz p0, :cond_1

    invoke-static {p1}, LW3/r;->a(Ljava/lang/Object;)LW3/r;

    move-result-object p2

    iget-object p0, p0, Lo3/f;->b:Ljava/lang/Object;

    check-cast p0, LW3/q;

    invoke-virtual {p0, p2}, Lcom/samsung/android/motionphoto/utils/ex/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    sget-object v0, LW3/r;->b:Ljava/util/ArrayDeque;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast p3, LW3/j;

    if-nez p3, :cond_0

    invoke-static {p1}, LW3/r;->a(Ljava/lang/Object;)LW3/r;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/motionphoto/utils/ex/h;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object p1, p3

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, LX3/a;->b:LQ3/j;

    invoke-virtual {p4, p0}, LQ3/k;->a(LQ3/j;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    new-instance p2, LW3/s;

    new-instance p3, Lcom/bumptech/glide/load/data/k;

    invoke-direct {p3, p1, p0}, Lcom/bumptech/glide/load/data/k;-><init>(LW3/j;I)V

    invoke-direct {p2, p1, p3}, LW3/s;-><init>(LQ3/g;Lcom/bumptech/glide/load/data/e;)V

    return-object p2
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, LW3/j;

    const/4 p0, 0x1

    return p0
.end method
