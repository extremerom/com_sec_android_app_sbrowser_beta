.class public final Lz1/R0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lz1/R0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz1/R0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lz1/R0;->a:Lz1/R0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;I)V
    .locals 0
    .param p1    # Landroid/widget/RemoteViews;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/RemoteViews;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    const-string p0, "rv"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "childView"

    invoke-static {p3, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3, p4}, Landroid/widget/RemoteViews;->addStableView(ILandroid/widget/RemoteViews;I)V

    return-void
.end method
