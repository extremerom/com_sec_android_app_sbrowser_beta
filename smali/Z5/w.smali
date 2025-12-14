.class public abstract LZ5/w;
.super LZ5/a;
.source "SourceFile"


# instance fields
.field public b:LX4/g;


# direct methods
.method public constructor <init>(LX4/g;)V
    .locals 0

    invoke-direct {p0}, LZ5/a;-><init>()V

    iput-object p1, p0, LZ5/w;->b:LX4/g;

    return-void
.end method


# virtual methods
.method public final z0(Lb5/q;)V
    .locals 1

    iget-object v0, p0, LZ5/w;->b:LX4/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->h(Lb5/q;)V

    const/4 p1, 0x0

    iput-object p1, p0, LZ5/w;->b:LX4/g;

    :cond_0
    return-void
.end method
