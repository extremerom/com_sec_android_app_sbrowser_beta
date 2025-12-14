.class public final LH5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb5/q;


# instance fields
.field public final a:Lcom/google/android/gms/common/api/Status;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/SafeBrowsingData;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH5/a;->a:Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x0

    iput-object v0, p0, LH5/a;->b:Ljava/lang/String;

    if-eqz p2, :cond_0

    iget-object p1, p2, Lcom/google/android/gms/safetynet/SafeBrowsingData;->a:Ljava/lang/String;

    iput-object p1, p0, LH5/a;->b:Ljava/lang/String;

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x8

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, LH5/a;->a:Lcom/google/android/gms/common/api/Status;

    :cond_1
    return-void
.end method


# virtual methods
.method public final K()Lcom/google/android/gms/common/api/Status;
    .locals 0

    iget-object p0, p0, LH5/a;->a:Lcom/google/android/gms/common/api/Status;

    return-object p0
.end method
