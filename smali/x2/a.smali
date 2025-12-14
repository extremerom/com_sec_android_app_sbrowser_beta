.class public final Lx2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lx2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx2/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lx2/a;->a:Lx2/a;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    invoke-static {}, Lt/P0;->c()I

    move-result p0

    return p0
.end method

.method public final b()I
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    invoke-static {}, Lt/P0;->a()I

    move-result p0

    return p0
.end method
