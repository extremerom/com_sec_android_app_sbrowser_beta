.class public final Lz1/G0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lz1/G0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz1/G0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lz1/G0;->a:Lz1/G0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;II)Landroid/widget/RemoteViews;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "packageName"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/widget/RemoteViews;

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;II)V

    return-object p0
.end method
