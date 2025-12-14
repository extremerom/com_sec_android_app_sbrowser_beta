.class Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar$1;->this$0:Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar$1;->this$0:Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;->a(Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;)Landroid/widget/Button;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar$1;->this$0:Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;->a(Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;)Landroid/widget/Button;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
