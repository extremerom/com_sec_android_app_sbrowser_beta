.class public abstract Lc5/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Lcom/google/android/gms/common/Feature;

.field public final b:Z

.field public final c:I


# direct methods
.method public constructor <init>([Lcom/google/android/gms/common/Feature;ZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc5/u;->a:[Lcom/google/android/gms/common/Feature;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lc5/u;->b:Z

    iput p3, p0, Lc5/u;->c:I

    return-void
.end method

.method public static a()LG6/f;
    .locals 2

    new-instance v0, LG6/f;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LG6/f;-><init>(I)V

    const/4 v1, 0x1

    iput-boolean v1, v0, LG6/f;->b:Z

    const/4 v1, 0x0

    iput v1, v0, LG6/f;->c:I

    return-object v0
.end method
