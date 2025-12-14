.class public final LH1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LH1/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LH1/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LH1/b;->a:LH1/b;

    return-void
.end method


# virtual methods
.method public final a(Lz1/f1;Landroid/widget/RemoteViews;Lf2/a;I)V
    .locals 3
    .param p1    # Lz1/f1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/RemoteViews;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lf2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    const-string p0, "translationContext"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "rv"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "colorProvider"

    invoke-static {p3, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p3, LJ1/a;

    const-string v0, "setColorFilter"

    if-eqz p0, :cond_0

    check-cast p3, LJ1/a;

    iget-wide p0, p3, LJ1/a;->a:J

    invoke-static {p0, p1}, Ls0/e;->e(J)I

    move-result p0

    iget-wide v1, p3, LJ1/a;->b:J

    invoke-static {v1, v2}, Ls0/e;->e(J)I

    move-result p1

    invoke-static {p2, p4, v0, p0, p1}, Landroidx/core/widget/m;->f(Landroid/widget/RemoteViews;ILjava/lang/String;II)V

    goto :goto_0

    :cond_0
    instance-of p0, p3, Lf2/j;

    if-eqz p0, :cond_1

    check-cast p3, Lf2/j;

    iget p0, p3, Lf2/j;->a:I

    invoke-static {p2, p4, v0, p0}, Landroidx/core/widget/m;->d(Landroid/widget/RemoteViews;ILjava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object p0, p1, Lz1/f1;->a:Landroid/content/Context;

    invoke-interface {p3, p0}, Lf2/a;->a(Landroid/content/Context;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ls0/e;->e(J)I

    move-result p0

    invoke-virtual {p2, p4, v0, p0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :goto_0
    return-void
.end method
