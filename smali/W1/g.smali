.class public final LW1/g;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:LF3/f;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ly1/a;

.field public final synthetic e:LV9/a;

.field public final synthetic f:Li0/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;LF3/f;Ljava/lang/String;Ly1/a;LV9/a;Li0/a;)V
    .locals 0

    iput-object p1, p0, LW1/g;->a:Ljava/lang/String;

    iput-object p2, p0, LW1/g;->b:LF3/f;

    iput-object p3, p0, LW1/g;->c:Ljava/lang/String;

    iput-object p4, p0, LW1/g;->d:Ly1/a;

    iput-object p5, p0, LW1/g;->e:LV9/a;

    iput-object p6, p0, LW1/g;->f:Li0/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v6, p1

    check-cast v6, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    and-int/lit8 p1, p1, 0xb

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    move-object p1, v6

    check-cast p1, La0/q;

    invoke-virtual {p1}, La0/q;->x()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, La0/q;->K()V

    goto :goto_2

    :cond_1
    :goto_0
    iget-object p1, p0, LW1/g;->c:Ljava/lang/String;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    sget-object p2, Lx1/k;->e:La0/L0;

    move-object v0, v6

    check-cast v0, La0/q;

    invoke-virtual {v0, p2}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LJ1/b;

    invoke-static {p2, v6}, LG5/h3;->e(LJ1/b;La0/m;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "appWidgetDescription="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LW1/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", appWidgetBackground="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LW1/g;->b:LF3/f;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", appWidgetLabel="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", colors="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "msg"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Le7/a;->a:Ljava/lang/String;

    const-string v0, " "

    const-string v2, "GlanceTemplate"

    invoke-static {p2, v0, p1, v2}, Lw2/j;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, LW1/g;->f:Li0/a;

    iget-object v3, p0, LW1/g;->e:LV9/a;

    const/16 v7, 0x1200

    iget-object p1, p0, LW1/g;->b:LF3/f;

    iget-object v2, p0, LW1/g;->d:Ly1/a;

    iget-object v4, p0, LW1/g;->c:Ljava/lang/String;

    move-object v0, v1

    move-object v1, p1

    invoke-static/range {v0 .. v7}, LG5/y3;->b(Ljava/lang/String;LF3/f;Ly1/a;LV9/a;Ljava/lang/String;Li0/a;La0/m;I)V

    :goto_2
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
