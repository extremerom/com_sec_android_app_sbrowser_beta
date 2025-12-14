.class public final LD1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx1/q;


# instance fields
.field public final a:F

.field public final b:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LD1/a;->a:F

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    iput p1, p0, LD1/a;->b:F

    return-void
.end method
