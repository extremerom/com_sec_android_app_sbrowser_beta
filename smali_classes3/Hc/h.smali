.class public final LHc/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lub/a;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Li0/d;)V
    .locals 4

    const/4 v0, 0x1

    iput v0, p0, LHc/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [Lf0/m;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Lf0/o;

    invoke-direct {v3, p0}, Lf0/o;-><init>(LHc/h;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lf0/e;

    invoke-direct {v0, p1, v1}, Lf0/e;-><init>(Li0/d;[Lf0/m;)V

    iput-object v0, p0, LHc/h;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LHc/h;->a:I

    const-string v0, "array"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ltb/z;->g([Ljava/lang/Object;)Lbd/e;

    move-result-object p1

    iput-object p1, p0, LHc/h;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, LHc/h;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LHc/h;->b:Ljava/lang/Object;

    check-cast p0, Lf0/e;

    iget-boolean p0, p0, Lf0/d;->c:Z

    return p0

    :pswitch_0
    iget-object p0, p0, LHc/h;->b:Ljava/lang/Object;

    check-cast p0, Lbd/e;

    invoke-virtual {p0}, Lbd/e;->hasNext()Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    iget v0, p0, LHc/h;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LHc/h;->b:Ljava/lang/Object;

    check-cast p0, Lf0/e;

    invoke-virtual {p0}, Lf0/e;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    return-object p0

    :pswitch_0
    iget-object p0, p0, LHc/h;->b:Ljava/lang/Object;

    check-cast p0, Lbd/e;

    invoke-virtual {p0}, Lbd/e;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 1

    iget v0, p0, LHc/h;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LHc/h;->b:Ljava/lang/Object;

    check-cast p0, Lf0/e;

    invoke-virtual {p0}, Lf0/e;->remove()V

    return-void

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
