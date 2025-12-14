.class Lorg/chromium/ui/widget/ToastManager$ToastEventR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/widget/ToastManager$ToastEvent;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/widget/ToastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToastEventR"
.end annotation


# instance fields
.field private final mToastCallback:Landroid/widget/Toast$Callback;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/ui/widget/ToastManager$ToastEventR$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/ui/widget/ToastManager$ToastEventR$1;-><init>(Lorg/chromium/ui/widget/ToastManager$ToastEventR;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/chromium/ui/widget/ToastManager$ToastEventR;->mToastCallback:Landroid/widget/Toast$Callback;

    return-void
.end method


# virtual methods
.method public onShow(Lorg/chromium/ui/widget/Toast;)V
    .locals 0

    invoke-virtual {p1}, Lorg/chromium/ui/widget/Toast;->getAndroidToast()Landroid/widget/Toast;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/ui/widget/ToastManager$ToastEventR;->mToastCallback:Landroid/widget/Toast$Callback;

    invoke-static {p1, p0}, Lf1/y0;->A(Landroid/widget/Toast;Landroid/widget/Toast$Callback;)V

    return-void
.end method
