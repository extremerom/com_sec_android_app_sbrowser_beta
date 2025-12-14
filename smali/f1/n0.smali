.class public final Lf1/n0;
.super Lf1/m0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lf1/m0;-><init>()V

    return-void
.end method

.method public constructor <init>(Lf1/w0;)V
    .locals 0
    .param p1    # Lf1/w0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lf1/m0;-><init>(Lf1/w0;)V

    return-void
.end method


# virtual methods
.method public c(ILX0/b;)V
    .locals 0
    .param p2    # LX0/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lf1/v0;->a(I)I

    move-result p1

    invoke-virtual {p2}, LX0/b;->e()Landroid/graphics/Insets;

    move-result-object p2

    iget-object p0, p0, Lf1/m0;->c:Landroid/view/WindowInsets$Builder;

    invoke-static {p0, p1, p2}, Lf1/E;->l(Landroid/view/WindowInsets$Builder;ILandroid/graphics/Insets;)V

    return-void
.end method
