.class public final LV1/a;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:LR1/x;

.field public final synthetic b:F

.field public final synthetic c:I

.field public final synthetic d:Lf2/a;

.field public final synthetic e:Lx1/r;

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public constructor <init>(LR1/x;FILf2/a;Lx1/r;II)V
    .locals 0

    iput-object p1, p0, LV1/a;->a:LR1/x;

    iput p2, p0, LV1/a;->b:F

    iput p3, p0, LV1/a;->c:I

    iput-object p4, p0, LV1/a;->d:Lf2/a;

    iput-object p5, p0, LV1/a;->e:Lx1/r;

    iput p6, p0, LV1/a;->f:I

    iput p7, p0, LV1/a;->g:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v5, p1

    check-cast v5, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, LV1/a;->f:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, La0/d;->P(I)I

    move-result v6

    iget-object v0, p0, LV1/a;->a:LR1/x;

    iget v2, p0, LV1/a;->c:I

    iget v7, p0, LV1/a;->g:I

    iget v1, p0, LV1/a;->b:F

    iget-object v3, p0, LV1/a;->d:Lf2/a;

    iget-object v4, p0, LV1/a;->e:Lx1/r;

    invoke-static/range {v0 .. v7}, LG5/S2;->d(LR1/x;FILf2/a;Lx1/r;La0/m;II)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
