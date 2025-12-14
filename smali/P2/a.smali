.class public final LP2/a;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lsb/k;


# direct methods
.method public constructor <init>(Lib/c;Lsb/k;)V
    .locals 0

    iput-object p2, p0, LP2/a;->b:Lsb/k;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance v0, LP2/a;

    iget-object p0, p0, LP2/a;->b:Lsb/k;

    invoke-direct {v0, p2, p0}, LP2/a;-><init>(Lib/c;Lsb/k;)V

    iput-object p1, v0, LP2/a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LL2/p;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LP2/a;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LP2/a;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LP2/a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LP2/a;->a:Ljava/lang/Object;

    check-cast p1, LL2/p;

    const-string v0, "null cannot be cast to non-null type androidx.room.coroutines.RawConnectionAccessor"

    invoke-static {p1, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, LL2/x;

    invoke-interface {p1}, LL2/x;->c()LS2/a;

    move-result-object p1

    iget-object p0, p0, LP2/a;->b:Lsb/k;

    invoke-interface {p0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
