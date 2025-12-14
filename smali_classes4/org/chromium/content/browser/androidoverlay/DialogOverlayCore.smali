.class Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore$Host;,
        Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore$Callbacks;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final INVALID_TOKEN:Landroid/os/IBinder;


# instance fields
.field private mAsPanel:Z

.field private mDialog:Landroid/app/Dialog;

.field private mDialogCallbacks:Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore$Callbacks;

.field private mHost:Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore$Host;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    sput-object v0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->INVALID_TOKEN:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;)Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore$Host;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->mHost:Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore$Host;

    return-object p0
.end method

.method public static bridge synthetic c(Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->mHost:Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore$Host;

    return-void
.end method

.method private copyRectToLayoutParams(Lorg/chromium/gfx/mojom/Rect;)Z
    .locals 3

    iget-object p0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p1, Lorg/chromium/gfx/mojom/Rect;->x:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, p1, Lorg/chromium/gfx/mojom/Rect;->y:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v2, p1, Lorg/chromium/gfx/mojom/Rect;->width:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v2, p1, Lorg/chromium/gfx/mojom/Rect;->height:I

    if-ne v0, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, p1, Lorg/chromium/gfx/mojom/Rect;->y:I

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v0, p1, Lorg/chromium/gfx/mojom/Rect;->width:I

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget p1, p1, Lorg/chromium/gfx/mojom/Rect;->height:I

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 p0, 0x1

    return p0
.end method

.method private createLayoutParams(Z)Landroid/view/WindowManager$LayoutParams;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    const-string v0, "privateFlags"

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-boolean p0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->mAsPanel:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x3e8

    goto :goto_0

    :cond_0
    const/16 p0, 0x3e9

    :goto_0
    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 p0, 0x238

    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eqz p1, :cond_1

    or-int/lit16 p0, p0, 0x2000

    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    or-int/lit8 p0, p0, 0x40

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v1
.end method

.method private dismissDialogQuietly()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "DSCore"

    const-string v1, "Failed to dismiss overlay dialog.  \"WindowLeaked\" is ignorable."

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->mDialog:Landroid/app/Dialog;

    iput-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->mDialogCallbacks:Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore$Callbacks;

    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lorg/chromium/media/mojom/AndroidOverlayConfig;Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore$Host;Z)V
    .locals 0
    .annotation build Lorg/chromium/build/annotations/Initializer;
    .end annotation

    iput-object p3, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->mHost:Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore$Host;

    iput-boolean p4, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->mAsPanel:Z

    new-instance p3, Landroid/app/Dialog;

    const p4, 0x1030055

    invoke-direct {p3, p1, p4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->mDialog:Landroid/app/Dialog;

    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object p1, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->mDialog:Landroid/app/Dialog;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-boolean p1, p2, Lorg/chromium/media/mojom/AndroidOverlayConfig;->secure:Z

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->createLayoutParams(Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object p1, p2, Lorg/chromium/media/mojom/AndroidOverlayConfig;->rect:Lorg/chromium/gfx/mojom/Rect;

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->copyRectToLayoutParams(Lorg/chromium/gfx/mojom/Rect;)Z

    return-void
.end method

.method public layoutSurface(Lorg/chromium/gfx/mojom/Rect;)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    sget-object v1, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->INVALID_TOKEN:Landroid/os/IBinder;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->copyRectToLayoutParams(Lorg/chromium/gfx/mojom/Rect;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Window;

    iget-object p0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onWindowToken(Landroid/os/IBinder;)V
    .locals 5

    iget-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->mHost:Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore$Host;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_3

    iget-object v2, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    sget-object v4, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->INVALID_TOKEN:Landroid/os/IBinder;

    if-eq v3, v4, :cond_1

    if-eq p1, v3, :cond_1

    goto :goto_0

    :cond_1
    if-ne v3, p1, :cond_2

    return-void

    :cond_2
    iput-object p1, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Window;

    iget-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    new-instance v0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore$Callbacks;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore$Callbacks;-><init>(Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;I)V

    iput-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->mDialogCallbacks:Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore$Callbacks;

    invoke-virtual {p1, v0}, Landroid/view/Window;->takeSurface(Landroid/view/SurfaceHolder$Callback2;)V

    iget-object p0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_3
    :goto_0
    invoke-interface {v1}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore$Host;->onOverlayDestroyed()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->mHost:Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore$Host;

    invoke-direct {p0}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->dismissDialogQuietly()V

    :cond_4
    :goto_1
    return-void
.end method

.method public release()V
    .locals 2

    invoke-direct {p0}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->dismissDialogQuietly()V

    iget-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    sget-object v1, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->INVALID_TOKEN:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->mHost:Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore$Host;

    return-void
.end method
