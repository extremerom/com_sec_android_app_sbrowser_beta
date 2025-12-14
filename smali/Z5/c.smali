.class public final LZ5/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb5/q;


# instance fields
.field public final a:Lcom/google/android/gms/common/api/Status;

.field public final b:Lcom/google/android/gms/wearable/Channel;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wearable/Channel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    iput-object p1, p0, LZ5/c;->a:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, LZ5/c;->b:Lcom/google/android/gms/wearable/Channel;

    return-void
.end method


# virtual methods
.method public final K()Lcom/google/android/gms/common/api/Status;
    .locals 0

    iget-object p0, p0, LZ5/c;->a:Lcom/google/android/gms/common/api/Status;

    return-object p0
.end method
