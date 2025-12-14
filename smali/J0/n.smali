.class public final LJ0/n;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ldb/b;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Li0/a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LJ0/n;->a:I

    iput-object p1, p0, LJ0/n;->c:Ldb/b;

    iput-object p2, p0, LJ0/n;->d:Ljava/lang/Object;

    iput-object p3, p0, LJ0/n;->e:Ljava/lang/Object;

    iput-object p4, p0, LJ0/n;->f:Ljava/lang/Object;

    iput-object p5, p0, LJ0/n;->g:Ljava/lang/Object;

    iput p6, p0, LJ0/n;->b:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lsb/k;Lm0/m;Lsb/k;Lsb/k;Lsb/k;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LJ0/n;->a:I

    iput-object p1, p0, LJ0/n;->c:Ldb/b;

    iput-object p2, p0, LJ0/n;->g:Ljava/lang/Object;

    iput-object p3, p0, LJ0/n;->d:Ljava/lang/Object;

    iput-object p4, p0, LJ0/n;->e:Ljava/lang/Object;

    iput-object p5, p0, LJ0/n;->f:Ljava/lang/Object;

    iput p6, p0, LJ0/n;->b:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, LJ0/n;->a:I

    packed-switch v0, :pswitch_data_0

    move-object v6, p1

    check-cast v6, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, LJ0/n;->b:I

    invoke-static {p1}, La0/d;->P(I)I

    move-result p1

    or-int/lit8 v7, p1, 0x1

    iget-object v4, p0, LJ0/n;->f:Ljava/lang/Object;

    iget-object v5, p0, LJ0/n;->g:Ljava/lang/Object;

    iget-object p1, p0, LJ0/n;->c:Ldb/b;

    move-object v1, p1

    check-cast v1, Li0/a;

    iget-object v2, p0, LJ0/n;->d:Ljava/lang/Object;

    iget-object v3, p0, LJ0/n;->e:Ljava/lang/Object;

    invoke-virtual/range {v1 .. v7}, Li0/a;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;La0/m;I)Ljava/lang/Object;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    move-object v5, p1

    check-cast v5, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, LJ0/n;->b:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, La0/d;->P(I)I

    move-result v6

    iget-object p1, p0, LJ0/n;->g:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lm0/m;

    iget-object p1, p0, LJ0/n;->d:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lsb/k;

    iget-object p1, p0, LJ0/n;->c:Ldb/b;

    move-object v0, p1

    check-cast v0, Lsb/k;

    iget-object p1, p0, LJ0/n;->e:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lsb/k;

    iget-object p0, p0, LJ0/n;->f:Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, Lsb/k;

    invoke-static/range {v0 .. v6}, LJ0/k;->b(Lsb/k;Lm0/m;Lsb/k;Lsb/k;Lsb/k;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
