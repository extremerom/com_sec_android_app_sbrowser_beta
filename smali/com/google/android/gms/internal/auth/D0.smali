.class public final Lcom/google/android/gms/internal/auth/D0;
.super LA5/f;
.source "SourceFile"


# instance fields
.field public final synthetic b:LR5/i;


# direct methods
.method public constructor <init>(LR5/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/D0;->b:LR5/i;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, LA5/f;-><init>(I)V

    const-string p1, "com.google.android.gms.auth.account.data.IGetTokenWithDetailsCallback"

    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method
