.class public final Lv2/L0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    iput v0, p0, Lv2/L0;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lv2/L0;->b:Z

    const v0, 0x7fffffff

    iput v0, p0, Lv2/L0;->c:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lv2/L0;->d:I

    return-void
.end method
