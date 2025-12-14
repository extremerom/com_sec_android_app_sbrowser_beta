.class public final LP6/f;
.super LA5/f;
.source "SourceFile"


# instance fields
.field public final b:LQ6/i;

.field public final p:LR5/i;

.field public final synthetic q:LP6/g;

.field public final synthetic r:LP6/g;


# direct methods
.method public constructor <init>(LP6/g;LR5/i;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, LP6/f;->r:LP6/g;

    new-instance p3, LQ6/i;

    const-string v0, "OnRequestInstallCallback"

    invoke-direct {p3, v0}, LQ6/i;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, LP6/f;->q:LP6/g;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, LA5/f;-><init>(I)V

    const-string p1, "com.google.android.play.core.appupdate.protocol.IAppUpdateServiceCallback"

    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    iput-object p3, p0, LP6/f;->b:LQ6/i;

    iput-object p2, p0, LP6/f;->p:LR5/i;

    return-void
.end method
