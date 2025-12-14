.class public final Lcom/google/android/gms/internal/auth/E0;
.super Lc5/i;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic p:LR5/i;


# direct methods
.method public synthetic constructor <init>(ILR5/i;)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/auth/E0;->b:I

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/E0;->p:LR5/i;

    invoke-direct {p0}, Lc5/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final S(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/auth/E0;->b:I

    packed-switch v0, :pswitch_data_0

    iget v0, p1, Lcom/google/android/gms/common/api/Status;->b:I

    const/4 v1, 0x6

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/E0;->p:LR5/i;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->k(Lcom/google/android/gms/common/api/Status;)Lb5/h;

    move-result-object p1

    invoke-virtual {p0, p1}, LR5/i;->c(Ljava/lang/Exception;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, LG5/B;->m(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;LR5/i;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/gms/internal/auth/E0;->p:LR5/i;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/auth/a;->c(Lcom/google/android/gms/common/api/Status;Landroid/os/Bundle;LR5/i;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
