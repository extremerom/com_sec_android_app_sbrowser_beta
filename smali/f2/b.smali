.class public final Lf2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lf2/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf2/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf2/b;->a:Lf2/b;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;I)I
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method
