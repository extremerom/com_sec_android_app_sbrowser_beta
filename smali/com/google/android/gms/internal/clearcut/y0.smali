.class public final Lcom/google/android/gms/internal/clearcut/y0;
.super LA5/f;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/clearcut/v0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/clearcut/v0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/y0;->b:Lcom/google/android/gms/internal/clearcut/v0;

    const/4 p1, 0x5

    invoke-direct {p0, p1}, LA5/f;-><init>(I)V

    const-string p1, "com.google.android.gms.clearcut.internal.IClearcutLoggerCallbacks"

    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method
