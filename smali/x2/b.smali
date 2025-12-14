.class public final Lx2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lx2/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx2/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lx2/b;->a:Lx2/b;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    invoke-static {}, Lt/P0;->d()I

    move-result p0

    return p0
.end method
