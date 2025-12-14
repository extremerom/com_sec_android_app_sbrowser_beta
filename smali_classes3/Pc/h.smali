.class public final LPc/h;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:LPc/i;

.field public c:I


# direct methods
.method public constructor <init>(LPc/i;Lkb/c;)V
    .locals 0

    iput-object p1, p0, LPc/h;->b:LPc/i;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, LPc/h;->a:Ljava/lang/Object;

    iget p1, p0, LPc/h;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LPc/h;->c:I

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    iget-object v0, p0, LPc/h;->b:LPc/i;

    const/4 v1, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, LPc/i;->F(LPc/q;IJLkb/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, LPc/p;

    invoke-direct {p1, p0}, LPc/p;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
