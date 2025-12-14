.class Lorg/chromium/ui/base/WindowAndroid$3;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/ui/base/WindowAndroid;->requestPointerLock(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/base/WindowAndroid;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/base/WindowAndroid;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/ui/base/WindowAndroid$3;->this$0:Lorg/chromium/ui/base/WindowAndroid;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onPointerCaptureChange(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onPointerCaptureChange(Z)V

    iget-object p0, p0, Lorg/chromium/ui/base/WindowAndroid$3;->this$0:Lorg/chromium/ui/base/WindowAndroid;

    invoke-static {p0, p1}, Lorg/chromium/ui/base/WindowAndroid;->f(Lorg/chromium/ui/base/WindowAndroid;Z)V

    return-void
.end method
