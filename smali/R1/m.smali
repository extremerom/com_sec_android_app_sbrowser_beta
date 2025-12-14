.class public abstract LR1/m;
.super Lz1/V;
.source "SourceFile"


# static fields
.field public static final Companion:LR1/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final sizeMode:Lz1/b1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LR1/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LR1/m;->Companion:LR1/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lz1/V;-><init>()V

    sget-object v0, Lz1/Z0;->a:Lz1/Z0;

    iput-object v0, p0, LR1/m;->sizeMode:Lz1/b1;

    return-void
.end method


# virtual methods
.method public PreviewContent(La0/m;I)V
    .locals 2
    .param p1    # La0/m;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/glance/GlanceComposable;
    .end annotation

    check-cast p1, La0/q;

    const v0, 0x50e195fe

    invoke-virtual {p1, v0}, La0/q;->S(I)La0/q;

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, La0/q;->x()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, La0/q;->K()V

    :cond_1
    :goto_0
    invoke-virtual {p1}, La0/q;->r()La0/i0;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, LE1/d;

    const/4 v1, 0x2

    invoke-direct {v0, p2, v1, p0}, LE1/d;-><init>(IILjava/lang/Object;)V

    iput-object v0, p1, La0/i0;->d:Lsb/n;

    :cond_2
    return-void
.end method

.method public abstract TemplateContent(La0/m;I)V
.end method

.method public getSizeMode()Lz1/b1;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, LR1/m;->sizeMode:Lz1/b1;

    return-object p0
.end method

.method public final provideGlance(Landroid/content/Context;Lx1/o;Lib/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lx1/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lx1/o;",
            "Lib/c<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of p2, p3, LR1/g;

    if-eqz p2, :cond_0

    move-object p2, p3

    check-cast p2, LR1/g;

    iget v0, p2, LR1/g;->c:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_0

    sub-int/2addr v0, v1

    iput v0, p2, LR1/g;->c:I

    goto :goto_0

    :cond_0
    new-instance p2, LR1/g;

    invoke-direct {p2, p0, p3}, LR1/g;-><init>(LR1/m;Lib/c;)V

    :goto_0
    iget-object p3, p2, LR1/g;->a:Ljava/lang/Object;

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p2, LR1/g;->c:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    new-instance p3, LR1/j;

    const/4 v1, 0x1

    invoke-direct {p3, p1, p0, v1}, LR1/j;-><init>(Landroid/content/Context;LR1/m;I)V

    new-instance p0, Li0/a;

    const p1, -0x79579d4a

    invoke-direct {p0, p1, v2, p3}, Li0/a;-><init>(IZLdb/b;)V

    iput v2, p2, LR1/g;->c:I

    invoke-static {p0, p2}, LG5/S2;->k(Li0/a;Lkb/c;)Ljb/a;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public final providePreview$glance_oneui_template_release(Landroid/content/Context;Lib/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lib/c<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, LR1/k;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LR1/k;

    iget v1, v0, LR1/k;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LR1/k;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, LR1/k;

    invoke-direct {v0, p0, p2}, LR1/k;-><init>(LR1/m;Lib/c;)V

    :goto_0
    iget-object p2, v0, LR1/k;->a:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LR1/k;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    new-instance p2, LR1/j;

    const/4 v2, 0x2

    invoke-direct {p2, p1, p0, v2}, LR1/j;-><init>(Landroid/content/Context;LR1/m;I)V

    new-instance p0, Li0/a;

    const p1, 0x13dece69

    invoke-direct {p0, p1, v3, p2}, Li0/a;-><init>(IZLdb/b;)V

    iput v3, v0, LR1/k;->c:I

    invoke-static {p0, v0}, LG5/z3;->b(Li0/a;Lkb/c;)Ljb/a;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public final updatePreview$glance_oneui_template_release(Landroid/content/Context;Ljava/lang/Class;LZ1/a;Lib/c;)Ljava/lang/Object;
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # LZ1/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "LR1/n;",
            ">;",
            "LZ1/a;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updatePreview: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Le7/a;->a:Ljava/lang/String;

    const-string v2, " "

    const-string v3, "GWT:TemplateAppWidget"

    invoke-static {v1, v2, v0, v3}, Lw2/j;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, LZ1/u;->a:LZ1/u;

    new-instance v7, LR1/l;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, LR1/l;-><init>(Landroid/content/Context;LR1/m;Ljava/lang/Class;LZ1/a;Lib/c;)V

    invoke-virtual {v0, v7, p4}, LZ1/u;->a(Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
