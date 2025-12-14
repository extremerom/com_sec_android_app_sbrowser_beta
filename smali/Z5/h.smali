.class public final LZ5/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb5/o;
.implements Lb5/q;


# instance fields
.field public final a:Lcom/google/android/gms/common/api/Status;

.field public final b:LZ5/j;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;LZ5/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    iput-object p1, p0, LZ5/h;->a:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, LZ5/h;->b:LZ5/j;

    return-void
.end method


# virtual methods
.method public final K()Lcom/google/android/gms/common/api/Status;
    .locals 0

    iget-object p0, p0, LZ5/h;->a:Lcom/google/android/gms/common/api/Status;

    return-object p0
.end method

.method public final release()V
    .locals 0

    iget-object p0, p0, LZ5/h;->b:LZ5/j;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, LZ5/j;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
