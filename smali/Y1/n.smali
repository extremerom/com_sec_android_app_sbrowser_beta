.class public final LY1/n;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/o;


# instance fields
.field public final synthetic a:LV9/a;

.field public final synthetic b:Lsb/n;

.field public final synthetic c:Lsb/n;

.field public final synthetic d:Li0/a;


# direct methods
.method public constructor <init>(LV9/a;Lsb/n;Lsb/n;Li0/a;)V
    .locals 0

    iput-object p1, p0, LY1/n;->a:LV9/a;

    iput-object p2, p0, LY1/n;->b:Lsb/n;

    iput-object p3, p0, LY1/n;->c:Lsb/n;

    iput-object p4, p0, LY1/n;->d:Li0/a;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, LK1/i;

    check-cast p2, La0/m;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    const-string p3, "$this$Column"

    invoke-static {p1, p3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, LY1/n;->c:Lsb/n;

    const/16 p3, 0x8

    iget-object v0, p0, LY1/n;->a:LV9/a;

    iget-object v1, p0, LY1/n;->b:Lsb/n;

    invoke-static {v0, v1, p1, p2, p3}, LG5/T2;->c(LV9/a;Lsb/n;Lsb/n;La0/m;I)V

    sget-object p1, LR1/d;->d:La0/L0;

    check-cast p2, La0/q;

    invoke-virtual {p2, p1}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LM1/b;

    iget p1, p1, LM1/b;->a:I

    const/4 p3, 0x4

    invoke-static {p1, p3}, LM1/b;->b(II)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, LY1/n;->d:Li0/a;

    invoke-virtual {p0, p2, p1}, Li0/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
