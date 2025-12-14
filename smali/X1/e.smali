.class public final LX1/e;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lf2/a;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:LR1/x;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LR1/x;ILf2/a;Ljava/lang/Object;IIII)V
    .locals 0

    iput p8, p0, LX1/e;->a:I

    iput-object p1, p0, LX1/e;->g:LR1/x;

    iput p2, p0, LX1/e;->b:I

    iput-object p3, p0, LX1/e;->c:Lf2/a;

    iput-object p4, p0, LX1/e;->h:Ljava/lang/Object;

    iput p5, p0, LX1/e;->d:I

    iput p6, p0, LX1/e;->e:I

    iput p7, p0, LX1/e;->f:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, LX1/e;->a:I

    packed-switch v0, :pswitch_data_0

    move-object v6, p1

    check-cast v6, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, LX1/e;->e:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, La0/d;->P(I)I

    move-result v7

    iget-object v3, p0, LX1/e;->c:Lf2/a;

    iget v8, p0, LX1/e;->f:I

    iget-object v1, p0, LX1/e;->g:LR1/x;

    iget v2, p0, LX1/e;->b:I

    iget-object p1, p0, LX1/e;->h:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Lx1/r;

    iget v5, p0, LX1/e;->d:I

    invoke-static/range {v1 .. v8}, LG5/w3;->b(LR1/x;ILf2/a;Lx1/r;ILa0/m;II)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    move-object v5, p1

    check-cast v5, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, LX1/e;->e:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, La0/d;->P(I)I

    move-result v6

    iget-object v2, p0, LX1/e;->c:Lf2/a;

    iget v7, p0, LX1/e;->f:I

    iget-object p1, p0, LX1/e;->g:LR1/x;

    move-object v0, p1

    check-cast v0, LR1/y;

    iget v1, p0, LX1/e;->b:I

    iget-object p1, p0, LX1/e;->h:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lm0/m;

    iget v4, p0, LX1/e;->d:I

    invoke-static/range {v0 .. v7}, LG5/q3;->c(LR1/y;ILf2/a;Lm0/m;ILa0/m;II)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
