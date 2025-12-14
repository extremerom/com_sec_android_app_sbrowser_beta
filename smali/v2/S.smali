.class public final Lv2/S;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/o;


# instance fields
.field public final synthetic a:Lv2/T;


# direct methods
.method public constructor <init>(Lv2/T;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lv2/S;->a:Lv2/T;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LQc/i;

    check-cast p2, Ljava/lang/Throwable;

    check-cast p3, Lib/c;

    new-instance p1, Lv2/S;

    iget-object p0, p0, Lv2/S;->a:Lv2/T;

    invoke-direct {p1, p0, p3}, Lv2/S;-><init>(Lv2/T;Lib/c;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    invoke-virtual {p1, p0}, Lv2/S;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p0, p0, Lv2/S;->a:Lv2/T;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
