.class public final LY2/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LN/f;

.field public final b:Landroid/util/SparseArray;

.field public final c:LN/k;

.field public final d:LN/f;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LN/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LN/A;-><init>(I)V

    iput-object v0, p0, LY2/r0;->a:LN/f;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, LY2/r0;->b:Landroid/util/SparseArray;

    new-instance v0, LN/k;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, LN/k;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LY2/r0;->c:LN/k;

    new-instance v0, LN/f;

    invoke-direct {v0, v1}, LN/A;-><init>(I)V

    iput-object v0, p0, LY2/r0;->d:LN/f;

    return-void
.end method
