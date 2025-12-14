.class public final LPc/g;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:LPc/i;

.field public c:I


# direct methods
.method public constructor <init>(LPc/i;Lkb/c;)V
    .locals 0

    iput-object p1, p0, LPc/g;->b:LPc/i;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LPc/g;->a:Ljava/lang/Object;

    iget p1, p0, LPc/g;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LPc/g;->c:I

    iget-object p1, p0, LPc/g;->b:LPc/i;

    invoke-static {p1, p0}, LPc/i;->E(LPc/i;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, LPc/p;

    invoke-direct {p1, p0}, LPc/p;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
