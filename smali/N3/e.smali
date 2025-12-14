.class public final LN3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN3/u;


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LN3/e;->a:I

    iput v0, p0, LN3/e;->b:I

    iput v0, p0, LN3/e;->c:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LN3/e;->a:I

    iput p2, p0, LN3/e;->c:I

    return-void
.end method
