.class public final LP5/a;
.super Lcom/google/android/gms/common/internal/i;
.source "SourceFile"

# interfaces
.implements Lb5/e;


# instance fields
.field public final a:Z

.field public final b:Lcom/google/android/gms/common/internal/h;

.field public final p:Landroid/os/Bundle;

.field public final q:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/h;Landroid/os/Bundle;Lb5/k;Lb5/l;)V
    .locals 7

    const/16 v3, 0x2c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/i;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/h;Lc5/g;Lc5/p;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, LP5/a;->a:Z

    iput-object p3, p0, LP5/a;->b:Lcom/google/android/gms/common/internal/h;

    iput-object p4, p0, LP5/a;->p:Landroid/os/Bundle;

    iget-object p1, p3, Lcom/google/android/gms/common/internal/h;->f:Ljava/lang/Integer;

    iput-object p1, p0, LP5/a;->q:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-interface {p1, p0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, LP5/c;

    if-eqz v1, :cond_1

    move-object p0, v0

    check-cast p0, LP5/c;

    goto :goto_0

    :cond_1
    new-instance v0, LP5/c;

    const/4 v1, 0x5

    invoke-direct {v0, p1, p0, v1}, LD5/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final getGetServiceRequestExtraArgs()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, LP5/a;->b:Lcom/google/android/gms/common/internal/h;

    iget-object v1, v0, Lcom/google/android/gms/common/internal/h;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/f;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object p0, p0, LP5/a;->p:Landroid/os/Bundle;

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/common/internal/h;->c:Ljava/lang/String;

    const-string v1, "com.google.android.gms.signin.internal.realClientPackageName"

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public final getMinApkVersion()I
    .locals 0

    const p0, 0xbdfcb8

    return p0
.end method

.method public final getServiceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.gms.signin.internal.ISignInService"

    return-object p0
.end method

.method public final getStartServiceAction()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.gms.signin.service.START"

    return-object p0
.end method

.method public final requiresSignIn()Z
    .locals 0

    iget-boolean p0, p0, LP5/a;->a:Z

    return p0
.end method
