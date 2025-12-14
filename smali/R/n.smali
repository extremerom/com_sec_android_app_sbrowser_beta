.class public abstract LR/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/compose/ui/platform/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/platform/m;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LR/n;->a:Landroidx/compose/ui/platform/m;

    return-void
.end method

.method public static final a(Lm0/m;JLs0/g;)Lm0/m;
    .locals 2

    const-string v0, "$this$background"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shape"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LR/i;

    new-instance v1, Ls0/b;

    invoke-direct {v1, p1, p2}, Ls0/b;-><init>(J)V

    invoke-direct {v0, v1, p3}, LR/i;-><init>(Ls0/b;Ls0/g;)V

    invoke-interface {p0, v0}, Lm0/m;->g(Lm0/m;)Lm0/m;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Landroid/widget/EdgeEffect;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    sget-object v0, LR/h;->a:LR/h;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, LR/h;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, LR/r;

    invoke-direct {v0, p0}, LR/r;-><init>(Landroid/content/Context;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static c(Landroid/widget/EdgeEffect;)F
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    sget-object v0, LR/h;->a:LR/h;

    invoke-virtual {v0, p0}, LR/h;->b(Landroid/widget/EdgeEffect;)F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
