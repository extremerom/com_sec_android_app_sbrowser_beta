.class public final Lz0/r;
.super LB0/w;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lz0/t;

.field public final synthetic b:Lsb/n;


# direct methods
.method public constructor <init>(Lz0/t;Lsb/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz0/r;->a:Lz0/t;

    iput-object p2, p0, Lz0/r;->b:Lsb/n;

    return-void
.end method


# virtual methods
.method public final a(LB0/I;Ljava/util/List;J)Lz0/y;
    .locals 6

    iget-object v2, p0, Lz0/r;->a:Lz0/t;

    invoke-interface {p1}, Lz0/z;->getLayoutDirection()LH0/k;

    move-result-object p2

    iget-object v0, v2, Lz0/t;->h:Lz0/p;

    iput-object p2, v0, Lz0/p;->a:LH0/k;

    invoke-interface {p1}, LH0/b;->m()F

    move-result p2

    iput p2, v0, Lz0/p;->b:F

    invoke-interface {p1}, LH0/b;->getFontScale()F

    move-result p2

    iput p2, v0, Lz0/p;->c:F

    invoke-interface {p1}, Lz0/z;->f()Z

    move-result p1

    iget-object p0, p0, Lz0/r;->b:Lsb/n;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iget-object p1, v2, Lz0/t;->a:Landroidx/compose/ui/node/a;

    iget-object p1, p1, Landroidx/compose/ui/node/a;->b:Landroidx/compose/ui/node/a;

    if-eqz p1, :cond_0

    iput p2, v2, Lz0/t;->e:I

    new-instance p1, LH0/a;

    invoke-direct {p1, p3, p4}, LH0/a;-><init>(J)V

    iget-object p2, v2, Lz0/t;->i:Lz0/n;

    invoke-interface {p0, p2, p1}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lz0/y;

    iget v3, v2, Lz0/t;->e:I

    new-instance p0, Lz0/q;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v4

    invoke-direct/range {v0 .. v5}, Lz0/q;-><init>(Lz0/y;Lz0/t;ILz0/y;I)V

    return-object p0

    :cond_0
    iput p2, v2, Lz0/t;->d:I

    new-instance p1, LH0/a;

    invoke-direct {p1, p3, p4}, LH0/a;-><init>(J)V

    invoke-interface {p0, v0, p1}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lz0/y;

    iget v3, v2, Lz0/t;->d:I

    new-instance p0, Lz0/q;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v4

    invoke-direct/range {v0 .. v5}, Lz0/q;-><init>(Lz0/y;Lz0/t;ILz0/y;I)V

    return-object p0
.end method
