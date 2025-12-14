.class public final Lf1/t0;
.super Lf1/s0;
.source "SourceFile"


# static fields
.field public static final q:Lf1/w0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lf1/y0;->i()Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lf1/w0;->f(Landroid/view/View;Landroid/view/WindowInsets;)Lf1/w0;

    move-result-object v0

    sput-object v0, Lf1/t0;->q:Lf1/w0;

    return-void
.end method

.method public constructor <init>(Lf1/w0;Landroid/view/WindowInsets;)V
    .locals 0
    .param p1    # Lf1/w0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/WindowInsets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lf1/s0;-><init>(Lf1/w0;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public f(I)LX0/b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lf1/p0;->c:Landroid/view/WindowInsets;

    invoke-static {p1}, Lf1/v0;->a(I)I

    move-result p1

    invoke-static {p0, p1}, Lf1/y0;->f(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p0

    invoke-static {p0}, LX0/b;->d(Landroid/graphics/Insets;)LX0/b;

    move-result-object p0

    return-object p0
.end method

.method public o(I)Z
    .locals 0

    iget-object p0, p0, Lf1/p0;->c:Landroid/view/WindowInsets;

    invoke-static {p1}, Lf1/v0;->a(I)I

    move-result p1

    invoke-static {p0, p1}, Lf1/E;->q(Landroid/view/WindowInsets;I)Z

    move-result p0

    return p0
.end method
