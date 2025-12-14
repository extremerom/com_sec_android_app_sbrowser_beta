.class public final Lc2/E;
.super Lib/a;
.source "SourceFile"

# interfaces
.implements LNc/z;


# instance fields
.field public final synthetic a:Lc2/U;

.field public final synthetic b:Lc2/m;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lc2/U;Lc2/m;Landroid/content/Context;)V
    .locals 1

    sget-object v0, LNc/y;->a:LNc/y;

    iput-object p1, p0, Lc2/E;->a:Lc2/U;

    iput-object p2, p0, Lc2/E;->b:Lc2/m;

    iput-object p3, p0, Lc2/E;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lib/a;-><init>(Lib/g;)V

    return-void
.end method


# virtual methods
.method public final handleException(Lib/h;Ljava/lang/Throwable;)V
    .locals 6

    new-instance p1, Lc2/M;

    iget-object v1, p0, Lc2/E;->b:Lc2/m;

    iget-object v2, p0, Lc2/E;->c:Landroid/content/Context;

    iget-object p0, p0, Lc2/E;->a:Lc2/U;

    const/4 v5, 0x0

    move-object v0, p1

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lc2/M;-><init>(Lc2/m;Landroid/content/Context;Ljava/lang/Throwable;Lc2/U;Lib/c;)V

    const/4 p2, 0x3

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, p1, p2}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method
