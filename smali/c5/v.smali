.class public final Lc5/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb5/n;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

.field public final synthetic b:Lcom/samsung/android/motionphoto/utils/ex/e;


# direct methods
.method public constructor <init>(Lcom/samsung/android/motionphoto/utils/ex/e;Lcom/google/android/gms/common/api/internal/BasePendingResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc5/v;->b:Lcom/samsung/android/motionphoto/utils/ex/e;

    iput-object p2, p0, Lc5/v;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iget-object p1, p0, Lc5/v;->b:Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object p1, p1, Lcom/samsung/android/motionphoto/utils/ex/e;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    iget-object p0, p0, Lc5/v;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
