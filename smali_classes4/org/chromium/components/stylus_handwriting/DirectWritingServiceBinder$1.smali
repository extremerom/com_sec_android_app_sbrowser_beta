.class Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;


# direct methods
.method public constructor <init>(Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder$1;->this$0:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onServiceConnected for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder$1;->this$0:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;

    invoke-static {v1}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->b(Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ComponentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DWServiceBinder"

    invoke-static {v1, p1, v0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder$1;->this$0:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;

    sget v0, Landroid/widget/directwriting/b;->a:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "android.widget.directwriting.IDirectWritingService"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/widget/directwriting/c;

    if-eqz v1, :cond_1

    move-object p2, v0

    check-cast p2, Landroid/widget/directwriting/c;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/widget/directwriting/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p2, v0, Landroid/widget/directwriting/a;->a:Landroid/os/IBinder;

    move-object p2, v0

    :goto_0
    invoke-static {p1, p2}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->c(Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;Landroid/widget/directwriting/c;)V

    iget-object p1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder$1;->this$0:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;

    invoke-virtual {p1}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->registerCallback()V

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder$1;->this$0:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;

    invoke-static {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->d(Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onServiceDisconnected for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder$1;->this$0:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;

    invoke-static {v1}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->b(Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ComponentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DWServiceBinder"

    invoke-static {v1, p1, v0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder$1;->this$0:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;

    invoke-static {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->a(Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->unbindService(Landroid/content/Context;)V

    return-void
.end method
