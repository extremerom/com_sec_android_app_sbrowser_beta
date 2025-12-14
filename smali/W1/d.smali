.class public final LW1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:F

.field public final b:Le2/a;

.field public final c:I

.field public final d:F


# direct methods
.method public synthetic constructor <init>(FLe2/a;I)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, LW1/d;-><init>(FLe2/a;IFI)V

    return-void
.end method

.method public constructor <init>(FLe2/a;IF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LW1/d;->a:F

    iput-object p2, p0, LW1/d;->b:Le2/a;

    iput p3, p0, LW1/d;->c:I

    iput p4, p0, LW1/d;->d:F

    return-void
.end method

.method public constructor <init>(FLe2/a;IFI)V
    .locals 0

    const-string p5, "unit"

    invoke-static {p2, p5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, LW1/d;-><init>(FLe2/a;IF)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;ILe2/a;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, LW1/d;-><init>(Landroid/content/Context;ILe2/a;IF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILe2/a;IF)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unit"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, LG5/O3;->b(Landroid/content/Context;I)F

    move-result p1

    invoke-direct {p0, p1, p3, p4, p5}, LW1/d;-><init>(FLe2/a;IF)V

    return-void
.end method
