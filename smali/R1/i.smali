.class public final LR1/i;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:LR1/w;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:LR1/m;


# direct methods
.method public constructor <init>(LR1/w;Landroid/content/Context;LR1/m;)V
    .locals 0

    iput-object p1, p0, LR1/i;->a:LR1/w;

    iput-object p2, p0, LR1/i;->b:Landroid/content/Context;

    iput-object p3, p0, LR1/i;->c:LR1/m;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0xb

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    move-object p2, p1

    check-cast p2, La0/q;

    invoke-virtual {p2}, La0/q;->x()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, La0/q;->K()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p2, Lx1/k;->d:La0/L0;

    check-cast p1, La0/q;

    invoke-virtual {p1, p2}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, LR1/i;->a:LR1/w;

    iget-boolean v0, v0, LR1/w;->c:Z

    sget-object v1, Lx1/k;->e:La0/L0;

    invoke-virtual {p1, v1}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJ1/b;

    invoke-static {v1, p1}, LG5/h3;->e(LJ1/b;La0/m;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[common-2.0.3] provideContent: widgetId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", showShadow="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", colors="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "msg"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Le7/a;->a:Ljava/lang/String;

    const-string v1, " "

    const-string v2, "GWT:TemplateAppWidget"

    invoke-static {v0, v1, p2, v2}, Lw2/j;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lx1/k;->a:La0/L0;

    iget-object v0, p0, LR1/i;->b:Landroid/content/Context;

    invoke-static {v0, p1}, LG5/P3;->a(Landroid/content/Context;La0/m;)J

    move-result-wide v0

    new-instance v2, LH0/g;

    invoke-direct {v2, v0, v1}, LH0/g;-><init>(J)V

    invoke-virtual {p2, v2}, La0/L0;->b(Ljava/lang/Object;)La0/h0;

    move-result-object p2

    new-instance v0, LR1/h;

    iget-object p0, p0, LR1/i;->c:LR1/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LR1/h;-><init>(LR1/m;I)V

    const p0, 0x485b5a7a

    invoke-static {p1, p0, v0}, Li0/b;->b(La0/m;ILtb/m;)Li0/a;

    move-result-object p0

    const/16 v0, 0x38

    invoke-static {p2, p0, p1, v0}, La0/d;->a(La0/h0;Li0/a;La0/m;I)V

    :goto_1
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
