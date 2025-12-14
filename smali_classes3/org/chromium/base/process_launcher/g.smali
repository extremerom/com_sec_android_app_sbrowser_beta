.class public final synthetic Lorg/chromium/base/process_launcher/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lorg/chromium/base/process_launcher/ChildProcessConnection$3;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:J

.field public final synthetic e:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/base/process_launcher/ChildProcessConnection$3;IIJLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/base/process_launcher/g;->a:Lorg/chromium/base/process_launcher/ChildProcessConnection$3;

    iput p2, p0, Lorg/chromium/base/process_launcher/g;->b:I

    iput p3, p0, Lorg/chromium/base/process_launcher/g;->c:I

    iput-wide p4, p0, Lorg/chromium/base/process_launcher/g;->d:J

    iput-object p6, p0, Lorg/chromium/base/process_launcher/g;->e:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v1, p0, Lorg/chromium/base/process_launcher/g;->b:I

    iget v2, p0, Lorg/chromium/base/process_launcher/g;->c:I

    iget-object v0, p0, Lorg/chromium/base/process_launcher/g;->a:Lorg/chromium/base/process_launcher/ChildProcessConnection$3;

    iget-wide v3, p0, Lorg/chromium/base/process_launcher/g;->d:J

    iget-object v5, p0, Lorg/chromium/base/process_launcher/g;->e:Landroid/os/Bundle;

    invoke-static/range {v0 .. v5}, Lorg/chromium/base/process_launcher/ChildProcessConnection$3;->v0(Lorg/chromium/base/process_launcher/ChildProcessConnection$3;IIJLandroid/os/Bundle;)V

    return-void
.end method
