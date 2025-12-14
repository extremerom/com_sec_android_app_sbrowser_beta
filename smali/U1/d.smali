.class public final LU1/d;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:LR1/p;

.field public final synthetic b:Lm0/m;

.field public final synthetic c:Lz0/g;

.field public final synthetic d:Z

.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public constructor <init>(LR1/p;Lm0/m;Lz0/g;ZII)V
    .locals 0

    iput-object p1, p0, LU1/d;->a:LR1/p;

    iput-object p2, p0, LU1/d;->b:Lm0/m;

    iput-object p3, p0, LU1/d;->c:Lz0/g;

    iput-boolean p4, p0, LU1/d;->d:Z

    iput p5, p0, LU1/d;->e:I

    iput p6, p0, LU1/d;->f:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v4, p1

    check-cast v4, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, LU1/d;->e:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, La0/d;->P(I)I

    move-result v5

    iget-object v0, p0, LU1/d;->a:LR1/p;

    iget-object v1, p0, LU1/d;->b:Lm0/m;

    iget v6, p0, LU1/d;->f:I

    iget-object v2, p0, LU1/d;->c:Lz0/g;

    iget-boolean v3, p0, LU1/d;->d:Z

    invoke-static/range {v0 .. v6}, LG5/B2;->a(LR1/p;Lm0/m;Lz0/g;ZLa0/m;II)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
