.class Lorg/chromium/base/process_launcher/ChildProcessConnection$ConnectionParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/process_launcher/ChildProcessConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectionParams"
.end annotation


# instance fields
.field final mBinderBox:Landroid/os/IBinder;

.field final mClientInterfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field final mConnectionBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Ljava/util/List;Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection$ConnectionParams;->mConnectionBundle:Landroid/os/Bundle;

    iput-object p2, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection$ConnectionParams;->mClientInterfaces:Ljava/util/List;

    iput-object p3, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection$ConnectionParams;->mBinderBox:Landroid/os/IBinder;

    return-void
.end method
