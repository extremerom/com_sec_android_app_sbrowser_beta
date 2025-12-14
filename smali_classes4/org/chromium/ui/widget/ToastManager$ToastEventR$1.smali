.class Lorg/chromium/ui/widget/ToastManager$ToastEventR$1;
.super Landroid/widget/Toast$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/ui/widget/ToastManager$ToastEventR;-><init>(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/widget/ToastManager$ToastEventR;

.field final synthetic val$finishRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/widget/ToastManager$ToastEventR;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/ui/widget/ToastManager$ToastEventR$1;->this$0:Lorg/chromium/ui/widget/ToastManager$ToastEventR;

    iput-object p2, p0, Lorg/chromium/ui/widget/ToastManager$ToastEventR$1;->val$finishRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/widget/Toast$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onToastHidden()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/widget/ToastManager$ToastEventR$1;->val$finishRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
