.class Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->registerDisplayListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert$1;->this$0:Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert$1;->this$0:Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->d(Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;)Landroid/app/Activity;

    move-result-object p1

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert$1;->this$0:Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->onDisplayChanged(I)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
