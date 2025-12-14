.class public final LB1/e;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LR1/p;Lx1/r;II)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LB1/e;->a:I

    iput-object p1, p0, LB1/e;->e:Ljava/lang/Object;

    iput-object p2, p0, LB1/e;->d:Ljava/lang/Object;

    iput p3, p0, LB1/e;->b:I

    iput p4, p0, LB1/e;->c:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method

.method public constructor <init>(LR1/x;ILx1/r;I)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LB1/e;->a:I

    iput-object p1, p0, LB1/e;->e:Ljava/lang/Object;

    iput p2, p0, LB1/e;->b:I

    iput-object p3, p0, LB1/e;->d:Ljava/lang/Object;

    iput p4, p0, LB1/e;->c:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;II)V
    .locals 0

    iput p5, p0, LB1/e;->a:I

    iput-object p1, p0, LB1/e;->d:Ljava/lang/Object;

    iput p2, p0, LB1/e;->b:I

    iput-object p3, p0, LB1/e;->e:Ljava/lang/Object;

    iput p4, p0, LB1/e;->c:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, LB1/e;->a:I

    check-cast p1, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    packed-switch v0, :pswitch_data_0

    iget p2, p0, LB1/e;->c:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, La0/d;->P(I)I

    move-result p2

    iget-object v0, p0, LB1/e;->d:Ljava/lang/Object;

    check-cast v0, Lx1/r;

    iget-object v1, p0, LB1/e;->e:Ljava/lang/Object;

    check-cast v1, LR1/x;

    iget p0, p0, LB1/e;->b:I

    invoke-static {v1, p0, v0, p1, p2}, LG5/T2;->e(LR1/x;ILx1/r;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    iget p2, p0, LB1/e;->c:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, La0/d;->P(I)I

    move-result p2

    iget-object v0, p0, LB1/e;->e:Ljava/lang/Object;

    check-cast v0, LR1/p;

    iget-object v1, p0, LB1/e;->d:Ljava/lang/Object;

    check-cast v1, Lx1/r;

    iget p0, p0, LB1/e;->b:I

    invoke-static {v0, v1, p0, p1, p2}, LG5/R2;->a(LR1/p;Lx1/r;ILa0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_1
    iget p2, p0, LB1/e;->c:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, La0/d;->P(I)I

    move-result p2

    iget-object v0, p0, LB1/e;->d:Ljava/lang/Object;

    check-cast v0, LR1/x;

    iget v1, p0, LB1/e;->b:I

    iget-object p0, p0, LB1/e;->e:Ljava/lang/Object;

    check-cast p0, Lm0/m;

    invoke-static {v0, v1, p0, p1, p2}, LG5/D2;->b(LR1/x;ILm0/m;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_2
    iget p2, p0, LB1/e;->c:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, La0/d;->P(I)I

    move-result p2

    iget-object v0, p0, LB1/e;->e:Ljava/lang/Object;

    check-cast v0, LY1/k;

    iget-object v1, p0, LB1/e;->d:Ljava/lang/Object;

    check-cast v1, Lx1/r;

    iget p0, p0, LB1/e;->b:I

    invoke-static {v1, p0, v0, p1, p2}, LG5/o;->a(Lx1/r;ILY1/k;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
