.class public final Lcom/google/android/gms/internal/auth/a;
.super Lb5/j;
.source "SourceFile"


# static fields
.field public static final a:Lb5/g;

.field public static final b:LG5/g4;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lb5/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, LA5/v;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, LA5/v;-><init>(I)V

    new-instance v2, Lb5/g;

    const-string v3, "GoogleAuthService.API"

    invoke-direct {v2, v3, v1, v0}, Lb5/g;-><init>(Ljava/lang/String;Lb5/a;Lb5/f;)V

    sput-object v2, Lcom/google/android/gms/internal/auth/a;->a:Lb5/g;

    const-string v0, "GoogleAuthServiceClient"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, LG5/g4;

    const-string v2, "Auth"

    invoke-direct {v1, v2, v0}, LG5/g4;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/internal/auth/a;->b:LG5/g4;

    return-void
.end method

.method public static c(Lcom/google/android/gms/common/api/Status;Landroid/os/Bundle;LR5/i;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p2, LR5/i;->a:LR5/p;

    invoke-virtual {p0, p1}, LR5/p;->r(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/common/internal/o;->k(Lcom/google/android/gms/common/api/Status;)Lb5/h;

    move-result-object p0

    invoke-virtual {p2, p0}, LR5/i;->c(Ljava/lang/Exception;)Z

    move-result p0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    sget-object p1, Lcom/google/android/gms/internal/auth/a;->b:LG5/g4;

    const-string p2, "The task is already complete."

    invoke-virtual {p1, p2, p0}, LG5/g4;->l(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
