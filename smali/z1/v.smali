.class public final Lz1/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lz1/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz1/v;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lz1/v;->a:Lz1/v;

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/RemoteViews;ILf2/h;)V
    .locals 1
    .param p1    # Landroid/widget/RemoteViews;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lf2/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    const-string p0, "rv"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "radius"

    invoke-static {p3, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p0, v0, :cond_2

    const-string p0, "setClipToOutline"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    instance-of p0, p3, Lf2/c;

    if-eqz p0, :cond_0

    check-cast p3, Lf2/c;

    iget p0, p3, Lf2/c;->a:F

    invoke-virtual {p1, p2, p0, v0}, Landroid/widget/RemoteViews;->setViewOutlinePreferredRadius(IFI)V

    goto :goto_0

    :cond_0
    instance-of p0, p3, Lf2/f;

    if-eqz p0, :cond_1

    check-cast p3, Lf2/f;

    iget p0, p3, Lf2/f;->a:I

    invoke-virtual {p1, p2, p0}, Landroid/widget/RemoteViews;->setViewOutlinePreferredRadiusDimen(II)V

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Rounded corners should not be "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "setClipToOutline is only available on SDK 31 and higher"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Landroid/widget/RemoteViews;ILf2/h;)V
    .locals 1
    .param p1    # Landroid/widget/RemoteViews;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lf2/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    const-string p0, "rv"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "height"

    invoke-static {p3, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p3, Lf2/g;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/high16 p0, -0x40000000    # -2.0f

    invoke-virtual {p1, p2, p0, v0}, Landroid/widget/RemoteViews;->setViewLayoutHeight(IFI)V

    goto :goto_0

    :cond_0
    instance-of p0, p3, Lf2/d;

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0, v0}, Landroid/widget/RemoteViews;->setViewLayoutHeight(IFI)V

    goto :goto_0

    :cond_1
    instance-of p0, p3, Lf2/c;

    if-eqz p0, :cond_2

    check-cast p3, Lf2/c;

    const/4 p0, 0x1

    iget p3, p3, Lf2/c;->a:F

    invoke-virtual {p1, p2, p3, p0}, Landroid/widget/RemoteViews;->setViewLayoutHeight(IFI)V

    goto :goto_0

    :cond_2
    instance-of p0, p3, Lf2/f;

    if-eqz p0, :cond_3

    check-cast p3, Lf2/f;

    iget p0, p3, Lf2/f;->a:I

    invoke-virtual {p1, p2, p0}, Landroid/widget/RemoteViews;->setViewLayoutHeightDimen(II)V

    goto :goto_0

    :cond_3
    sget-object p0, Lf2/e;->a:Lf2/e;

    invoke-virtual {p3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/high16 p0, -0x40800000    # -1.0f

    invoke-virtual {p1, p2, p0, v0}, Landroid/widget/RemoteViews;->setViewLayoutHeight(IFI)V

    :goto_0
    return-void

    :cond_4
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public final c(Landroid/widget/RemoteViews;ILf2/h;)V
    .locals 1
    .param p1    # Landroid/widget/RemoteViews;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lf2/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    const-string p0, "rv"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "width"

    invoke-static {p3, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p3, Lf2/g;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/high16 p0, -0x40000000    # -2.0f

    invoke-virtual {p1, p2, p0, v0}, Landroid/widget/RemoteViews;->setViewLayoutWidth(IFI)V

    goto :goto_0

    :cond_0
    instance-of p0, p3, Lf2/d;

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0, v0}, Landroid/widget/RemoteViews;->setViewLayoutWidth(IFI)V

    goto :goto_0

    :cond_1
    instance-of p0, p3, Lf2/c;

    if-eqz p0, :cond_2

    check-cast p3, Lf2/c;

    const/4 p0, 0x1

    iget p3, p3, Lf2/c;->a:F

    invoke-virtual {p1, p2, p3, p0}, Landroid/widget/RemoteViews;->setViewLayoutWidth(IFI)V

    goto :goto_0

    :cond_2
    instance-of p0, p3, Lf2/f;

    if-eqz p0, :cond_3

    check-cast p3, Lf2/f;

    iget p0, p3, Lf2/f;->a:I

    invoke-virtual {p1, p2, p0}, Landroid/widget/RemoteViews;->setViewLayoutWidthDimen(II)V

    goto :goto_0

    :cond_3
    sget-object p0, Lf2/e;->a:Lf2/e;

    invoke-virtual {p3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/high16 p0, -0x40800000    # -1.0f

    invoke-virtual {p1, p2, p0, v0}, Landroid/widget/RemoteViews;->setViewLayoutWidth(IFI)V

    :goto_0
    return-void

    :cond_4
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method
