.class public final LV/w;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/o;


# instance fields
.field public final synthetic a:LW/k;

.field public final synthetic b:J

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public constructor <init>(LW/k;JII)V
    .locals 0

    iput-object p1, p0, LV/w;->a:LW/k;

    iput-wide p2, p0, LV/w;->b:J

    iput p4, p0, LV/w;->c:I

    iput p5, p0, LV/w;->d:I

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Lsb/k;

    const-string v0, "placement"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, LV/w;->c:I

    add-int/2addr p1, v0

    iget-wide v0, p0, LV/w;->b:J

    invoke-static {v0, v1}, LH0/a;->d(J)I

    move-result v2

    invoke-static {v0, v1}, LH0/a;->b(J)I

    move-result v3

    invoke-static {p1, v2, v3}, LG5/d3;->f(III)I

    move-result p1

    iget v2, p0, LV/w;->d:I

    add-int/2addr p2, v2

    invoke-static {v0, v1}, LH0/a;->c(J)I

    move-result v2

    invoke-static {v0, v1}, LH0/a;->a(J)I

    move-result v0

    invoke-static {p2, v2, v0}, LG5/d3;->f(III)I

    move-result p2

    sget-object v0, Lfb/w;->a:Lfb/w;

    iget-object p0, p0, LV/w;->a:LW/k;

    invoke-virtual {p0, p1, p2, v0, p3}, LW/k;->l(IILjava/util/Map;Lsb/k;)Lz0/y;

    move-result-object p0

    return-object p0
.end method
