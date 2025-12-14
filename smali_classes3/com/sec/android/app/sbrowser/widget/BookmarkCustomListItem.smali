.class public final Lcom/sec/android/app/sbrowser/widget/BookmarkCustomListItem;
.super LR1/e;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0001H\u0017\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/widget/BookmarkCustomListItem;",
        "LR1/e;",
        "LR1/x;",
        "titleText",
        "LR1/p;",
        "icon",
        "Ly1/a;",
        "onClick",
        "<init>",
        "(LR1/x;LR1/p;Ly1/a;)V",
        "item",
        "Ldb/r;",
        "CustomContent",
        "(LR1/e;La0/m;I)V",
        "LR1/x;",
        "getTitleText",
        "()LR1/x;",
        "LR1/p;",
        "getIcon",
        "()LR1/p;",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final icon:LR1/p;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final titleText:LR1/x;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(LR1/x;LR1/p;Ly1/a;)V
    .locals 7
    .param p1    # LR1/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LR1/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ly1/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "titleText"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, LR1/y;

    iget-object v0, p1, LR1/x;->b:Ljava/lang/String;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v1, p1, LR1/x;->c:Lf2/a;

    iget-object v3, p1, LR1/x;->j:Le2/k;

    invoke-direct {v2, v0, v1, v3}, LR1/y;-><init>(Ljava/lang/String;Lf2/a;Le2/k;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, LR1/r;-><init>(LR1/y;LR1/y;LR1/p;Ljava/lang/String;Ly1/a;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkCustomListItem;->titleText:LR1/x;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkCustomListItem;->icon:LR1/p;

    return-void
.end method


# virtual methods
.method public CustomContent(LR1/e;La0/m;I)V
    .locals 7
    .param p1    # LR1/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # La0/m;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    const-string p3, "item"

    invoke-static {p1, p3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, La0/q;

    const p1, 0x67568567

    invoke-virtual {p2, p1}, La0/q;->Q(I)V

    sget-object p1, Lx1/p;->a:Lx1/p;

    invoke-static {p1}, LG5/P3;->d(Lx1/r;)Lx1/r;

    move-result-object p1

    invoke-static {p1}, LG5/P3;->l(Lx1/r;)Lx1/r;

    move-result-object p1

    const/4 p3, 0x0

    int-to-float v0, p3

    sget-object v1, Lx1/k;->b:La0/L0;

    invoke-virtual {p2, v1}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v1}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c00c8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1, v0, v2, v0, v1}, LG5/N3;->e(Lx1/r;FFFF)Lx1/r;

    move-result-object v0

    new-instance p1, Lcom/sec/android/app/sbrowser/widget/BookmarkCustomListItem$CustomContent$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/widget/BookmarkCustomListItem$CustomContent$1;-><init>(Lcom/sec/android/app/sbrowser/widget/BookmarkCustomListItem;)V

    const p0, 0x2940b5cb

    invoke-static {p0, p1, p2}, Li0/b;->c(ILdb/b;La0/m;)Li0/a;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v5, 0xc00

    const/4 v6, 0x2

    move-object v4, p2

    invoke-static/range {v0 .. v6}, LG5/O3;->a(Lx1/r;IILi0/a;La0/m;II)V

    invoke-virtual {p2, p3}, La0/q;->p(Z)V

    return-void
.end method

.method public final getTitleText()LR1/x;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkCustomListItem;->titleText:LR1/x;

    return-object p0
.end method
