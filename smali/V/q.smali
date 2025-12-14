.class public final LV/q;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/p;


# instance fields
.field public final synthetic a:LV/J;

.field public final synthetic b:LV/g;


# direct methods
.method public constructor <init>(LV/J;LV/g;)V
    .locals 0

    iput-object p1, p0, LV/q;->a:LV/J;

    iput-object p2, p0, LV/q;->b:LV/g;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, LW/d;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v1

    move-object v4, p3

    check-cast v4, La0/m;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p2

    const-string p3, "interval"

    invoke-static {p1, p3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p3, p2, 0xe

    if-nez p3, :cond_1

    move-object p3, v4

    check-cast p3, La0/q;

    invoke-virtual {p3, p1}, La0/q;->e(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x4

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    :goto_0
    or-int/2addr p3, p2

    goto :goto_1

    :cond_1
    move p3, p2

    :goto_1
    and-int/lit8 p2, p2, 0x70

    if-nez p2, :cond_3

    move-object p2, v4

    check-cast p2, La0/q;

    invoke-virtual {p2, v1}, La0/q;->c(I)Z

    move-result p2

    if-eqz p2, :cond_2

    const/16 p2, 0x20

    goto :goto_2

    :cond_2
    const/16 p2, 0x10

    :goto_2
    or-int/2addr p3, p2

    :cond_3
    and-int/lit16 p2, p3, 0x2db

    const/16 p4, 0x92

    if-ne p2, p4, :cond_5

    move-object p2, v4

    check-cast p2, La0/q;

    invoke-virtual {p2}, La0/q;->x()Z

    move-result p4

    if-nez p4, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, La0/q;->K()V

    goto :goto_4

    :cond_5
    :goto_3
    iget p2, p1, LW/d;->a:I

    sub-int p2, v1, p2

    iget-object p4, p0, LV/q;->a:LV/J;

    iget-object v2, p4, LV/J;->p:LW/m;

    new-instance p4, LV/p;

    iget-object p0, p0, LV/q;->b:LV/g;

    const/4 v0, 0x0

    invoke-direct {p4, p1, p0, p2, v0}, LV/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    const p0, 0x4827c4cf

    invoke-static {v4, p0, p4}, Li0/b;->b(La0/m;ILtb/m;)Li0/a;

    move-result-object v3

    and-int/lit8 p0, p3, 0x70

    or-int/lit16 v5, p0, 0xe08

    const/4 v0, 0x0

    invoke-static/range {v0 .. v5}, LG5/b3;->a(Ljava/lang/Object;ILW/m;Li0/a;La0/m;I)V

    :goto_4
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
