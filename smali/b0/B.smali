.class public final Lb0/B;
.super Lb0/C;
.source "SourceFile"


# static fields
.field public static final c:Lb0/B;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lb0/B;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2}, Lb0/C;-><init>(III)V

    sput-object v0, Lb0/B;->c:Lb0/B;

    return-void
.end method


# virtual methods
.method public final a(LN/h;LJ2/i0;La0/y0;LB0/M;)V
    .locals 0

    invoke-virtual {p2}, LJ2/i0;->g()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type androidx.compose.runtime.ComposeNodeLifecycleCallback"

    invoke-static {p0, p1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, La0/j;

    invoke-interface {p0}, La0/j;->b()V

    return-void
.end method
