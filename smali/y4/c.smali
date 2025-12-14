.class public final Ly4/c;
.super Ly4/d;
.source "SourceFile"


# static fields
.field public static final d:Ly4/e;


# instance fields
.field public b:F

.field public c:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly4/c;

    invoke-direct {v0}, Ly4/c;-><init>()V

    const/16 v1, 0x20

    invoke-static {v1, v0}, Ly4/e;->a(ILy4/d;)Ly4/e;

    move-result-object v0

    sput-object v0, Ly4/c;->d:Ly4/e;

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Ly4/e;->f:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ly4/d;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ly4/c;->b:F

    iput v0, p0, Ly4/c;->c:F

    return-void
.end method

.method public static b(FF)Ly4/c;
    .locals 1

    sget-object v0, Ly4/c;->d:Ly4/e;

    invoke-virtual {v0}, Ly4/e;->b()Ly4/d;

    move-result-object v0

    check-cast v0, Ly4/c;

    iput p0, v0, Ly4/c;->b:F

    iput p1, v0, Ly4/c;->c:F

    return-object v0
.end method


# virtual methods
.method public final a()Ly4/d;
    .locals 0

    new-instance p0, Ly4/c;

    invoke-direct {p0}, Ly4/c;-><init>()V

    return-object p0
.end method
