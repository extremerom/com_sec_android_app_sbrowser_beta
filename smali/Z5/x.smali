.class public final LZ5/x;
.super LZ5/w;
.source "SourceFile"


# instance fields
.field public final synthetic p:I


# direct methods
.method public synthetic constructor <init>(LX4/g;I)V
    .locals 0

    iput p2, p0, LZ5/x;->p:I

    invoke-direct {p0, p1}, LZ5/w;-><init>(LX4/g;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/wearable/internal/zzeh;)V
    .locals 2

    iget v0, p0, LZ5/x;->p:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, LZ5/a;->a(Lcom/google/android/gms/wearable/internal/zzeh;)V

    return-void

    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Lcom/google/android/gms/wearable/internal/zzeh;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance v1, LZ5/u;

    iget p1, p1, Lcom/google/android/gms/wearable/internal/zzeh;->a:I

    invoke-static {p1}, LG5/C3;->d(I)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-direct {v1, p1, v0}, LZ5/u;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, LZ5/w;->z0(Lb5/q;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public c0(Lcom/google/android/gms/wearable/internal/zzcc;)V
    .locals 2

    iget v0, p0, LZ5/x;->p:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, LZ5/a;->c0(Lcom/google/android/gms/wearable/internal/zzcc;)V

    return-void

    :pswitch_0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    iget p1, p1, Lcom/google/android/gms/wearable/internal/zzcc;->a:I

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, LZ5/w;->z0(Lb5/q;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public o(Lcom/google/android/gms/wearable/internal/zzgo;)V
    .locals 2

    iget v0, p0, LZ5/x;->p:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, LZ5/a;->o(Lcom/google/android/gms/wearable/internal/zzgo;)V

    return-void

    :pswitch_0
    new-instance v0, LZ5/c;

    iget v1, p1, Lcom/google/android/gms/wearable/internal/zzgo;->a:I

    invoke-static {v1}, LG5/C3;->d(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/wearable/internal/zzgo;->b:Lcom/google/android/gms/wearable/internal/zzbq;

    invoke-direct {v0, v1, p1}, LZ5/c;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wearable/Channel;)V

    invoke-virtual {p0, v0}, LZ5/w;->z0(Lb5/q;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
