.class public final Lc5/N;
.super Lc5/E;
.source "SourceFile"


# instance fields
.field public final b:LR5/i;

.field public final synthetic c:I

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILR5/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lc5/P;-><init>(I)V

    iput-object p2, p0, Lc5/N;->b:LR5/i;

    return-void
.end method

.method public constructor <init>(Lc5/I;LR5/i;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lc5/N;->c:I

    const/4 v0, 0x3

    invoke-direct {p0, v0, p2}, Lc5/N;-><init>(ILR5/i;)V

    iput-object p1, p0, Lc5/N;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lc5/m;LR5/i;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lc5/N;->c:I

    const/4 v0, 0x4

    invoke-direct {p0, v0, p2}, Lc5/N;-><init>(ILR5/i;)V

    iput-object p1, p0, Lc5/N;->d:Ljava/lang/Object;

    return-void
.end method

.method private final bridge synthetic i(Lcom/samsung/android/motionphoto/utils/ex/e;Z)V
    .locals 0

    return-void
.end method

.method private final bridge synthetic j(Lcom/samsung/android/motionphoto/utils/ex/e;Z)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    new-instance v0, Lb5/h;

    invoke-direct {v0, p1}, Lb5/h;-><init>(Lcom/google/android/gms/common/api/Status;)V

    iget-object p0, p0, Lc5/N;->b:LR5/i;

    invoke-virtual {p0, v0}, LR5/i;->c(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final b(Ljava/lang/RuntimeException;)V
    .locals 0

    iget-object p0, p0, Lc5/N;->b:LR5/i;

    invoke-virtual {p0, p1}, LR5/i;->c(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final c(Lc5/y;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lc5/N;->h(Lc5/y;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lc5/N;->b:LR5/i;

    invoke-virtual {p0, p1}, LR5/i;->c(Ljava/lang/Exception;)Z

    return-void

    :catch_1
    move-exception p1

    invoke-static {p1}, Lc5/P;->e(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc5/N;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :catch_2
    move-exception p1

    invoke-static {p1}, Lc5/P;->e(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc5/N;->a(Lcom/google/android/gms/common/api/Status;)V

    throw p1
.end method

.method public final bridge synthetic d(Lcom/samsung/android/motionphoto/utils/ex/e;Z)V
    .locals 0

    iget p0, p0, Lc5/N;->c:I

    return-void
.end method

.method public final f(Lc5/y;)Z
    .locals 1

    iget v0, p0, Lc5/N;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p1, Lc5/y;->s:Ljava/util/HashMap;

    iget-object p0, p0, Lc5/N;->d:Ljava/lang/Object;

    check-cast p0, Lc5/m;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc5/I;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    iget-object p0, p0, Lc5/N;->d:Ljava/lang/Object;

    check-cast p0, Lc5/I;

    iget-object p0, p0, Lc5/I;->a:LG5/g4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Lc5/y;)[Lcom/google/android/gms/common/Feature;
    .locals 1

    iget v0, p0, Lc5/N;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p1, Lc5/y;->s:Ljava/util/HashMap;

    iget-object p0, p0, Lc5/N;->d:Ljava/lang/Object;

    check-cast p0, Lc5/m;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc5/I;

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lc5/N;->d:Ljava/lang/Object;

    check-cast p0, Lc5/I;

    iget-object p0, p0, Lc5/I;->a:LG5/g4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Lc5/y;)V
    .locals 3

    iget v0, p0, Lc5/N;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p1, Lc5/y;->s:Ljava/util/HashMap;

    iget-object v1, p0, Lc5/N;->d:Ljava/lang/Object;

    check-cast v1, Lc5/m;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc5/I;

    iget-object p0, p0, Lc5/N;->b:LR5/i;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lc5/I;->b:Lo3/c;

    iget-object v1, v1, Lo3/c;->b:Ljava/lang/Object;

    check-cast v1, LZ4/i;

    iget-object v1, v1, LZ4/i;->c:Ljava/lang/Object;

    check-cast v1, Lcom/bumptech/glide/manager/o;

    iget-object p1, p1, Lc5/y;->b:Lb5/e;

    invoke-virtual {v1, p1, p0}, Lcom/bumptech/glide/manager/o;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, v0, Lc5/I;->a:LG5/g4;

    iget-object p0, p0, LG5/g4;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/emoji2/text/d;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/emoji2/text/d;->b:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/emoji2/text/d;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, LR5/i;->d(Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lc5/N;->d:Ljava/lang/Object;

    check-cast v0, Lc5/I;

    iget-object v0, v0, Lc5/I;->a:LG5/g4;

    iget-object v1, p1, Lc5/y;->b:Lb5/e;

    iget-object v2, p0, Lc5/N;->b:LR5/i;

    iget-object v0, v0, LG5/g4;->d:Ljava/lang/Object;

    check-cast v0, LZ4/i;

    iget-object v0, v0, LZ4/i;->b:Ljava/lang/Object;

    check-cast v0, Lo3/l;

    invoke-virtual {v0, v1, v2}, Lo3/l;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lc5/N;->d:Ljava/lang/Object;

    check-cast v0, Lc5/I;

    iget-object v0, v0, Lc5/I;->a:LG5/g4;

    iget-object v0, v0, LG5/g4;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/d;

    iget-object v0, v0, Landroidx/emoji2/text/d;->c:Ljava/lang/Object;

    check-cast v0, Lc5/m;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lc5/y;->s:Ljava/util/HashMap;

    iget-object p0, p0, Lc5/N;->d:Ljava/lang/Object;

    check-cast p0, Lc5/I;

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
