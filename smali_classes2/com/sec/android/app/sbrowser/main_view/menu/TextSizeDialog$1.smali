.class Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/main/SeekbarAccessibilityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0}, Lt/J0;->getProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x32

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%,"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f140561

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
