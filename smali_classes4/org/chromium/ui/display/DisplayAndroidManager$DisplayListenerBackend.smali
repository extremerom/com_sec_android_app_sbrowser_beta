.class Lorg/chromium/ui/display/DisplayAndroidManager$DisplayListenerBackend;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/display/DisplayAndroidManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DisplayListenerBackend"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/display/DisplayAndroidManager;


# direct methods
.method private constructor <init>(Lorg/chromium/ui/display/DisplayAndroidManager;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/ui/display/DisplayAndroidManager$DisplayListenerBackend;->this$0:Lorg/chromium/ui/display/DisplayAndroidManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/ui/display/DisplayAndroidManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/ui/display/DisplayAndroidManager$DisplayListenerBackend;-><init>(Lorg/chromium/ui/display/DisplayAndroidManager;)V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    iget-object p0, p0, Lorg/chromium/ui/display/DisplayAndroidManager$DisplayListenerBackend;->this$0:Lorg/chromium/ui/display/DisplayAndroidManager;

    invoke-static {p0}, Lorg/chromium/ui/display/DisplayAndroidManager;->a(Lorg/chromium/ui/display/DisplayAndroidManager;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/ui/display/PhysicalDisplayAndroid;

    invoke-static {}, Lorg/chromium/ui/display/DisplayAndroidManager;->d()Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->updateFromDisplay(Landroid/view/Display;)V

    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 4

    iget-object v0, p0, Lorg/chromium/ui/display/DisplayAndroidManager$DisplayListenerBackend;->this$0:Lorg/chromium/ui/display/DisplayAndroidManager;

    invoke-static {v0}, Lorg/chromium/ui/display/DisplayAndroidManager;->b(Lorg/chromium/ui/display/DisplayAndroidManager;)I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/display/DisplayAndroidManager$DisplayListenerBackend;->this$0:Lorg/chromium/ui/display/DisplayAndroidManager;

    invoke-static {v0}, Lorg/chromium/ui/display/DisplayAndroidManager;->a(Lorg/chromium/ui/display/DisplayAndroidManager;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/display/PhysicalDisplayAndroid;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->onDisplayRemoved()V

    iget-object v0, p0, Lorg/chromium/ui/display/DisplayAndroidManager$DisplayListenerBackend;->this$0:Lorg/chromium/ui/display/DisplayAndroidManager;

    invoke-static {v0}, Lorg/chromium/ui/display/DisplayAndroidManager;->c(Lorg/chromium/ui/display/DisplayAndroidManager;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/chromium/ui/display/DisplayAndroidManagerJni;->get()Lorg/chromium/ui/display/DisplayAndroidManager$Natives;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/ui/display/DisplayAndroidManager$DisplayListenerBackend;->this$0:Lorg/chromium/ui/display/DisplayAndroidManager;

    invoke-static {v1}, Lorg/chromium/ui/display/DisplayAndroidManager;->c(Lorg/chromium/ui/display/DisplayAndroidManager;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/chromium/ui/display/DisplayAndroidManager$DisplayListenerBackend;->this$0:Lorg/chromium/ui/display/DisplayAndroidManager;

    invoke-interface {v0, v1, v2, v3, p1}, Lorg/chromium/ui/display/DisplayAndroidManager$Natives;->removeDisplay(JLorg/chromium/ui/display/DisplayAndroidManager;I)V

    :cond_2
    iget-object p0, p0, Lorg/chromium/ui/display/DisplayAndroidManager$DisplayListenerBackend;->this$0:Lorg/chromium/ui/display/DisplayAndroidManager;

    invoke-static {p0}, Lorg/chromium/ui/display/DisplayAndroidManager;->a(Lorg/chromium/ui/display/DisplayAndroidManager;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public startListening()V
    .locals 2

    invoke-static {}, Lorg/chromium/ui/display/DisplayAndroidManager;->d()Landroid/hardware/display/DisplayManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method
