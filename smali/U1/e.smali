.class public final LU1/e;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:LR1/x;

.field public final synthetic b:F

.field public final synthetic c:Lf2/a;

.field public final synthetic d:Lm0/m;

.field public final synthetic e:I


# direct methods
.method public constructor <init>(LR1/x;FLf2/a;Lm0/m;I)V
    .locals 0

    iput-object p1, p0, LU1/e;->a:LR1/x;

    iput p2, p0, LU1/e;->b:F

    iput-object p3, p0, LU1/e;->c:Lf2/a;

    iput-object p4, p0, LU1/e;->d:Lm0/m;

    iput p5, p0, LU1/e;->e:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v4, p1

    check-cast v4, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, LU1/e;->e:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, La0/d;->P(I)I

    move-result v5

    iget-object v0, p0, LU1/e;->a:LR1/x;

    iget v1, p0, LU1/e;->b:F

    iget-object v2, p0, LU1/e;->c:Lf2/a;

    iget-object v3, p0, LU1/e;->d:Lm0/m;

    invoke-static/range {v0 .. v5}, LG5/C2;->b(LR1/x;FLf2/a;Lm0/m;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
