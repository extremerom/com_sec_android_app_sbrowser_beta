.class public final synthetic Lk0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ltb/m;


# direct methods
.method public synthetic constructor <init>(Lsb/k;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lk0/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Ltb/m;

    iput-object p1, p0, Lk0/g;->b:Ltb/m;

    return-void
.end method

.method public synthetic constructor <init>(Lsb/n;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lk0/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Ltb/m;

    iput-object p1, p0, Lk0/g;->b:Ltb/m;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, Lk0/g;->a:I

    iget-object p0, p0, Lk0/g;->b:Ltb/m;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lk0/n;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lk0/n;->h:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Iterable;

    check-cast v1, Ljava/util/List;

    invoke-static {v1, p0}, Lfb/n;->O(Ljava/util/List;Ljava/io/Serializable;)Ljava/util/ArrayList;

    move-result-object p0

    sput-object p0, Lk0/n;->h:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-static {}, Lk0/n;->a()V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :pswitch_0
    sget-object v0, Lk0/n;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    sget-object v1, Lk0/n;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Iterable;

    check-cast v1, Ljava/util/List;

    invoke-static {v1, p0}, Lfb/n;->O(Ljava/util/List;Ljava/io/Serializable;)Ljava/util/ArrayList;

    move-result-object p0

    sput-object p0, Lk0/n;->g:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
