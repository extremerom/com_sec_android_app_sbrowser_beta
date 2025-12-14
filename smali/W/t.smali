.class public final LW/t;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:LUc/e;

.field public final synthetic c:LW/q;


# direct methods
.method public constructor <init>(ZLUc/e;LW/q;)V
    .locals 0

    iput-boolean p1, p0, LW/t;->a:Z

    iput-object p2, p0, LW/t;->b:LUc/e;

    iput-object p3, p0, LW/t;->c:LW/q;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    iget-boolean v0, p0, LW/t;->a:Z

    if-eqz v0, :cond_0

    move p1, p2

    :cond_0
    new-instance p2, LW/s;

    iget-object v0, p0, LW/t;->c:LW/q;

    const/4 v1, 0x0

    invoke-direct {p2, v0, p1, v1}, LW/s;-><init>(LW/q;FLib/c;)V

    iget-object p0, p0, LW/t;->b:LUc/e;

    const/4 p1, 0x3

    invoke-static {p0, v1, v1, p2, p1}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method
