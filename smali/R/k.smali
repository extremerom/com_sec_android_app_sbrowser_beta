.class public abstract LR/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:F

.field public static final b:Lm0/m;

.field public static final c:Lm0/m;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x1e

    int-to-float v0, v0

    sput v0, LR/k;->a:F

    sget-object v0, Lm0/j;->a:Lm0/j;

    new-instance v1, LR/j;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const v2, 0x1e7ff

    invoke-static {v0, v1, v2}, Landroidx/compose/ui/graphics/a;->a(Lm0/m;Ls0/g;I)Lm0/m;

    move-result-object v1

    sput-object v1, LR/k;->b:Lm0/m;

    new-instance v1, LR/j;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, v1, v2}, Landroidx/compose/ui/graphics/a;->a(Lm0/m;Ls0/g;I)Lm0/m;

    move-result-object v0

    sput-object v0, LR/k;->c:Lm0/m;

    return-void
.end method
