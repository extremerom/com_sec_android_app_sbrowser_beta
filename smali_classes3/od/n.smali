.class public final Lod/n;
.super Lkd/a;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lod/q;

.field public final synthetic g:I

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lod/q;ILjava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lod/n;->e:I

    iput-object p2, p0, Lod/n;->f:Lod/q;

    iput p3, p0, Lod/n;->g:I

    iput-object p4, p0, Lod/n;->h:Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lkd/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lod/q;ILjava/util/List;Z)V
    .locals 0

    const/4 p5, 0x0

    iput p5, p0, Lod/n;->e:I

    iput-object p2, p0, Lod/n;->f:Lod/q;

    iput p3, p0, Lod/n;->g:I

    iput-object p4, p0, Lod/n;->h:Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lkd/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 3

    iget v0, p0, Lod/n;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lod/n;->f:Lod/q;

    :try_start_0
    iget v1, p0, Lod/n;->g:I

    iget-object p0, p0, Lod/n;->h:Ljava/lang/Object;

    check-cast p0, Lod/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "statusCode"

    invoke-static {p0, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lod/q;->w:Lod/z;

    invoke-virtual {v2, v1, p0}, Lod/z;->h(ILod/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {v0, p0}, Lod/q;->b(Ljava/io/IOException;)V

    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0

    :pswitch_0
    iget-object v0, p0, Lod/n;->f:Lod/q;

    iget-object v0, v0, Lod/q;->k:Lod/B;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-object v0, p0, Lod/n;->f:Lod/q;

    iget-object v0, v0, Lod/q;->w:Lod/z;

    iget v1, p0, Lod/n;->g:I

    sget-object v2, Lod/c;->CANCEL:Lod/c;

    invoke-virtual {v0, v1, v2}, Lod/z;->h(ILod/c;)V

    iget-object v0, p0, Lod/n;->f:Lod/q;

    monitor-enter v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v1, p0, Lod/n;->f:Lod/q;

    iget-object v1, v1, Lod/q;->y:Ljava/util/LinkedHashSet;

    iget p0, p0, Lod/n;->g:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :goto_1
    const-wide/16 v0, -0x1

    return-wide v0

    :pswitch_1
    iget-object v0, p0, Lod/n;->f:Lod/q;

    iget-object v0, v0, Lod/q;->k:Lod/B;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_4
    iget-object v0, p0, Lod/n;->f:Lod/q;

    iget-object v0, v0, Lod/q;->w:Lod/z;

    iget v1, p0, Lod/n;->g:I

    sget-object v2, Lod/c;->CANCEL:Lod/c;

    invoke-virtual {v0, v1, v2}, Lod/z;->h(ILod/c;)V

    iget-object v0, p0, Lod/n;->f:Lod/q;

    monitor-enter v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    iget-object v1, p0, Lod/n;->f:Lod/q;

    iget-object v1, v1, Lod/q;->y:Ljava/util/LinkedHashSet;

    iget p0, p0, Lod/n;->g:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    :goto_2
    const-wide/16 v0, -0x1

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
