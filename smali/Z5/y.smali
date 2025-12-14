.class public final LZ5/y;
.super LZ5/w;
.source "SourceFile"


# instance fields
.field public final synthetic p:I

.field public final q:LZ5/k;


# direct methods
.method public synthetic constructor <init>(LX4/g;LZ5/k;I)V
    .locals 0

    iput p3, p0, LZ5/y;->p:I

    invoke-direct {p0, p1}, LZ5/w;-><init>(LX4/g;)V

    iput-object p2, p0, LZ5/y;->q:LZ5/k;

    return-void
.end method


# virtual methods
.method public I(Lcom/google/android/gms/wearable/internal/zzdt;)V
    .locals 4

    iget v0, p0, LZ5/y;->p:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, LZ5/a;->I(Lcom/google/android/gms/wearable/internal/zzdt;)V

    return-void

    :pswitch_0
    iget-object v0, p1, Lcom/google/android/gms/wearable/internal/zzdt;->b:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, LZ5/j;

    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v3, p1, Lcom/google/android/gms/wearable/internal/zzdt;->b:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v2, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v0, v2}, LZ5/j;-><init>(Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V

    new-instance v2, Lo3/f;

    const/16 v3, 0xe

    invoke-direct {v2, v3, v0}, Lo3/f;-><init>(ILjava/lang/Object;)V

    iget-object v3, p0, LZ5/y;->q:LZ5/k;

    invoke-virtual {v3, v2}, LZ5/k;->z0(LZ5/l;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    new-instance v2, LZ5/h;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    iget p1, p1, Lcom/google/android/gms/wearable/internal/zzdt;->a:I

    invoke-direct {v3, p1, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, v3, v0}, LZ5/h;-><init>(Lcom/google/android/gms/common/api/Status;LZ5/j;)V

    invoke-virtual {p0, v2}, LZ5/w;->z0(Lb5/q;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public q0(Lcom/google/android/gms/wearable/internal/zzdr;)V
    .locals 4

    iget v0, p0, LZ5/y;->p:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, LZ5/a;->q0(Lcom/google/android/gms/wearable/internal/zzdr;)V

    return-void

    :pswitch_0
    iget-object v0, p1, Lcom/google/android/gms/wearable/internal/zzdr;->b:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, LZ5/i;

    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v3, p1, Lcom/google/android/gms/wearable/internal/zzdr;->b:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v2, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v0, v2}, LZ5/i;-><init>(Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;)V

    new-instance v2, LB3/c;

    invoke-direct {v2, v0}, LB3/c;-><init>(Ljava/lang/Object;)V

    iget-object v3, p0, LZ5/y;->q:LZ5/k;

    invoke-virtual {v3, v2}, LZ5/k;->z0(LZ5/l;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    new-instance v2, LZ5/g;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    iget p1, p1, Lcom/google/android/gms/wearable/internal/zzdr;->a:I

    invoke-direct {v3, p1, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, v3, v0}, LZ5/g;-><init>(Lcom/google/android/gms/common/api/Status;LZ5/i;)V

    invoke-virtual {p0, v2}, LZ5/w;->z0(Lb5/q;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
