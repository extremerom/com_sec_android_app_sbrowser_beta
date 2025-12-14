.class public final LC1/b;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:LC1/m;

.field public c:I


# direct methods
.method public constructor <init>(LC1/m;Lkb/c;)V
    .locals 0

    iput-object p1, p0, LC1/b;->b:LC1/m;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LC1/b;->a:Ljava/lang/Object;

    iget p1, p0, LC1/b;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LC1/b;->c:I

    iget-object p1, p0, LC1/b;->b:LC1/m;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, LC1/m;->l(Landroid/content/Context;Lsb/k;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Ldb/m;

    invoke-direct {p1, p0}, Ldb/m;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
