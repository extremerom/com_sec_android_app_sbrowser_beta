.class Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/main/SeekbarAccessibilityDelegate;


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


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar$2;->this$0:Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar$2;->this$0:Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;->a(Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;)Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v2

    invoke-virtual {v2}, Lt/J0;->getProgress()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;->c(Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar$2;->this$0:Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;->b(Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;)Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f140a7d

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
