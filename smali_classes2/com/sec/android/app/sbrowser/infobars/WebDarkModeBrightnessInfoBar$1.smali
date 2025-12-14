.class Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/X0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;->createView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;

.field final synthetic val$textViewValue:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar$1;->this$0:Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar$1;->val$textViewValue:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar$1;->this$0:Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;->c(Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;I)I

    move-result p1

    invoke-static {p1}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setVAXContrastFactor(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar$1;->val$textViewValue:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar$1;->this$0:Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;->b(Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;)Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    return-void
.end method
