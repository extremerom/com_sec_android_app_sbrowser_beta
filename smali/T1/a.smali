.class public final LT1/a;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:LR1/x;

.field public final synthetic b:F

.field public final synthetic c:I


# direct methods
.method public constructor <init>(LR1/x;FI)V
    .locals 0

    iput-object p1, p0, LT1/a;->a:LR1/x;

    iput p2, p0, LT1/a;->b:F

    iput p3, p0, LT1/a;->c:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p2, p0, LT1/a;->c:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, La0/d;->P(I)I

    move-result p2

    iget-object v0, p0, LT1/a;->a:LR1/x;

    iget p0, p0, LT1/a;->b:F

    invoke-static {v0, p0, p1, p2}, LG5/t2;->b(LR1/x;FLa0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
