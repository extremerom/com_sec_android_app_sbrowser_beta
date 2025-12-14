.class public final LU1/f;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LR1/x;

.field public final synthetic c:J

.field public final synthetic d:Lf2/a;

.field public final synthetic e:F

.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LR1/x;JLf2/a;Ljava/lang/Object;FII)V
    .locals 0

    iput p8, p0, LU1/f;->a:I

    iput-object p1, p0, LU1/f;->b:LR1/x;

    iput-wide p2, p0, LU1/f;->c:J

    iput-object p4, p0, LU1/f;->d:Lf2/a;

    iput-object p5, p0, LU1/f;->g:Ljava/lang/Object;

    iput p6, p0, LU1/f;->e:F

    iput p7, p0, LU1/f;->f:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, LU1/f;->a:I

    packed-switch v0, :pswitch_data_0

    move-object v7, p1

    check-cast v7, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, LU1/f;->f:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, La0/d;->P(I)I

    move-result v8

    iget-wide v2, p0, LU1/f;->c:J

    iget-object v4, p0, LU1/f;->d:Lf2/a;

    iget-object v1, p0, LU1/f;->b:LR1/x;

    iget-object p1, p0, LU1/f;->g:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lx1/r;

    iget v6, p0, LU1/f;->e:F

    invoke-static/range {v1 .. v8}, LG5/S2;->e(LR1/x;JLf2/a;Lx1/r;FLa0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    move-object v6, p1

    check-cast v6, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, LU1/f;->f:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, La0/d;->P(I)I

    move-result v7

    iget-wide v1, p0, LU1/f;->c:J

    iget-object v3, p0, LU1/f;->d:Lf2/a;

    iget-object v0, p0, LU1/f;->b:LR1/x;

    iget-object p1, p0, LU1/f;->g:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Lm0/m;

    iget v5, p0, LU1/f;->e:F

    invoke-static/range {v0 .. v7}, LG5/C2;->c(LR1/x;JLf2/a;Lm0/m;FLa0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
