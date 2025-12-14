.class public final Lz0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz0/y;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Lz0/p;

.field public final synthetic e:Lz0/t;

.field public final synthetic f:Lsb/k;


# direct methods
.method public constructor <init>(IILjava/util/Map;Lz0/p;Lz0/t;Lsb/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lz0/o;->a:I

    iput p2, p0, Lz0/o;->b:I

    iput-object p3, p0, Lz0/o;->c:Ljava/util/Map;

    iput-object p4, p0, Lz0/o;->d:Lz0/p;

    iput-object p5, p0, Lz0/o;->e:Lz0/t;

    iput-object p6, p0, Lz0/o;->f:Lsb/k;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lz0/o;->c:Ljava/util/Map;

    return-object p0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lz0/o;->d:Lz0/p;

    invoke-virtual {v0}, Lz0/p;->f()Z

    move-result v0

    iget-object v1, p0, Lz0/o;->f:Lsb/k;

    iget-object p0, p0, Lz0/o;->e:Lz0/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz0/t;->a:Landroidx/compose/ui/node/a;

    iget-object v0, v0, Landroidx/compose/ui/node/a;->r:LB0/M;

    iget-object v0, v0, LB0/M;->c:Ljava/lang/Object;

    check-cast v0, LB0/m;

    iget-object v0, v0, LB0/m;->w:LB0/l;

    if-eqz v0, :cond_0

    iget-object p0, v0, LB0/I;->h:Lz0/u;

    invoke-interface {v1, p0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object p0, p0, Lz0/t;->a:Landroidx/compose/ui/node/a;

    iget-object p0, p0, Landroidx/compose/ui/node/a;->r:LB0/M;

    iget-object p0, p0, LB0/M;->c:Ljava/lang/Object;

    check-cast p0, LB0/m;

    iget-object p0, p0, LB0/I;->h:Lz0/u;

    invoke-interface {v1, p0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final getHeight()I
    .locals 0

    iget p0, p0, Lz0/o;->b:I

    return p0
.end method

.method public final getWidth()I
    .locals 0

    iget p0, p0, Lz0/o;->a:I

    return p0
.end method
