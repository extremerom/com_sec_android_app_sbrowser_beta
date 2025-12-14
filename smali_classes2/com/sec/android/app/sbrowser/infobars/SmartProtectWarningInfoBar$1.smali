.class Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;->createView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar$1;->this$0:Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar$1;->this$0:Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;->hide()V

    goto :goto_0

    :sswitch_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar$1;->this$0:Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;->a(Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar$1;->this$0:Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;->removeBrowsingDataAfterLoadStarted()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar$1;->this$0:Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;->hide()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0b02e3 -> :sswitch_1
        0x7f0b02e4 -> :sswitch_0
        0x7f0b0ba4 -> :sswitch_0
    .end sparse-switch
.end method
