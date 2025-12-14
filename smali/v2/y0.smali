.class public final Lv2/y0;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lv2/C0;


# direct methods
.method public constructor <init>(Lv2/C0;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lv2/y0;->b:Lv2/C0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance v0, Lv2/y0;

    iget-object p0, p0, Lv2/y0;->b:Lv2/C0;

    invoke-direct {v0, p0, p2}, Lv2/y0;-><init>(Lv2/C0;Lib/c;)V

    iput-object p1, v0, Lv2/y0;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lv2/C1;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lv2/y0;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lv2/y0;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lv2/y0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lv2/y0;->a:Ljava/lang/Object;

    check-cast p1, Lv2/C1;

    iget v0, p1, Lv2/C1;->a:I

    mul-int/lit8 v0, v0, -0x1

    iget-object p0, p0, Lv2/y0;->b:Lv2/C0;

    iget-object p0, p0, Lv2/C0;->c:Lv2/L0;

    iget p0, p0, Lv2/L0;->d:I

    if-gt v0, p0, :cond_1

    iget p1, p1, Lv2/C1;->b:I

    mul-int/lit8 p1, p1, -0x1

    if-le p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
