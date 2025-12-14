.class public final Lv2/Q;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:Lv2/T;


# direct methods
.method public constructor <init>(Lv2/T;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lv2/Q;->a:Lv2/T;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 0

    new-instance p1, Lv2/Q;

    iget-object p0, p0, Lv2/Q;->a:Lv2/T;

    invoke-direct {p1, p0, p2}, Lv2/Q;-><init>(Lv2/T;Lib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LQc/i;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lv2/Q;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lv2/Q;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lv2/Q;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p0, p0, Lv2/Q;->a:Lv2/T;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
