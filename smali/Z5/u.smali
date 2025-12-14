.class public final LZ5/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb5/q;


# instance fields
.field public final a:Lcom/google/android/gms/common/api/Status;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ5/u;->a:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, LZ5/u;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final K()Lcom/google/android/gms/common/api/Status;
    .locals 0

    iget-object p0, p0, LZ5/u;->a:Lcom/google/android/gms/common/api/Status;

    return-object p0
.end method
